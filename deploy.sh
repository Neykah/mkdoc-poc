pip install poetry
poetry install --group docs
cd docs
poetry run mkdocs build
