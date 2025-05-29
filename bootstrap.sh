#!/usr/bin/env bash
set -euo pipefail

function show_usage() {
  cat <<EOF
Usage: $0 <frontend_host> <admin_email>

Example:
  $0 app.example.com admin@example.com
EOF
}

# 👀 Verifica args
if [[ $# -ne 2 ]]; then
  echo "❌ Invalid number of arguments."
  show_usage
  exit 1
fi

FRONTEND_HOST="$1"
ADMIN_EMAIL="$2"

# 🔍 Checa se git existe
if ! command -v git &>/dev/null; then
  echo "⚠️  git not found. Please install git first."
  exit 1
fi

# 🔐 Lê GitHub Token
echo -n "🔐 Enter your GitHub Personal Access Token (repo scope): "
read -rs GITHUB_TOKEN
echo

# 🛠️ Clona o instalador privado
echo "👷‍♂️  Cloning click-installer..."
rm -rf install-temp
git clone "https://$GITHUB_TOKEN@github.com/clickcwb/click-installer.git" install-temp

# 🚀 Executa o setup
cd install-temp
chmod +x setup.sh
echo "🚀  Running setup.sh..."
sudo ./setup.sh "$FRONTEND_HOST" "$ADMIN_EMAIL"
#!/usr/bin/env bash
set -euo pipefail

function show_usage() {
  cat <<EOF
Usage: $0 <frontend_host> <admin_email>

Example:
  $0 app.example.com admin@example.com
EOF
}

# 👀 Verifica args
if [[ $# -ne 2 ]]; then
  echo "❌ Invalid number of arguments."
  show_usage
  exit 1
fi

FRONTEND_HOST="$1"
ADMIN_EMAIL="$2"

# 🔍 Checa se git existe
if ! command -v git &>/dev/null; then
  echo "⚠️  git not found. Please install git first."
  exit 1
fi

# 🔐 Lê GitHub Token
echo -n "🔐 Enter your GitHub Personal Access Token (repo scope): "
read -rs GITHUB_TOKEN
echo

# 🛠️ Clona o instalador privado
echo "👷‍♂️  Cloning click-installer..."
rm -rf install-temp
git clone "https://$GITHUB_TOKEN@github.com/clickcwb/click-installer.git" install-temp

# 🚀 Executa o setup
cd install-temp
chmod +x setup.sh
echo "🚀  Running setup.sh..."
sudo ./setup.sh "$FRONTEND_HOST" "$ADMIN_EMAIL"
