# Archivo: procesamiento_sensores.feature

Feature: Procesamiento de Datos de Sensores y Control de Actuadores
  Como sistema de control del invernadero, necesito procesar las lecturas de los sensores
  para tomar decisiones y enviar comandos a los actuadores que regulan el ambiente.

  Scenario: Autenticación fallida de un dispositivo de sensores
    Given un dispositivo no autorizado intenta comunicarse con el sistema
    When el dispositivo envía una lectura de sensores con una "X-API-Key" inválida
    Then el sistema debe rechazar la conexión con un error de autenticación 401
    And los datos de los sensores no deben ser procesados ni enviados a los actuadores.

  Scenario: Lecturas de sensores dentro de los umbrales correctos
    Given un cultivo activo se encuentra en la fase de "induction"
    And un dispositivo ESP32 autenticado envía lecturas de los sensores
    When el dispositivo envía una lectura con valores de temperatura, humedad y CO2 dentro de los rangos definidos para "induction"
    Then el sistema debe determinar que no se requieren ajustes ("=") para ningún parámetro
    And enviar un comando al actuador indicando que el servo no debe activarse.

  Scenario: Lecturas de sensores por debajo del umbral mínimo
    Given un cultivo activo se encuentra en la fase de "incubation"
    And un dispositivo ESP32 autenticado envía lecturas de los sensores
    When el dispositivo envía una lectura con una temperatura inferior al mínimo requerido
    Then el sistema debe determinar que se necesita una acción de incremento ("+") para la temperatura
    And enviar un comando al actuador para que el servo se active y corrija la condición.

  Scenario: Lecturas de sensores por encima del umbral máximo
    Given un cultivo activo se encuentra en la fase de "casing"
    And un dispositivo ESP32 autenticado envía lecturas de los sensores
    When el dispositivo envía una lectura con un nivel de CO2 superior al máximo permitido
    Then el sistema debe determinar que se necesita una acción de decremento ("-") para el CO2
    And enviar un comando al actuador para que el servo se active y corrija la condición.