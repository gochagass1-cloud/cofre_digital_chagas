# ============================================================
# database.py — Exemplo de uso seguro do sistema de logs
# ============================================================

from security_utils import SecureLogger, secure_log_decorator, mask_secret

secure_logger = SecureLogger(__name__)


@secure_log_decorator
def connect_database(host, user, password, database):
    """Conecta ao banco de dados de forma segura."""

    # ------------------------------------------------------------
    # Logs seguros — sem expor dados sensíveis
    # ------------------------------------------------------------
    secure_logger.info(f"Conectando ao banco {database} em {host}")
    secure_logger.info(f"Usuário: {user}")
    secure_logger.info(f"Senha configurada: {password is not None}")

    # ------------------------------------------------------------
    # Simulando criação de connection string segura
    # ------------------------------------------------------------
    connection_string = f"postgresql://{user}:{mask_secret(password)}@{host}/{database}"
    secure_logger.debug(f"Connection string (mascarada): {connection_string}")

    # ------------------------------------------------------------
    # Simulação de conexão real
    # ------------------------------------------------------------
    return {
        "status": "connected",
        "connection_string": connection_string
    }
