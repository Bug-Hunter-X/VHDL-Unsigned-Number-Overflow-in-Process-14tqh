This repository contains a VHDL code example demonstrating a common error: incorrect addition of an unsigned number within a process. The `bug.vhdl` file shows the erroneous code, while `bugSolution.vhdl` provides the corrected version.  The issue arises from directly incrementing an unsigned value without considering potential overflow. The solution demonstrates how to correctly handle this situation using numeric_std package for proper unsigned arithmetic and overflow detection.