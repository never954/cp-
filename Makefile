# Simple Makefile for Ubuntu LTS systems

.PHONY: all deps configure build run clean

all: build

deps:
	@echo "Installing build dependencies (requires sudo)..."
	sudo apt-get update -y && sudo apt-get install -y build-essential cmake libsfml-dev

configure:
	cmake -S . -B build -DCMAKE_BUILD_TYPE=Release

build: configure
	cmake --build build -j

run: build
	./build/bin/SortingVisualizer

clean:
	rm -rf build


