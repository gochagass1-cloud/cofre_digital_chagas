#!/bin/bash
# ======================================================================
# interactive_tests.sh — Testes Interativos do Cofre Digital (Simulado)
# ----------------------------------------------------------------------
# Este script transforma o teste em uma experiência guiada.
# O aluno participa, toma decisões e vê logs mascarados.
# Nada aqui usa Docker real — tudo é simulado com segurança.
# =====================================================================

clear
echo "=============================================================="
echo "        🚀 Testes Interativos do Cofre Digital (Simulado)"
echo "=============================================================="
echo ""
echo "Bem-vindo! Aqui você poderá testar:"
echo "  ✔ Simulação de build"
echo "  ✔ Simulação de execução do container"
echo "  ✔ Testes de endpoints"
echo "  ✔ Logs mascarados"
echo "  ✔ Simulação de erros"
echo ""
read -p "Pressione ENTER para começar..."

# ============================================================
# MENU PRINCIPAL
# ============================================================
while true; do
    clear
    echo "=============================================================="
    echo " MENU DE TESTES"
    echo "=============================================================="
    echo "Escolha uma opção:"
    echo ""
    echo "  1) Simular build da imagem Docker"
    echo "  2) Simular execução do container com secrets"
    echo "  3) Testar endpoints simulados"
    echo "  4) Ver logs mascarados"
    echo "  5) Simular erro de conexão"
    echo "  6) Executar fluxo completo automaticamente"
    echo "  0) Sair"
    echo ""
    read -p "Opção: " opcao

    case $opcao in

        1)
            echo ""
            echo "[1/5] Simulando construção da imagem Docker..."
            echo "docker build -f docker/Dockerfile -t cofre-digital-local ."
            echo ">> (SIMULAÇÃO) Build concluído com sucesso!"
            read -p "Pressione ENTER para voltar ao menu..."
            ;;

        2)
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
            read -p "Pressione ENTER para voltar ao menu..."
            ;;

        3)
            echo ""
            echo "[3/5] Testando endpoints simulados..."
            echo ""
            echo "GET /"
            echo '{ "status": "ok", "message": "Cofre Digital em execução (simulado)" }'
            echo ""
            echo "GET /database"
            echo '{ "database": "connected", "user": "test_user", "password": "***MASKED***" }'
            echo ""
            echo "GET /api-key"
            echo '{ "api_key": "***MASKED***" }'
            read -p "Pressione ENTER para voltar ao menu..."
            ;;

        4)
            echo ""
            echo "[4/5] Logs mascarados:"
            echo ""
            echo "[INFO] Conectando ao banco test_db em test-db.local"
            echo "[INFO] Usuário: test_user"
            echo "[INFO] Senha configurada: True"
            echo "[DEBUG] Connection string (mascarada): postgresql://test_user:****1234@test-db.local/test_db"
            read -p "Pressione ENTER para voltar ao menu..."
            ;;

        5)
            echo ""
            echo "[5/5] Simulando erro de conexão..."
            echo "[ERRO SIMULADO] Falha ao conectar ao banco!"
            echo "[INFO] SecureLogger: erro mascarado registrado com sucesso."
            read -p "Pressione ENTER para voltar ao menu..."
            ;;

        6)
            echo ""
            echo "Executando fluxo completo..."
            sleep 1
            echo "✔ Build simulado"
            sleep 1
            echo "✔ Execução simulada"
            sleep 1
            echo "✔ Endpoints testados"
            sleep 1
            echo "✔ Logs mascarados exibidos"
            sleep 1
            echo "✔ Erro simulado"
            echo ""
            echo "Fluxo completo finalizado!"
            read -p "Pressione ENTER para voltar ao menu..."
            ;;

        0)
            echo ""
            echo "Encerrando testes. Obrigado por participar!"
            exit 0
            ;;

        *)
            echo "Opção inválida!"
            sleep 1
            ;;
    esac
done
