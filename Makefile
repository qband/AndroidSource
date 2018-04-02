download-linux:
	mkdir -p src/aosp \
		&& cd src/aosp \
		&& ../../scripts/getSource.sh

download-windows:
	mkdir -p src/aosp \
		&& cd src/aosp \
		&& ../../scripts/getSourceWin.sh
