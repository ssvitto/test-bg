
### Preq
- 1 linux server (any distro) for ansible server
- 1 centos 7 server
- 1 windows server (any version)

machines can be set up in any cloud, hyper-v, vagrant or any other platform that you find it suitable

1. Install the ansible on the ansible server (Manually)
2. Build an inventory with 2 groups [win] & [linux] 
3. Using ansible, please Install apache on the Linux machine and IIS on the window machine.
   Using ansible, change httpd.conf to listen only on port 8080
4. Create a test website on the IIS on port 80 using ansible (note: ansible has modules)
5. Create an empty test.txt file on the ansible machine. Copy the test.txt file to the root site on both machines
    (Bonus: Create another file called default.html. Using Jinja, input into it the date_time (can be taken from ansible facts) and copy it to the root site on both machines.)
6. Recycle the app pool of the new test website using ansible

Tip:
-	Use only ansible and ansible modules. 😊


#############################

Final version:

1) There are 2 vm's:
- centos7
- winserver 2016

2) Build an inventory with 2 groups [win] & [linux] - describe in the "inventory.ini" file
in "ansible.cfg" was added lines
[defaults]
host_key_checking = False

3)
Install apache on the Linux machine - describe in the "apache-linux.yml" file.
Install IIS on the window machine - describe in the "iis-win.yml" file.
Using ansible, change httpd.conf to listen only on port 8080 - describe in the "apache-linux.yml" file.

 4) Create a test website on the IIS on port 80 using ansible - describe in the "test-site.yml" file.
 5) Create an empty test.txt file and BONUS file - describe in the "files-copy.yml" file.
 6) Recycle the app pool of the new test website using ansible - describe in the "pool-restart.yml" file.

 All tasks were included on main.yml