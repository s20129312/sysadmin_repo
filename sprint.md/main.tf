resource "yandex_compute_disk" "boot_disk" {
  for_each = var.virtual_machines
  name     = each.value["disk_name"]
  type     = "network-hdd"
  zone     = "ru-central1-a"
  size     = each.value["disk"]
  image_id = each.value["template"]
}

resource "yandex_vpc_network" "network_1" {
  name = "network1"
}

resource "yandex_vpc_subnet" "subnet_1" {
  name           = "subnet1"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network_1.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}

resource "yandex_compute_instance" "virtual_machine" {
  for_each = var.virtual_machines
  name     = each.value["vm_name"]

  resources {
    cores  = each.value["vm_cpu"]
    memory = each.value["ram"]
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot_disk[each.key].id
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet_1.id
    nat       = true
  }
   metadata = {
  user-data = "${file("/root/meta.txt")}"
}

}
