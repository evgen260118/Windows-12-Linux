#!/bin/bash
# Windows 12 Theme Installer for KDE Plasma
# Требуется дистрибутив с KDE Plasma 5+

echo "🚀 Установка темы Windows 12 на Linux (KDE Plasma)..."

# 1. Установка git, если его нет
sudo apt update && sudo apt install -y git

# 2. Клонирование репозитория с темой
git clone https://github.com/yeyushengfan258/Win12OS-kde.git
cd Win12OS-kde || exit

# 3. Установка темы
chmod +x install.sh
./install.sh

# 4. Применение темы через lookandfeeltool (если доступен)
if command -v lookandfeeltool &> /dev/null; then
    lookandfeeltool -a Win12OSDark
    echo "✅ Тема Windows 12 применена!"
else
    echo "⚠️ Примените тему вручную: Системные настройки → Глобальная тема → Win12OSDark"
fi

echo "🎉 Готово! Перезапустите панель задач командой: plasmashell --replace"