if [ -z "$SECRET" ]; then
    echo "Error: SECRET is not set!"
    exit 125
fi
pip install poetry
poetry install --with docs
cd docs
poetry run mkdocs build
cd site
npm install staticrypt
find . -type f -name "*.html" -exec npx staticrypt {} $SECRET -o {} \;
