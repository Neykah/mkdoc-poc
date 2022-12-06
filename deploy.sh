pip install poetry
poetry install --with docs
cd docs
poetry run mkdocs build
