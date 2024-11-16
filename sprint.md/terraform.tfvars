virtual_machines = {
    "vm-1" = {
      vm_name      = "sprint1" # Имя ВМ
      vm_desc      = "Описание для инженеров. Его видно только здесь" # Описание
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "ubuntu-22-04-lts-v20240311" # Название диска
      template     = "fd85u0rct32prepgjlv0" # ID образа ОС для использования
    },
    "vm-2" = {
      vm_name      = "sprint2" # Имя ВМ
      vm_desc      = "Описание для инженеров. Его видно только здесь"
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "ubuntu-22-04-lts-v20221214" # Название диска
      template     = "fd864gbboths76r8gm5f" # ID образа ОС для использования
    },
    "vm-3" = {
      vm_name      = "sprint3" # Имя ВМ
      vm_desc      = "Описание для инженеров. Его видно только здесь"
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "ubuntu-22-04-lts-v20231225" # Название диска
      template     = "fd866d9q7rcg6h4udadk" # ID образа ОС для использования

}

}