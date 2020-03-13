BUILD_DIR := build

SRCS := main.c foo/bar/baz.c util/log.c
OBJS := $(addprefix $(BUILD_DIR)/,$(patsubst %.c,%.o,$(SRCS)))

.PHONY: program
program: $(BUILD_DIR)/program

.PRECIOUS: $(BUILD_DIR)/. $(BUILD_DIR)%/.

$(BUILD_DIR)/.:
	mkdir -p $@

$(BUILD_DIR)%/.:
	mkdir -p $@

.SECONDEXPANSION:

$(BUILD_DIR)/%.o: %.c | $$(@D)/.
	$(CC) -c $< -o $@

$(BUILD_DIR)/program: $(OBJS)
	$(CC) $^ -o $@
