.ONESHELL:
.DEFAULT_GOAL := setup

setup: uv.lock pyproject.toml
	uv sync --dev
	.venv\Scripts\Activate.ps1