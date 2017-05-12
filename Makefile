PYTHON ?= python3
PORT ?= 3128

env:
	virtualenv -p $(PYTHON) env
	env/bin/pip install -r requirements.txt
run:
	env/bin/python main.py

check:
	./testrun.sh $(PORT)
