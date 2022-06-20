for file in ../../software/*/*/module; do
	#echo ${file}
	mkdir -p $(basename $(dirname $(dirname ${file})))
	ln -i --relative -s ${file} $(basename $(dirname $(dirname ${file})))/$(basename $(dirname ${file})).lua
done
