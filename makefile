debug:
	cargo build
	./target/debug/tag_engine /home/stevenliatti/a -d

release:
	cargo build --release
	./target/release/tag_engine /home/stevenliatti/a

doc:
	$(MAKE) report.pdf -C doc

measures: measures.sh average.m
	cargo build
	cargo build --release
	mkdir measures
	./measures.sh

clean:
	cargo clean
	$(MAKE) mostlyclean -C doc
	rm -rf graph.dot graph.png measures
	rm -f /tmp/tag_engine

.PHONY: debug release doc clean
