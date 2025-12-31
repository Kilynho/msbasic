if [ ! -d build ]; then
	mkdir build
fi

for i in kilynho; do

echo $i
ca65 -D $i msbasic.s -o build/$i.o &&
ld65 -C $i.cfg build/$i.o -o build/$i.bin -Ln build/$i.lbl
cp build/kilynho.bin ../build/rom.bin

done

