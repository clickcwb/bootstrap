# Bootstrap Installer for Click Atendimento

This stub script asks for your GitHub token, clones the private installer,
and runs the real `setup.sh`.

## Usage

```bash
curl -sSL https://get.clicktie.online/bootstrap.sh -o bootstrap.sh
chmod +x bootstrap.sh
./bootstrap.sh <frontend_host> <admin_email>
