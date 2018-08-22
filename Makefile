notebook: venv
	cd notebooks; ../venv/bin/jupyter notebook

lab: venv
	cd notebooks; ../venv/bin/jupyter lab

venv:
	virtualenv  -p python3 venv
	venv/bin/pip install -r requirements.txt
	venv/bin/jupyter nbextension enable --py widgetsnbextension
	venv/bin/jupyter nbextension enable --py vega

clean:
	rm -rf venv
