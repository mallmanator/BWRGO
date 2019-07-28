
#/bash
cd src
find ./ -type f -readable -writable -exec sed -i "s/tragocoin/swamp/g" {} \;
find ./ -type f -readable -writable -exec sed -i "s/TRAGO/SWAMP/g" {} \;
find ./ -type f -readable -writable -exec sed -i "s/9419/9429/g" {} \;
find ./ -type f -readable -writable -exec sed -i "s/19419/19429/g" {} \;
rename -v 's/tragocoin/swamp/' *

cd qt
rename -v 's/tragocoin/swamp/' *

cd res
rename -v 's/tragocoin/swamp/' *

cd images
rename -v 's/tragocoin/swamp/' *

cd trad
rename -v 's/tragocoin/swamp/' *

cd ../../..

cd locale
rename -v 's/tragocoin/swamp/' *
cd ../..

cd config
rename -v 's/tragocoin/swamp/' *
find ./ -type f -readable -writable -exec sed -i "s/tragocoin/swamp/g" {} \;
cd ..

cd test
rename -v 's/tragocoin/swamp/' *
find ./ -type f -readable -writable -exec sed -i "s/tragocoin/swamp/g" {} \;
cd ..

cd bench
rename -v 's/tragocoin/swamp/' *
find ./ -type f -readable -writable -exec sed -i "s/tragocoin/swamp/g" {} \;
cd ../..

cd contrib
find ./ -type f -readable -writable -exec sed -i "s/tragocoin/swamp/g" {} \;
rename -v 's/tragocoin/swamp/' *

cd debian
find ./ -type f -readable -writable -exec sed -i "s/tragocoin/swamp/g" {} \;
rename -v 's/tragocoin/swamp/' *

cd manpages
find ./ -type f -readable -writable -exec sed -i "s/tragocoin/swamp/g" {} \;
find ./ -type f -readable -writable -exec sed -i "s/TRAGO/SWAMP/g" {} \;
rename -v 's/tragocoin/swamp/' *
cd ../..

cd init
find ./ -type f -readable -writable -exec sed -i "s/tragocoin/swamp/g" {} \;
rename -v 's/tragocoin/swamp/' *
cd ../..

cd doc
find ./ -type f -readable -writable -exec sed -i "s/tragocoin/swamp/g" {} \;

cd release-notes
rename -v 's/tragocoin/swamp/' *

cd swamp
find ./ -type f -readable -writable -exec sed -i "s/tragocoin/swamp/g" {} \;
cd ../../..

cd snap
find ./ -type f -readable -writable -exec sed -i "s/tragocoin/swamp/g" {} \;

cd gui
rename -v 's/tragocoin/swamp/' *
cd ../..

cd share/pixmaps
rename 's/tragocoin/swamp/' *
cd ../..

