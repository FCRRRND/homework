provider "yandex" {
  token     = "AQAA*****-******-*********AaojAU0"
  cloud_id  = "b1g*************qqqm"
  folder_id = "b1g*************8rh9"
  zone      = "<ru-central1-a>"
}

resource "yandex_vpc_network" "net" {
  name = "net"
}

resource "yandex_vpc_subnet" "subnet" {
  name           = "subnet"
  network_id     = resource.yandex_vpc_network.net.id
  v4_cidr_blocks = ["10.10.10.0/24"]
  zone           = "ru-central1-a"
}

data "yandex_compute_image" "centos" {
  family = "centos-7"
}

resource "yandex_compute_instance" "vm" {
  name        = "homework-centos"
  hostname    = "centos7"
  platform_id = "standard-v1"

resources {
    cores         = 2
    memory        = 2
    core_fraction = 100
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.centos.id
      type     = "network-hdd"
      size     = "40"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet.id
    nat       = true
    ipv6      = false
  }

metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }

