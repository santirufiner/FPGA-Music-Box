# FPGA-Music-Box
Implementación de una caja musical programable en FPGA utilizando Verilog (HDL) para la asignatura de Eléctronica Digital correspondiente a la carrera de Ingeniería en Informática (FICH-UNL).

Integrantes:

- Mora, Nicolás Alberto
- Rufiner, Santiago

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
      - Configurar el entorno de desarrollo (VSCode + extensiones Verilog + GTKWave). Video explicación [acá](https://www.youtube.com/watch?v=vVqsil4rw-c) (Linux). 
      - Descargar los archivos Verilog del repositorio (Carpeta `Codigo completo`).
   3. **Simular el Diseño**:
      - Ejecutar el testbench (`caja_musical_tb.v`) en el simulador.
      - Visualizar los resultados con GTKWave para verificar el funcionamiento.
   4. **Programar la FPGA**:
      - Configurar la melodía deseada en el archivo `secuencia_notas.v`. Se deben proporcionar las frecuencias de las melodías deseadas.
      - Conectar la FPGA a la PC junto con el speaker y programarla.
   5. **Ejecutar la Melodía**:
      - Ejecutar el programa en la FPGA y verificar que se reproduce la melodía deseada.

Para más información, consulte el [documento del proyecto](https://github.com/santirufiner/FPGA-Music-Box/blob/2a8c2d1b2daff52bd1a93cb3abac4e6929518e1f/Mora%2C%20Rufiner%20-%20TFI%20ED%202024%20-%20Dise%C3%B1o%20e%20implementaci%C3%B3n%20de%20una%20caja%20musical%20programable%20en%20FPGA.pdf).
