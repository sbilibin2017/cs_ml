from pathlib import Path

from pydantic_settings import BaseSettings, SettingsConfigDict


class Settings(BaseSettings):
    model_config = SettingsConfigDict(
        env_file=Path(__file__).resolve().parent.parent.parent.parent / ".env",
        env_file_encoding="utf-8",
        extra="ignore",
    )

    APP_HOST: str = "0.0.0.0"
    APP_PORT: int = 8000
    APP_VERSION: str = "v1"

    CLICKHOUSE_CLIENT_PORT: int = 9000

    DOCKER_CLICKHOUSE_HOST: str = "clickhouse"


settings: Settings = Settings()
