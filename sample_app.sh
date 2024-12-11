#!/bin/bash
cleanup() {
    echo "Cleaning up ..."
    deactivate
    rm -rf /home/devasc/Documents/Git_testing/deployment/flask24
    rm -rf /home/devasc/Documents/Git_testing/deployment/flask_venv
    echo "Application folder has been removed"
}
trap cleanup EXIT
python3 -m venv flask_venv
sleep 15
source flask_venv/bin/activate
git clone https://github.com/AdamAouinaChaoui/flask24
cd flask24/
pip install -r requirements.txt
python3 sample_app.py
