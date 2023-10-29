install: 
	pip install --upgrade pip && \
	pip install -r requirements.txt

format:
	black *.py

lint:
	#pylint --disable=R,C --ignore-patterns=test_.*?py *.py
	ruff check *.py

run:
	python lib.py	
	python main.py

all: install lint format