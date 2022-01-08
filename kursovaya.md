
# Курсовая работа по итогам модуля "DevOps и системное администрирование"
=======================

# Задание №1
Создайте виртуальную машину Linux.

![Задание 1](https://user-images.githubusercontent.com/93032289/148365001-c03bf8e7-3f7a-4295-8fd0-ee0b6f59bb02.jpg)

# Задание №2

  Делал всё под root  
  Включаем ufw - ufw enable  
  Отклоняем все входящие пакеты - ufw default deny incoming  
  Разрешаем все исходящие пакеты - ufw default allow outgoing  
  Открываем порты 22 и 443 - ufw allow 22 и ufw allow 443  
  Также разрешаем всё для localhost - ufw allow 127.0.0.1  
  В итоге получаем такой результат:  

![Задание 2](https://user-images.githubusercontent.com/93032289/148367915-763ca244-04d8-4a92-a9a6-a05fa69a0192.jpg)

# Задание №3

  Сделал всё как по инструкции.  
  curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -  
  sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"  
  sudo apt-get update && sudo apt-get install vault  
     
# Задание №4

  Делал всё по инструкции  
  
  ![Задание 4](https://user-images.githubusercontent.com/93032289/148640431-1915eb69-a7f7-4c39-b4be-3bf9a8ea1ec7.jpg)
  
# Задание №5

  Установите корневой сертификат в доверенные в хостовой системе
  
  ![Задание 5](https://user-images.githubusercontent.com/93032289/148648173-eec709bd-f941-4a83-87d6-6844dc182f85.jpg)
  
# Задание №6

  Устанавливаем nginx - apt install nginx  
  Проверяем статус службы nginx и пингуем example.com для проверки  
  
  ![Задание 6](https://user-images.githubusercontent.com/93032289/148652324-eba2246f-709c-411c-bc22-71bb2d087d3e.jpg)
  
  В /etc/hosts добавляем запись 127.0.0.1  example.com
  
  ![Задание 6_1](https://user-images.githubusercontent.com/93032289/148652387-2aeb3d56-3f15-4363-915d-3163ac68ba9f.jpg)
