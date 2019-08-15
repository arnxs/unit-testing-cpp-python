
.PHONY: deploy test clean

LIB_DIR=lib
TEST_DIR=tests
EXTERNAL_DIR=external
SRC_DIR=src
CPP_FLAGS=-std=c++11 -Wall

INCLUDES=\
	-I$(TEST_DIR)\
	-I$(EXTERNAL_DIR)\
	-I$(SRC_DIR)/core/common

SRCS=\
	$(TEST_DIR)/core/common/test_utils.cpp \
	$(SRC_DIR)/core/common/utils.cpp \
	$(TEST_DIR)/catch2/examples/000-CatchMain.cpp \
	$(TEST_DIR)/catch2/examples/010-TestCase.cpp \
	$(TEST_DIR)/catch2/examples/020-TestCase-1.cpp

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
