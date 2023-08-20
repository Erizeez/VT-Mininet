old

32
354 sys_timeclone
355 sys_helloworld

64
317 sys_timeclone
318 sys_virtualtimeunshare
319 sys_getvirtualtimeofday
320 sys_helloworld
321 sys_settimedilationfactor

asm-generic


CLONE_TIME 0x02000000
-----------------
new

32
449 sys_timeclone
450 sys_helloworld

64
449 sys_timeclone
450 sys_virtualtimeunshare
451 sys_getvirtualtimeofday
452 sys_helloworld
453 sys_settimedilationfactor

asm-generic


CLONE_TIME 0x03000000
-----------------

trace-file
<!-- arch/x86/entry/syscalls/syscall_32.tbl -->
<!-- arch/x86/entry/syscalls/syscall_64.tbl -->
<!-- lib/vdso/gettimeofday.c -->
<!-- init/init_task.c -->
<!-- include/linux/sched.h -->
<!-- include/linux/syscalls.h -->
<!-- include/net/sch_generic.h -->
<!-- include/uapi/asm-generic/unistd.h -->
<!-- include/uapi/linux/sched.h -->
<!-- kernel/fork.c -->
<!-- kernel/time/timekeeping.c -->
<!-- kernel/time/time.c -->
<!-- net/sched/act_police.c -->
<!-- net/sched/sch_generic.c -->
<!-- Makefile -->
<!-- virtual_time/Makefile -->
<!-- virtual_time/virtual_time.c -->

