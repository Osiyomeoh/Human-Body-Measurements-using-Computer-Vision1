
all: 
	python2.7 setup.py build_ext --inplace

upload: all
	python setup.py register sdist && twine upload dist/*

sdist:
	python setup.py sdist
	twine upload dist/*

clean:
	rm -rf `find . -name \*.pyc` `find . -name \*~` build/ dist/; make -C contexts clean

realclean: clean
	rm -rf contexts/OSMesa; rm -rf contexts/OSMesa.*.zip

test: all
	env LD_PRELOAD=$(PRELOADED) python -m unittest discover


