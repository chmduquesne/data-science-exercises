lab: venv
	cd notebooks; ../venv/bin/jupyter lab

notebook:
	cd notebooks; ../venv/bin/jupyter notebook

venv:
	virtualenv  -p python3 venv
	venv/bin/pip install -r requirements.txt
	venv/bin/jupyter nbextension enable --py widgetsnbextension

clean:
	rm -rf venv
