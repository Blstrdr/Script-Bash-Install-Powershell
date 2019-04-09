#! /bin/bash


# Installation de Powershell avec autorisations nécessaires.
# Ce script ne fait qu'installer Powershell et ses prérequis.

#Mise à jour des dépots et de tous les paquets installés sur le système
apt update && apt upgrade

# Installation de Curl Gnupg et Apt-transport-https
apt install curl gnupg apt-transport-https

# Obtention de de la clé de dépot pour le dépot microsoft
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

# Mise à jour du "sources.list"
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-stretch-prod stretch main" > /etc/apt/sources.list.d/microsoft.list'
# Mise à jour de tous les dépots
apt update

# Installation de Powershell
apt install -y powershell

# Démarrage Powershell
pwsh
