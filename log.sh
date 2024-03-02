
#!/bin/bash


ram_total=$(free -m | awk '/^Mem/ {print $2}')
ram_usada=$(free -m | awk '/^Mem/ {print $3}')
porcentaje_ram=$(echo "scale=2; $ram_usada / $ram_total * 100" | bc)

porcentaje_cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | awk -F. '{print $1}')

echo "Porcentaje de RAM utilizada: $porcentaje_ram%"
echo "Porcentaje de CPU utilizada: $porcentaje_cpu%"
