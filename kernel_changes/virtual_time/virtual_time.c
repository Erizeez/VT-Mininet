#include <linux/kernel.h>
#include <linux/syscalls.h>

/* well, this is just a toy */
SYSCALL_DEFINE0(helloworld)
{
	printk("Hello world from Jiaqi\n");
	return 0;
}
