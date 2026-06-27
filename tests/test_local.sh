#!/bin/bash
# ============================================================
# test_local.sh — Testes simulados do Cofre Digital
# ------------------------------------------------------------
# Este script NÃO executa Docker real.
# Ele simula o processo de teste para fins didáticos.
# Os alunos podem rodar este script localmente sem riscos.
# ============================================================

echo "==============================================="
echo " Testando Cofre Digital (Simulação Local)"
echo "==============================================="

# ------------------------------------------------------------
# Simulando build da imagem Docker
# ------------------------------------------------------------
echo ""
echo "[1/5] Simulando construção da imagem Docker..."
echo "docker build -f docker/Dockerfile -t cofre-digital-local ."
echo ">> (SIMULAÇÃO) Build concluído com sucesso!"

# ------------------------------------------------------------
# Simulando execução do container com secrets de desenvolvimento
# ------------------------------------------------------------
echo ""
echo "[2/5] Simulando execução do container com secrets..."
echo "docker run -d --name cofre-test -p 5000:5000 \\"
echo "  -e ENVIRONMENT=test \\"
echo "  -e DB_HOST=test-db.local \\"
echo "  -e DB_USER=test_user \\"
echo "  -e DB_PASSWORD=test_password_123 \\"
echo "  -e EXTERNAL_API_KEY=test_key_abcd1234 \\"
echo "  cofre-digital-local"
echo ">> (SIMULAÇÃO) Container iniciado!"

# ------------------------------------------------------------
# Simulando tempo de inicialização
# ------------------------------------------------------------
echo ""
echo "[3/5] Aguardando inicialização..."
sleep 1
echo ">> (SIMULAÇÃO) Aplicação pronta!"

# ------------------------------------------------------------
# Simulando testes de endpoints
# ------------------------------------------------------------
echo ""
echo "[4/5] Testando endpoints simulados..."
echo "curl -s http://localhost:5000/ | jq ."
echo '{ "status": "ok", "message": "Cofre Digital em execução (simulado)" }'

echo "curl -s http://localhost:5000/database | jq ."
echo '{ "database": "connected", "user": "test_user", "password": "***MASKED***" }'

echo "curl -s http://localhost:5000/api-key | jq ."
echo '{ "api_key": "***MASKED***" }'

# ------------------------------------------------------------
# Simulando logs mascarados
# ------------------------------------------------------------
echo ""
echo "[5/5] Verificando logs (simulados e mascarados)..."
echo "docker logs cofre-test"
echo "[INFO] Conectando ao banco test_db em test-db.local"
echo "[INFO] Usuário: test_user"
echo "[INFO] Senha configurada: True"
echo "[DEBUG] Connection string (mascarada): postgresql://test_user:****1234@test-db.local/test_db"

# ------------------------------------------------------------
# Finalização
# ------------------------------------------------------------
echo ""
echo "Limpando ambiente (simulado)..."
echo "docker stop cofre-test"
echo "docker rm cofre-test"

echo ""
echo "==============================================="
echo " Teste local concluído com sucesso! (Simulado)"
echo "==============================================="
