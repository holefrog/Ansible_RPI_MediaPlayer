#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")"

# 颜色定义
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}>>> 正在通过 Ansible 获取所有服务状态...${NC}"

# 进入 ansible 目录以使用正确的配置 (ansible.cfg, inventory)
cd ansible

# 执行状态检查 playbook
ansible-playbook playbooks/status.yml

echo -e "${GREEN}>>> 状态检查完毕。${NC}"
