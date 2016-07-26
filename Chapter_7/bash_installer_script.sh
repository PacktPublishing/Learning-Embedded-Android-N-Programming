#!/sbin/sh
FD=$2
ui_print() {
	echo -n -e "ui_print $1\n" > /proc/self/fd/$FD
	echo -n -e "ui_print\n" > /proc/self/fd/$FD
}

set_perm() {
	chown $1:$2 $4
	chmod $3 $4
}

ui_print "- Mounting /system"
mount /system
ui_print "- Installing BusyBox"
unzip -o "$3" busybox -d /system/xbin
ui_print "- Setting right permissions -"
set_perm 0 2000 0755 /system/xbin/busybox
ui_print "- Symlinking BB applets"
for i in $(/system/xbin/busybox --list); do
	busybox ln -sf busybox "/system/xbin/$i"
done
ui_print "- Unmounting /system"
umount /system
ui_print "- BusyBox Installation complete -"
