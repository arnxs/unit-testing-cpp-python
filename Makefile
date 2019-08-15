
.PHONY: deploy test clean

LIB_DIR=lib
TEST_DIR=tests
CPP_FLAGS=-std=c++11 -Wall

INCLUDES=\
	-I$(TEST_DIR)

SRCS=\
	$(TEST_DIR)/core/common/test_utils.cpp

OBJS=$(SRCS:.cpp=.o)

deploy:
	platformio run -t upload

test: $(OBJS)
	@g++ $(CPP_FLAGS) $(INCLUDES) -o run_tests $(OBJS) $(TEST_SRC)
	@./run_tests

clean:
	rm $(OBJS)

%.o : %.cpp
	g++ $(CPP_FLAGS) $(INCLUDES) -c $< -o $@
