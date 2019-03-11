[ -d "./UX320/Mar11-angular-plugin" ] && exit
mkdir -p UX320
cd ./UX320
git clone https://github.com/rhildred/wordpress-heroku.git Mar11-angular-plugin
cd Mar11-angular-plugin/wp-content/plugins
git clone https://github.com/rhildred/wordpress_database_admin.git
git clone https://github.com/rhildred/carserviceform.git
git clone https://github.com/rhildred/piday-plugin.git
