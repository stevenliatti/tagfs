debug:
	cargo build
	./target/debug/tag_engine /home/stevenliatti/a -d

release:
	cargo build --release
	./target/release/tag_engine /home/stevenliatti/a

report:
	$(MAKE) report.pdf -C doc

clean:
	cargo clean
	$(MAKE) mostlyclean -C doc
	rm -rf graph.dot graph.png
	rm -f /tmp/tag_engine

.PHONY: debug release report clean
