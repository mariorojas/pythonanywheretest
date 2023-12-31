deploy:
	git pull origin main
	pip install -r requirements.txt
	python manage.py migrate
	python manage.py collectstatic --no-input
	@echo "*** DEPLOYMENT COMPLETED ***"
	@echo "Please make sure to restart your server at https://www.pythonanywhere.com/user/$$(whoami)/webapps/#tab_id_$$(whoami)_pythonanywhere_com"

push:
	git push -u origin main