# FPGA-Music-Box
Implementación de una caja musical hecha en Verilog para la asignatura de Eléctronica Digital correspondiente a la carrera de Ingeniería en Informática (FICH-UNL).


## Diseño del Proyecto

1. **Generador de Onda Cuadrada (`square_wave_gen`)**: Convierte la frecuencia de la nota en una señal de onda cuadrada.
2. **Secuenciador de Notas (`secuencia_notas`)**: Define las frecuencias de las notas musicales y la secuencia de la melodía.
3. **Módulo Principal (`caja_musical`)**: Controla la reproducción de la melodía, maneja las señales de control de reset y stop.


## Simulación

Se utilizó un testbench (`caja_musical_tb.v`) para generar una señal de reloj y simular el funcionamiento del diseño. La simulación se visualizó por medio de GTKWave.


## Instrucciones para reproducir el proyecto

1. **Hardware necesario**:
   - FPGA EDU-CIAA-FPGA o similar.
   - Speaker Parlante Motherboard Pc.
   - Resistencia para conexión del parlante.

2. **Software Necesario**:
   - VSCode + extensiones Verilog.
   - GTKWave para la simulación.

3. **Pasos**:
   1. **Configurar entorno y descargar el proyecto**:
      - Configurar el entorno de desarrollo (VSCode + extensiones Verilog + GTKWave). Video explicación (Linux): 
      - Descargar los archivos Verilog del repositorio.
   3. **Simular el Diseño**:
      - Ejecutar el testbench (`caja_musical_tb.v`) en el simulador.
      - Visualizar los resultados con GTKWave para verificar el funcionamiento.
   4. **Programar la FPGA**:
      - Configurar la melodía deseada en el archivo `secuencia_notas.v`. Se deben proporcionar las frecuencias de las melodías deseadas.
      - Conectar la FPGA a la PC junto con el speaker y programarla.
   5. **Ejecutar la Melodía**:
      - Ejecutar el programa en la FPGA y verificar que se reproduce la melodía deseada.

Para más información, consulte el [documento del proyecto](file-DTyruR853kCZPd6iruzJp0Z5).
