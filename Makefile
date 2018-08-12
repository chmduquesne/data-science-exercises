lab: venv
	venv/bin/jupyter lab

venv:
	virtualenv  -p python3 venv
	venv/bin/pip install -r requirements.txt

clean:
	rm -rf venv
