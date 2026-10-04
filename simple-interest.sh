#!/bin/bash

# Calculateur d'intérêt simple

echo "=== Calculateur d'intérêt simple ==="

read -p "Entrez le principal (capital) : " principal
read -p "Entrez le taux d'intérêt annuel (%) : " taux
read -p "Entrez la période de temps (en années) : " temps

# Calcul de l'intérêt simple : (P x R x T) / 100
interet=$(echo "scale=2; ($principal * $taux * $temps) / 100" | bc)
total=$(echo "scale=2; $principal + $interet" | bc)

echo "-----------------------------------"
echo "Principal       : $principal"
echo "Taux d'intérêt  : $taux %"
echo "Période         : $temps an(s)"
echo "Intérêt simple  : $interet"
echo "Montant total   : $total"
