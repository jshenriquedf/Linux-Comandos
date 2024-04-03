

function teste () {


  https://min.io/docs/minio/linux/operations/install-deploy-manage/deploy-minio-single-node-single-drive.html

  1) Download the MinIO Server

  sudo apt install -y wget

  wget https://dl.min.io/server/minio/release/linux-amd64/archive/minio_20240326221045.0.0_amd64.deb -O minio.deb
  sudo dpkg -i minio.deb

  2) Create the systemd Service File

  sudo nano /usr/lib/systemd/system/minio.service
  WorkingDirectory=/storage
  User=minio
  Group=minio


  # Configure Minio
  sudo mkdir /etc/minio
  sudo chown minio:minio /etc/minio
  sudo nano /etc/default/minio
MINIO_ROOT_USER=admin
MINIO_ROOT_PASSWORD=raspaata
MINIO_VOLUMES="/storage"
MINIO_OPTS="--console-address :9001"


sudo systemctl start minio.service
sudo systemctl status minio.service
sudo systemctl enable minio.service


  WorkingDirectory=/usr/local
  User=minio-user
  Group=minio-user

  sudo groupadd -r minio-user
  sudo useradd -M -r -g minio-user minio-user

  # sudo useradd -r minio -s /sbin/nologin
  # sudo chown minio:minio /usr/local/bin/minio
  # sudo chown minio:minio /storage
  sudo chown minio-user:minio-user /mnt/disk1 /mnt/disk2 /mnt/disk3 /mnt/disk4

  minio --version

sudo fdisk -l
sudo fdisk /dev/sda
# m
# n









https://www.howtoforge.com/how-to-install-minio-storage-server-on-debian-11/


  wget https://dl.min.io/server/minio/release/linux-amd64/minio

  chmod +x minio
mv minio /usr/local/bin/

useradd -r minio -s /sbin/nologin

chown minio:minio /usr/local/bin/minio

minio --version



### ----------------- Partição
sudo fdisk -l

sudo apt install -y parted

sudo parted -s -a optimal -- /dev/sdb mklabel gpt


sudo parted -s -a optimal -- /dev/sdb mklabel gpt
parted -s -a optimal -- /dev/sdb mkpart primary 0% 100%
parted -s -- /dev/sdb align-check optimal 1


mkfs.ext4 /dev/sdb1

mkdir /mnt/minio

nano /etc/fstab
/dev/sdb1 /mnt/minio ext4 rw 0 0

mount -a
df -h

chown minio:minio /mnt/minio
mkdir /etc/minio

chown minio:minio /etc/minio

nano /etc/default/minio
MINIO_ACCESS_KEY="minioaccesskey"
MINIO_VOLUMES="/mnt/minio"
MINIO_OPTS="-C /etc/minio --address 0.0.0.0:9000"
MINIO_SECRET_KEY="miniosecretkey"

wget https://raw.githubusercontent.com/minio/minio-service/master/linux-systemd/minio.service

nano minio.service

}
