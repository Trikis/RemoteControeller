chmod 777 '/root/RemoteControeller/Server/audio'

apt install -y vsftpd

echo 'listen=NO
listen_ipv6=YES
anonymous_enable=YES
anon_root=/root/RemoteControeller/Server
no_anon_password=YES
local_enable=YES
write_enable=YES
anon_mkdir_write_enable=YES
dirmessage_enable=YES
use_localtime=YES
xferlog_enable=YES
connect_from_port_20=YES
secure_chroot_dir=/var/run/vsftpd/empty
pam_service_name=vsftpd
rsa_cert_file=/etc/ssl/certs/ssl-cert-snakeoil.pem
rsa_private_key_file=/etc/ssl/private/ssl-cert-snakeoil.key
ssl_enable=NO' > '/etc/vsftpd.conf'

systemctl restart vsftpd
systemctl enable vsftpd
passwd
