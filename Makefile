PROJECT_NAME = testsettingconfig
install:
	virtualenv ve_testsettingconfig
	ve_testsettingconfig/bin/pip install IPython
	ve_testsettingconfig/bin/pip install -e .
	ve_testsettingconfig/bin/pip install -e ../testmoduleconfig
upload_test_pypi:
	rm -rf dist || True
	python setup.py sdist
	twine -r testpypi dist/* 
upload_pypi:
	rm -rf dist || True
	python setup.py sdist
	twine upload dist/*
py:
	ve_testsettingconfig/bin/ipython
