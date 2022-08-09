init: get build
ifeq ($(OS),Windows_NT)
	Copy-Item ".env.example" -Destination ".env"
else
	cp .env.example .env
endif

watch:
	flutter packages pub run build_runner watch --delete-conflicting-outputs

build:
	flutter packages pub run build_runner build --delete-conflicting-outputs

clean:
	flutter packages pub run build_runner clean

get:
	flutter pub get

run:
	flutter run