# moore_seq_detector_non_overlapping
Formally verified "1011" non-overlapping sequence detector - Moore FSM
---
Waveform of witness cover opened in GTKWave:
  ![Waveform of covered statement opened in GTKWave](https://github.com/ShashankVM/moore_seq_detector_non_overlapping/blob/main/non_overlapping_pass.png)
Waveform of failing assertion for overlapping property:
  ![Waveform of failing assertion for overlapping property](https://github.com/ShashankVM/moore_seq_detector_non_overlapping/blob/main/overlapping_assertion_fail.png)
- This is a formally verified Moore FSM based non-overlapping sequence detector with registered outputs.
- **Tools & Technologies:** SystemVerilog, SystemVerilog Assertions, Yosys, Tabby CAD Suite
- **Results:** Assertion passing using both Bounded Model Checking and Full Proof using induction engine. Thanks to YosysHQ team for providing the insight on adding the one-hot state encoding assertion to get the proof to pass.