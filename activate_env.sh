#!/bin/bash

# 啟動虛擬環境的腳本
# Usage: source activate_env.sh

echo "啟動 Machine Learning 專案虛擬環境..."

# 檢查虛擬環境是否存在
if [ ! -d ".venv" ]; then
    echo "錯誤: 虛擬環境不存在，請先運行以下命令建立："
    echo "python3 -m venv .venv"
    echo "source .venv/bin/activate"
    echo "pip install -r requirements.txt"
    return 1
fi

# 啟動虛擬環境
source .venv/bin/activate

echo "✅ 虛擬環境已啟動"
echo "📦 可用的工具："
echo "  - jupyter lab      # 啟動 JupyterLab"
echo "  - jupyter notebook # 啟動 Jupyter Notebook"
echo "  - python          # Python 解釋器"
echo ""
echo "🚀 要啟動 Jupyter，執行："
echo "  jupyter lab"
echo ""
echo "要離開虛擬環境，執行："
echo "  deactivate"