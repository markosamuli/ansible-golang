PRE_COMMIT_HOOKS = .git/hooks/pre-commit
PRE_PUSH_HOOKS = .git/hooks/pre-push
COMMIT_MSG_HOOKS = .git/hooks/commit-msg

.PHONY: test
test:
	@./tests/run-tests

.PHONY: test-update
test-update:
	@./tests/update

.PHONY: update
update:
	@./update-release

.PHONY: lint
lint: git-hooks
	@pre-commit run -a

.PHONY: install-git-hooks
install-git-hooks: $(PRE_COMMIT_HOOKS) $(PRE_PUSH_HOOKS) $(COMMIT_MSG_HOOKS)

$(PRE_COMMIT_HOOKS):
	@pre-commit install --install-hooks

$(PRE_PUSH_HOOKS):
	@pre-commit install --install-hooks -t pre-push

$(COMMIT_MSG_HOOKS):
	@pre-commit install --install-hooks -t commit-msg
