# network_practise

```
git add .
git commit -m "update readme"
git push -u origin main
```


1. cd /Users/andreyshabunov/network_practise/terraform
2. terraform init
3. TF_LOG=DEBUG terraform apply


1. cd /Users/andreyshabunov/network_practise/ansible
2. ansible-playbook -i inventory playbook.yml


1. sudo passwd root


### Webmin:

1. **Добавление репозитория Webmin:**
   - Добавлен ключ репозитория с помощью модуля `apt_key`.
   - Добавлен репозиторий Webmin с помощью модуля `apt_repository`.

2. **Установка Webmin:**
   - После добавления репозитория пакет `webmin` будет доступен для установки.

3. **Доступ к Webmin:**
   - После успешной установки Webmin откройте браузер и перейдите по адресу:
     ```
     http://93.183.74.84:10000
     http://93.183.74.88:10000
     ```
   - Логин: `root`, пароль: ваш пароль от сервера.

4. **Проверка сетевых интерфейсов:**
   - Убедитесь, что интерфейсы настроены правильно:
     ```bash
     ip addr show
     ```

5. **Проверка маршрутов:**
   - Убедитесь, что маршруты добавлены:
     ```bash
     ip route show
     ```

6. **Проверка HTTP-сервера:**
   - На `server1` проверьте, что HTTP-сервер запущен:
     ```bash
     curl http://localhost:8080
     ```

7. **Проверка сетевого взаимодействия:**
   - На `server2` отправьте запрос на `server1`:
     ```bash
     curl http://192.168.0.101:8080
     ```
