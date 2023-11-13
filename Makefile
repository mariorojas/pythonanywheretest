deploy:
	git pull origin main
	python manage.py migrate
	python manage.py collectstatic --no-input
	@echo "*** DEPLOYMENT COMPLETED ***"
	@echo "Please make sure to restart your server from https://www.pythonanywhere.com/user/mariorojas/webapps/#tab_id_mariorojas_pythonanywhere_com"

push:
	git push -u origin main