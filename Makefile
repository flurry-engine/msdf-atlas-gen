
all:
	mkdir -p bin
linux: all
	g++ -I /usr/local/include/freetype2 -I /usr/include/freetype2 -I artery-font-format -I msdfgen/include -I msdfgen -D MSDFGEN_USE_CPP11 -D MSDF_ATLAS_STANDALONE -std=c++11 -pthread -O2 -o bin/msdf-atlas-gen msdfgen/core/*.cpp msdfgen/lib/*.cpp msdfgen/ext/*.cpp msdf-atlas-gen/*.cpp -lfreetype
osx: all
	freetype-config --cflags
	freetype-config --libs
	g++ -I /usr/local/include/freetype2 -I /usr/include/freetype2 -I artery-font-format -I msdfgen/include -I msdfgen -D MSDFGEN_USE_CPP11 -D MSDF_ATLAS_STANDALONE -std=c++11 -pthread -O2 -o bin/msdf-atlas-gen msdfgen/core/*.cpp msdfgen/lib/*.cpp msdfgen/ext/*.cpp msdf-atlas-gen/*.cpp -lfreetype
