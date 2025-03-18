## Что делает плейбук:

1. Устанавливает необходимые инструменты (tcpdump, iftop, iperf3).

2. Запускает iperf3 сервер на server1 и клиент на server2.

3. Запускает tcpdump на server1 для захвата трафика.

4. Отправляет HTTP-запрос с server2 на server1.

5. Останавливает tcpdump и копирует файл захвата на ваш локальный компьютер.


##  Дополнительные шаги
1. Анализ трафика:
- Откройте файл capture.pcap в Wireshark и изучите заголовки пакетов, протоколы и другую информацию.

2. Мониторинг трафика:
- Используйте iftop для мониторинга трафика в реальном времени.
```
sudo iftop -i eth1
```

3. Тестирование других протоколов:
- Вы можете настроить и тестировать другие протоколы (например, UDP, ICMP) с помощью iperf3 и tcpdump.
```
iperf3 -c 93.183.74.93
```

## Проверка доступных сетевых интерфейсов:

1. На каждом сервере выполните команду, чтобы узнать имена сетевых интерфейсов:
```
ip link show
```
Пример вывода:
```
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
2: ens3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP mode DEFAULT group default qlen 1000
    link/ether 52:54:00:12:34:56 brd ff:ff:ff:ff:ff:ff
3: ens4: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP mode DEFAULT group default qlen 1000
    link/ether 52:54:00:12:34:57 brd ff:ff:ff:ff:ff:ff
```
В этом примере интерфейсы называются ens3 и ens4.

2. Проверка конфигурации Netplan:

Убедитесь, что в файле конфигурации Netplan (/etc/netplan/01-netcfg.yaml) указаны правильные имена интерфейсов. Например:
```
network:
  version: 2
  ethernets:
    ens3:
      dhcp4: yes
    ens4:
      addresses:
        - 192.168.0.101/24
      routes:
        - to: 192.168.1.0/24
          via: 192.168.0.1
```
Если имена интерфейсов отличаются, обновите конфигурацию Netplan.

