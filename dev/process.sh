#!/usr/bin/env sh

convert \@gh0sty_shibe-Befriend_Your_Local_Werewolf.webp -quality 100 -density 300 ../pages/01.pdf;
convert \@AVDambeck-bloody_mary.jpg -quality 100 -desity 300 ../pages/03.pdf;
mv tell-you-a-story-split/pg1.pdf ../pages/04.pdf;
mv tell-you-a-story-split/pg2.pdf ../pages/05.pdf;
mv tell-you-a-story-split/pg3.pdf ../pages/06.pdf;
mv tell-you-a-story-split/pg4.pdf ../pages/07.pdf;
convert Vivianne_Dambeck-Randome-Gender-Presentation/pg1.png -quality 100 ../pages/08.pdf;
convert Vivianne_Dambeck-Randome-Gender-Presentation/pg2.png -quality 100 ../pages/09.pdf;
convert Vivianne_Dambeck-Randome-Gender-Presentation/pg3.png -quality 100 ../pages/10.pdf;
convert Vivianne_Dambeck-Randome-Gender-Presentation/pg1.png -quality 100 ../pages/08.pdf;
convert Vivianne_Dambeck-Randome-Gender-Presentation/pg2.png -quality 100 ../pages/09.pdf;
convert Vivianne_Dambeck-Randome-Gender-Presentation/pg3.png -quality 100 ../pages/10.pdf;
convert \@art_by_akira1-Queer_Monstrosity-scaled-by-editor-to-300dpi.png -quality 100 ../pages/11.pdf;
cd wiccasplit/;
pdfseparate ../Vivianne_Dambeck-wicca.pdf pg%d.pdf;
mkdir temp;
mv pg1* temp/;
mv temp/pg1.pdf .;
for i in *.pdf; do mv $i ${i:0:2}0${i:2:5}; done;
mv temp/* .; rmdir temp;
rm pg0*;
rm pg10.pdf;
rm pg11.pdf;
cp * ../../pages/;
cd ..;
pdfunite pages/* the-halloween-zine_v1.0_2023-10-25.pdf;
