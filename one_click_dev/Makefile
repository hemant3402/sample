include ./one_click_dev/config.env

./one_click_dev/smartrebuild.o: $(shell echo $(BUILD_DEPS))
	@./ocd build
	@touch $@
