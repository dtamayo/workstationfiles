#!/bin/bash

# Need to move /home to data drive and add a symbolic link (see Gateway setup under Set Up Lab and Office)
# call this with usernames you want to add, e.g. ./newuser rkang idudiak
# will create a new home directory, copy .bashrc shell startup file from /etc/skel/.bashrc, set shell to bash, add them to the students group
# make their .ssh folder and set up their default conda environment (named after their username)

for usr in "$@"
do
	echo $usr
	useradd -m -d /home/$usr -s /bin/bash -G students $usr
	echo -e "spock\nspock" | passwd $usr # set spock as temp password
	chage --lastday 0 $usr        # Set things so that they have to reset their password the first time they log in
	chmod o=rx /home/$usr # change their home dir so I (and others) can read and execute (but not write)
	cp /home/dtamayo/.newcondaenv.sh /home/$usr/ # script to create and set up their conda environment
	chown $usr:students /home/$usr/.newcondaenv.sh # have to change permissions since when I sudo this it will set ownership to root and they won't be able to run
	mkdir /home/$usr/.ssh
	chmod 700 /home/$usr/.ssh # u=rwx nothing for others
	chown $usr:$usr /home/$usr/.ssh
	runuser -l $usr -c "bash -i /home/$(echo $usr)/.newcondaenv.sh"
done
