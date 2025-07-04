# 8-bit ALU in Verilog
A simple 8 bit Arthmetic Logic Unit implemented in Verilog supporting basic operations like addition subtraction multiplication ,AND,OR,NAND,NOR etc.

This repository contains Verilog code for an 8-bit Arithmetic Logic Unit (ALU), designed and simulated on [EDA Playground](https://www.edaplayground.com/). The ALU was tested using **Icarus Verilog** as the simulator, and waveforms were viewed using **GTKWave**.

## 🧠 Features

The ALU supports the following 8-bit operations:

- Addition
- Subtraction
- Multiplication
- Division
- Bitwise AND
- Bitwise OR
- Bitwise XOR
- Bitwise NOR
- Bitwise NOT

## 📁 File Structure
.
├── alu8bit.v # ALU module (core logic)
├── tb_alu8bit.v # Testbench used for simulation
├── alu8bit_simulation.png # ALU simulation output
├── alu8bit_waveform.png # ALU output waveform generated
├── README.md # Project documentation
└── .gitignore # Git ignore file


## 🛠️ Tools Used

- **EDA Playground**: Web-based Verilog/VHDL editor and simulator  
- **Icarus Verilog**: Open-source Verilog simulation tool  
- **GTKWave**: Waveform viewer for VCD files

## 🧪 How to Simulate

1. Visit [EDA Playground](https://www.edaplayground.com/)
2. Set the simulator to **Icarus Verilog**
3. Paste the contents of `alu8bit.v` and `tb_alu8bit.v` into the respective editor panes
4. Check the **"Open EPWave after run"** option (this launches GTKWave)
5. Click **Run** to simulate
6. View the waveform in **EPWave/GTKWave** to analyze ALU behavior

## ✅ Status

- ✔️ Simulation successful on EDA Playground
- ✔️ Waveform generation verified using GTKWave
- 🚧 No synthesis or hardware testing yet

## 📝 License

This project is open-source and available under the [MIT License].

---

### 👨‍💻 Author

Dhiraj Sharma M S – [GitHub Profile](https://github.com/Dhiraj4-alt)



