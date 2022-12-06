if [ -z "$SECRET" ]; then
    echo "Error: SECRET is not set!"
    exit 125
fi
pip install poetry
poetry install --with docs
cd docs
poetry run mkdocs build
npm install -g staticrypt
find site -type f -name "*.html" -exec staticrypt {} $SECRET -o {} \;
