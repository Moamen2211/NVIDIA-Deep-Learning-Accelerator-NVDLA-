import os
import re

# --- CONFIGURATION ---
SEARCH_DIR = "." 
TOP_MODULE = "NV_NVDLA_partition_c"

print("Scanning directory for all available .v files...")

# Step 1: Build a Dictionary of all real Verilog files in your project.
# This prevents the script from mapping standard cells (like MUX2HDD2) 
# because they don't have .v files!
available_modules = {}
for root, dirs, files in os.walk(SEARCH_DIR):
    for file in files:
        if file.endswith('.v'):
            mod_name = file[:-2] # Remove the .v
            available_modules[mod_name] = os.path.join(root, file)

visited_modules = set()
ignore_keywords = {'module', 'if', 'case', 'always', 'for', 'while', 'begin', 'end', 'assign', 'else'}

def get_submodules(file_path):
    sub_modules = []
    try:
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
    except Exception:
        return []

    # 1. Look for the NVDLA green tag instances BEFORE removing comments
    tags = re.findall(r'//\s*&Instance\s+([A-Za-z0-9_]+)', content)
    for tag in tags:
        if tag in available_modules:
            sub_modules.append(tag)

    # Clean the file: Remove all comments so we don't parse dead code
    content = re.sub(r'//.*', '', content)
    content = re.sub(r'/\*.*?\*/', '', content, flags=re.DOTALL)

    # 2. Find standard instantiations: ModuleName instance_name (
    # This perfectly catches lines like: sync3d_s_ppp sync_0 (
    matches = re.findall(r'\b([A-Za-z_][A-Za-z0-9_]*)\s+([A-Za-z_][A-Za-z0-9_]*)\s*(?:\[.*?\]\s*)?\(', content)
    for mod, inst in matches:
        # ONLY add it if it physically exists as a .v file!
        if mod in available_modules and mod not in ignore_keywords:
            sub_modules.append(mod)

    # 3. Find Parameterized instantiations: ModuleName #( ... ) 
    matches_param = re.findall(r'\b([A-Za-z_][A-Za-z0-9_]*)\s*#\s*\(', content)
    for mod in matches_param:
        if mod in available_modules and mod not in ignore_keywords:
            sub_modules.append(mod)

    return list(set(sub_modules))

def print_hierarchy(module_name, depth=0):
    indent = "    " * depth
    if depth == 0:
        print(f"[{module_name}] (TOP)")
    else:
        print(f"{indent}|-- {module_name}")

    if module_name in visited_modules:
        print(f"{indent}    |-- (Already mapped above)")
        return
    visited_modules.add(module_name)

    # Extra safety check
    if module_name not in available_modules:
        return

    # Get the exact file path from our dictionary and parse it
    file_path = available_modules[module_name]
    sub_modules = get_submodules(file_path)

    # Sort alphabetically so your text file looks clean and organized
    for sub in sorted(sub_modules):
        print_hierarchy(sub, depth + 1)

# --- START THE SCRIPT ---
print(f"Building Hierarchy Tree for {TOP_MODULE}...\n")

if TOP_MODULE in available_modules:
    print_hierarchy(TOP_MODULE)
else:
    print(f"ERROR: Could not find {TOP_MODULE}.v anywhere in {SEARCH_DIR}!")

print("\nExtraction Complete!")