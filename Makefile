# shUnit2
TEST_RUNNER_VERSION = 2.1.6
TEST_RUNNER_DIR     = shunit2

.PHONY: all init test

all: init test

init:
	@curl -L "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/shunit2/shunit2-$(TEST_RUNNER_VERSION).tgz" | tar zx
	@mv shunit2-$(TEST_RUNNER_VERSION) $(TEST_RUNNER_DIR)

test:
	@$(TEST_RUNNER_DIR)/src/shunit2 pecrant_test.sh

clean:
	rm -rf $(TEST_RUNNER_DIR)
