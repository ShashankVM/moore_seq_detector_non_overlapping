# moore_seq_detector_non_overlapping
Formally verified "1011" non-overlapping sequence detector - Moore FSM
---
**Click on the image to view the full image**

Waveform of trace of witness cover, opened in GTKWave:
  ![Waveform of trace of witness cover, opened in GTKWave](https://github.com/ShashankVM/moore_seq_detector_non_overlapping/blob/main/non_overlapping_pass.png)
Waveform of trace of Counterexample for failing overlapping property (without $rose at the beginning of sequence):
  ![Waveform of trace of Counterexample for failing overlapping property](https://github.com/ShashankVM/moore_seq_detector_non_overlapping/blob/main/overlapping_assertion_fail.png)
- This is a formally verified Moore FSM based non-overlapping sequence detector with registered outputs.
- **Tools & Technologies:** SystemVerilog, SystemVerilog Assertions, Yosys, Tabby CAD Suite
- **Results:** Assertion passing using both Bounded Model Checking and Full Proof using induction engine. Thanks to YosysHQ team for providing the insight on adding the one-hot state encoding assertion to get the proof to pass.
- **Files:**
   * seq_detector.sv: RTL design of "1011" non-overlapping sequence detector with registered outputs, Moore style.
   * seq_detector.sby: SBY file for setup of Formal tool. 
