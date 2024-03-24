
install:
	#install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint: 
	pylint --disable=R,C *.py devopslib
# disable Recomended and Configuration in all .py and also go to devoplsib and check the .py there
test:
	#test
	python -m pytest -vv --cov=devopslib test_*.py
# need to install cov library
# cover devopslib
# check all test_*.py files

format:
	#format code
	black *.py devopslib/*.py
	# devopslib/*.py


deploy:
	echo "deploy goes here"

all: install lint test format

# post-install:
# 	python -m textblob.download_corpora


# lint:
# 	#flake8 or #pylint
# 	pylint --disable=R,C *.py mylib/*.py
# test:
# 	#test
# 	python -m pytest -vv --cov=mylib --cov=main test_*.py
# build:
# 	#build container
# 	docker build -t deploy-fastapi .
# run:
# 	#run docker
# 	#docker run -p 127.0.0.1:8080:8080 c1a36ab4da9d
# deploy:
# 	#deploy
# 	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 561744971673.dkr.ecr.us-east-1.amazonaws.com
# 	docker build -t fastapi-wiki .
# 	docker tag fastapi-wiki:latest 561744971673.dkr.ecr.us-east-1.amazonaws.com/fastapi-wiki:latest
# 	docker push 561744971673.dkr.ecr.us-east-1.amazonaws.com/fastapi-wiki:latest

# all: install post-install lint test deploy