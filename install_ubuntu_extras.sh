#!/bin/bash

echo "🚀 Instalando mejoras para Alacritty en Ubuntu..."

# Actualizar repositorios
sudo apt update

# Instalar herramientas de desarrollo
echo "📦 Instalando herramientas de desarrollo..."
sudo apt install -y \
    git \
    curl \
    wget \
    tmux \
    htop \
    tree \
    ripgrep \
    fd-find \
    bat \
    exa \
    fzf \
    zsh \
    neovim \
    python3-pip \
    nodejs \
    npm

# Instalar fuentes adicionales
echo "🔤 Instalando fuentes adicionales..."
sudo apt install -y \
    fonts-powerline \
    fonts-noto-color-emoji \
    fonts-ubuntu \
    fonts-ubuntu-console

# Instalar herramientas de terminal
echo "🛠️ Instalando herramientas de terminal..."
sudo apt install -y \
    zsh-autosuggestions \
    zsh-syntax-highlighting \
    zsh-theme-powerlevel10k

# Instalar herramientas de desarrollo
echo "💻 Instalando herramientas de desarrollo..."
sudo apt install -y \
    build-essential \
    cmake \
    pkg-config \
    libfreetype6-dev \
    libfontconfig1-dev \
    libxcb-xfixes0-dev \
    libxkbcommon-dev

# Instalar Oh My Zsh
echo "✨ Instalando Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Instalar Powerlevel10k
echo "🌟 Instalando Powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Configurar zsh como shell por defecto
echo "🔧 Configurando zsh como shell por defecto..."
chsh -s $(which zsh)

# Crear directorio de configuración de Alacritty
echo "📁 Creando directorio de configuración..."
mkdir -p ~/.config/alacritty

# Copiar configuración
echo "📋 Copiando configuración de Alacritty..."
cp alacritty.yaml ~/.config/alacritty/

echo "✅ ¡Instalación completada!"
echo "🔄 Reinicia tu terminal o ejecuta: source ~/.zshrc"
echo "🎨 Para personalizar Powerlevel10k: p10k configure" 