#!/bin/bash

suma_otro=$(awk -F ',' '{sum+=$25} END {print sum}' Accidentes_ags_2021.csv)
echo "La suma de los datos de 'OTROVEHIC' es: $suma_otro"

