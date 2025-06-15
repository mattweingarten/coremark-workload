mkdir -p /cpi
firesim-start-trigger && ./perf ./coremark_O1_sched.riscv  && firesim-end-trigger
cat /cpi/coremark_O1_sched.riscv.cpi

firesim-start-trigger && ./perf ./coremark_O1.riscv  && firesim-end-trigger
cat /cpi/coremark_O1.riscv.cpi