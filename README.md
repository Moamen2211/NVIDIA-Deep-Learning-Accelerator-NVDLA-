# NVIDIA Deep Learning Accelerator (NVDLA) – Physical Implementation

NVDLA is an **open-source, scalable AI accelerator architecture** designed for neural network inference, providing dedicated hardware acceleration for operations such as convolution, pooling, activation, and data reshaping.

Our team worked on partitioning the NVDLA design and implementing the complete **RTL-to-GDSII physical implementation flow**, facing and solving several real-world challenges related to memories, macro placement, power planning, congestion, timing, and routing.

---

## 📊 Project Presentation & Documentation

Here is a detailed overview of my project covering the complete ASIC physical design flow, memory mapping strategies, and signoff timing closure. You can view or download the presentation below:

* 📥 **[Download NVDLA Physical Implementation Presentation (PDF)](./Presentation/NVDLA_Physical_Implementation.pdf)**:

---

## 🔹 SAED14nm Technology & Memory Generation

We initially worked with the **SAED14nm technology**, where we explored memory integration and generated **SRAM memory macros using the OpenRAM Compiler**.

OpenRAM is an open-source SRAM compiler framework capable of generating the required memory views and models for physical implementation.

During this stage, we gained practical experience in integrating memory macros into a large-scale ASIC design.

---

## 🔹 Migration to SAED32nm Technology

We initially worked with the **SAED14nm technology** and generated SRAM memory macros using the **OpenRAM Compiler**.

However, after evaluating the generated macros, we found that their **physical dimensions were significantly larger than required**. Since the NVDLA design contains a **large number of memory macros**, using these oversized macros would result in excessive area utilization and make the floorplanning and physical implementation highly challenging.

Therefore, we decided to **migrate the implementation to the SAED32nm technology**, where suitable standard-cell and SRAM libraries were available, allowing us to use more practical memory macro dimensions for the large-scale NVDLA design.

After the migration, we continued the implementation flow using the **SAED32nm standard-cell and SRAM libraries**.

This stage included mapping the NVDLA behavioral memories to the available physical SRAM macros.

Several memory-mapping techniques were implemented, including:

- **True Dual-Port to Simple Dual-Port adaptation**
- **Width slicing**
- **Depth expansion**
- **Address decoding**
- **Data padding / tie-offs**

---

## 🔹 Synthesis

The digital implementation started with **logic synthesis** using **Synopsys Design Compiler**.

The synthesis flow included:

* **Library setup and mapping**
* **Memory mapping**
* **Constraint definition**
* **Timing and design constraints preparation**
* **Generation of the required implementation libraries**

---

## 🔹 Formal Verification

After synthesis, we performed **formal equivalence checking using Synopsys Formality** to ensure that the synthesized netlist remained functionally equivalent to the RTL design.

---

## 🔹 NDM & Design Library Creation

For the physical implementation stage, we generated the required **NDM databases** for:

* **Standard Cells**
* **SRAM Macros**

We also created the physical implementation **Design Library**, including the required **MMMC scenarios and library setup**.

---

## 🔹 Floorplanning

The next stage was **Floorplanning**, where we initialized the core, placed the I/O ports, organized the macros, and optimized the overall floorplan.

We analyzed macro connectivity using **Flylines**:

* **Net Connections**
* **Data Flow**
* **Register Tracing**

Based on this analysis, the macros were divided into different groups according to their communication with **I/O ports and standard cells**, followed by manual macro placement and orientation optimization.

We also aligned I/O ports with macro pins to reduce interconnect length and improve routability.

Additional physical constraints were introduced, including:

* **Keepout margins** around macros
* **Placement optimizations to reduce congestion and protect macro pin access**

The floorplan was continuously refined through several iterations to resolve implementation and DRC-related issues.

---

## 🔹 Power Planning

The **Power Planning** stage included:

* **Core VDD/VSS power rings**
* **Internal VDD/VSS power mesh**
* **Standard-cell M1 power rails**
* **Macro power connectivity**

We also analyzed different strategies for connecting macro power pins and evaluated their impact on **routing resources and power connectivity**.

Several DRC issues related to **M1 spacing, rail alignment, and shorts between power rails and macro pins** were identified and resolved through physical implementation techniques such as optimized rail dimensions and M1 routing blockages.

---

## 🔹 Placement

During **Placement**, we performed the required pre-placement checks and optimized the standard-cell distribution across the core.

The placement stage involved:

* **PG connectivity and DRC checks**
* **Boundary / Decap cell handling**
* **High-Fanout Net Synthesis (HFNS)**
* **Tie-cell insertion**
* **Spare-cell insertion**
* **Timing-driven placement**
* **Congestion optimization**

We encountered several challenges, including **placement congestion, high-density hotspots, missing scan DEF information, and max capacitance / max transition violations**.

These issues were addressed using:

* **Cell spreading**
* **Maximum wire-length constraints**
* **Isolation buffers**
* **Magnet placement techniques**

---

## 🔹 Clock Tree Synthesis (CTS)

For **CTS**, we prepared the design for clock-tree construction and evaluated different clock-tree cells because the PDK did not provide dedicated clock buffers.

We compared **inverter-based and buffer-based clock trees** and selected the most suitable option based on:

* **Global skew**
* **Global latency**
* **Cell count**
* **Area**
* **Library transition characteristics**

The final CTS flow included:

* **Clock-tree construction**
* **Hold fixing**
* **Timing optimization**
* **Useful-skew / CCD-based optimization**

---

## 🔹 Routing

After CTS, we moved to the **Routing** stage, including:

* **Global routing**
* **Detailed routing**
* **Congestion analysis**
* **Post-route optimization**

After routing, we performed **QoR analysis** and identified remaining physical and timing violations.

We then entered an iterative **Post-Route ECO** flow, where violations were analyzed and fixed using techniques such as:

* **Cell sizing**
* **Buffer insertion**
* **Repeater insertion**
* **Path optimization**

Every ECO iteration was followed by re-routing and timing / physical verification to ensure that fixing one scenario did not introduce new violations in another.

---

## 🔹 Signoff & Timing Closure

For final timing analysis, we used **Synopsys PrimeTime** to perform post-route STA across multiple sign-off scenarios.

The optimization process focused on achieving **setup and hold timing closure**, while also eliminating **maximum capacitance and maximum transition violations**.

After several optimization iterations, we achieved:

* ✅ **0 remaining routing violations**
* ✅ **Maximum capacitance violations resolved**
* ✅ **Maximum transition violations resolved**
* ✅ **Setup and hold timing requirements met across all sign-off corners**

---

## 🔹 Chip Finishing & Final Signoff

Finally, we completed the chip-finishing stage, including:

* **DCAP cell insertion**
* **Filler cell insertion**
* **Final physical checks**
* **DRC / LVS verification**
* **Final sign-off database generation**

This project gave me valuable hands-on experience with a complete **RTL-to-GDSII ASIC Physical Design flow** and, more importantly, exposed me to the real challenges that arise when implementing a large-scale AI accelerator.

---

## 🛠️ Tools & Technologies

**EDA Tools:**
Synopsys Design Compiler • Formality • ICC2 • PrimeTime • OpenRAM Compiler

**Technology Nodes:**
SAED14nm • SAED32nm

**Design & Implementation:**
• RTL-to-GDSII • NDM • MMMC • ASIC Physical Design 

**Physical Design Flow:**
Synthesis → Formality → Floorplanning → Power Planning → Placement → CTS → Routing → Post-Route ECO → STA → Signoff
