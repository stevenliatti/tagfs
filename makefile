
graph:
	cargo build
	./target/debug/tag_engine

release:
	cargo build --release
	./target/release/tag_engine

clean:
	cargo clean
	rm -rf graph.dot graph.jpg
