
graph:
	rm -f /tmp/tag_engine
	cargo build
	./target/debug/tag_engine

release:
	rm -f /tmp/tag_engine
	cargo build --release
	./target/release/tag_engine

clean:
	cargo clean
	rm -rf graph.dot graph.jpg
	rm -f /tmp/tag_engine
