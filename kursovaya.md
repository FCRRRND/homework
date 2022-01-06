
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
