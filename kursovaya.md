
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
  Запускаем vault под root - vault server -dev -dev-root-token-id root  
  
  ```
  vault login root  
  Success! You are now authenticated. The token information displayed below
is already stored in the token helper. You do NOT need to run "vault login"
again. Future Vault requests will automatically use this token.

Key                  Value
---                  -----
token                root
token_accessor       Rk9SXaJcJqkZDV8mNKtYAO3R
token_duration       ∞
token_renewable      false
token_policies       ["root"]
identity_policies    []
policies             ["root"]
 
  ```
  Далее запускаем vault с токеном - vault server -dev -dev-root-token-id Rk9SXaJcJqkZDV8mNKtYAO3R 
  ```
  export VAULT_ADDR='http://127.0.0.1:8200'
  export VAULT_TOKEN=Rk9SXaJcJqkZDV8mNKtYAO3R
  ```
  
  Создаём корневые сертификаты
  
  ![Задание 4](https://user-images.githubusercontent.com/93032289/148676750-41d724a7-fbdd-4198-be9b-7ccb013df0ae.jpg)
  
  Создаём сертификаты для netology.example.com  
  ```
  vault write -format=json pki_int/issue/example-dot-com common_name="netology.example.com" ttl=720h > netology.example.com.crt
  cat netology.example.com.crt | jq -r .data.certificate > netology.example.com.crt.pem
  cat netology.example.com.crt | jq -r .data.issuing_ca >> netology.example.com.crt.pem
  cat netology.example.com.crt | jq -r .data.private_key > netology.example.com.crt.key
  ```
  
# Задание №5

  Установите корневой сертификат в доверенные в хостовой системе
  
  ![Задание 5](https://user-images.githubusercontent.com/93032289/148648173-eec709bd-f941-4a83-87d6-6844dc182f85.jpg)
  
# Задание №6

  Устанавливаем nginx - apt install nginx  
  В /etc/hosts добавляем запись 127.0.0.1  example.com  
    
  ![Задание 6](https://user-images.githubusercontent.com/93032289/148678216-14fa81ec-ea6f-4f9d-ac99-3f51758d2d39.jpg)
  
  Проверяем статус службы nginx и пингуем example.com для проверки
  
  
  
  
# Задание №7  
