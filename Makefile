obj-m += rootkit.o

CENTOS = true

ifdef CENTOS
EXTRA_CFLAGS += "-DCENTOS"
endif

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
