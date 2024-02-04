# Definir las carpetas
SRC_DIR := src
INC_DIR := inc
TEST_DIR := test
BUILD_DIR := build

# Definir los archivos
SRC_FILES := $(wildcard $(SRC_DIR)/*.c)
INC_FILES := $(wildcard $(INC_DIR)/*.c)
TEST_FILES := $(wildcard $(TEST_DIR)/*.c)

# Definir el compilador y las banderas
CC := gcc
CFLAGS := -I$(INC_DIR)

# Crear la carpeta build si no existe
$(shell mkdir -p $(BUILD_DIR))

# Regla por defecto
all: $(BUILD_DIR)/main $(BUILD_DIR)/test

# Regla para compilar el programa principal
$(BUILD_DIR)/main: $(SRC_FILES) $(INC_FILES)
	$(CC) $(CFLAGS) -o $@ $^

# Regla para compilar los tests
$(BUILD_DIR)/test: $(TEST_FILES) $(INC_FILES)
	$(CC) $(CFLAGS) -o $@ $^

# Regla para limpiar los archivos compilados
clean:
	rm -f $(BUILD_DIR)/main $(BUILD_DIR)/test
