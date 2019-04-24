
.venv:
	python3 -mvenv .venv
	.venv/bin/pip install --upgrade pip wheel setuptools
	.venv/bin/pip install --requirement requirements.txt
