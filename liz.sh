#!/bin/bash

awk -F ',' '$46 =="CONSTITUCION" {print $1, $22}' Accidentes_ags_2021.csv

