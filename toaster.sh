[ -d "./UX320/FinalPractice" ] && exit
mkdir -p UX320
cd ./UX320
find -name .git -execdir git pull \;
git clone https://github.com/rhildred/wordpress-heroku.git FinalPractice
