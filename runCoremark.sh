mkdir -p /cpi
firesim-start-trigger && ./perf ./coremark.riscv  && firesim-end-trigger
cat /cpi/coremark.riscv.cpi