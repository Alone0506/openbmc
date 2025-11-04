# ssh-keygen -R root@localhost
# ssh root@localhost -p 2222

#############################################
# sudo apparmor_parser -R /etc/apparmor.d/unprivileged_userns

#############################################
# Remove the old RSA key for the host from known_hosts
ssh-keygen -f '/home/ted/.ssh/known_hosts' -R '[localhost]:2222'
# Use sshpass to provide the password automatically and auto-accept the new host fingerprint
sshpass -p '0penBmc' ssh -o StrictHostKeyChecking=no root@localhost -p 2222
