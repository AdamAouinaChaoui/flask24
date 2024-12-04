#!/bin/bash
staging exercise with python environment van github
python3 -m venv flask24
source flask_venv/bin/activated
git clone https://github.com/AdamAouinaChaoui/flask24.git
pip install -r requirements.txt
python3 sample_app.py
deactivate
cd ..
rm -rf flask24
