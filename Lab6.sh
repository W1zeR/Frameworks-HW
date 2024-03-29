#!/bin/bash
### Условие 6. Сохранить в текстовый файл все текущие процессы (ps aux), запущенные от имени рута (пользователя root).
# С помощью ps aux получаем все активные на данный момент процессы
# С помощью оператора-конвейера | передаём вывод предыдущей команды на вход следующей
# Используем grep с регулярным выражением, чтобы отфильтровать вывод предыдущей команды, оставив только строки, начинающиеся на "root"
# Регулярное выражение нужно, чтобы в результат не попали строки, содержащие "root" в колонке "COMMAND" результата выполнения команды ps aux
# Оператор > используется для записи вывода в новый текстовый файл (или перезаписи уже существующего)
ps aux | grep '^root' > result.txt
