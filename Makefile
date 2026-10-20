PYTHON ?= python3.15t

doc:
	mkdir -p doc
html: doc
	epydoc -v --graph=all --html **/*.py *.py -o doc/html
pdf: doc
	epydoc -v --graph=all --pdf **/*.py *.py -o doc/pdf
latex: doc
	epydoc -v --graph=all --latex **/*.py *.py -o doc/latex
clean:
	rm -rf doc/pdf ; rm -rf doc/html ; rm -f **/*.pyc *.pyc **/*.pyo *.pyo ; rm -rf __pycache__ ; rm -rf main.dist
run:
	$(PYTHON) -Xgil=0 src/main.py
compile:
	$(PYTHON) -m py_compile src/*.py src/states/*.py
check: compile
	$(PYTHON) -Xgil=0 -c "import sys; sys.path.insert(0, 'src'); import main; raise SystemExit(sys._is_gil_enabled())"
exe_win:
	$(PYTHON) -m pip install 'nuitka==4.3.1'
	$(PYTHON) -m nuitka --follow-imports --standalone --remove-output --windows-icon=icon.ico src/main.py
	cp -r resource main.dist ; cp config.txt main.dist
exe_mac: exe
exe_lin: exe
exe:
	$(PYTHON) -m pip install 'nuitka==4.3.1'
	$(PYTHON) -m nuitka --follow-imports --standalone --remove-output --clang src/main.py
	cp -r resource main.dist ; cp config.txt main.dist
dep:
	$(PYTHON) -m pip install -r requirements.txt
