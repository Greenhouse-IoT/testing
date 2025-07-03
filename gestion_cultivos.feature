Feature: Gestionar la Información del Cultivo en el Sistema Edge
  Como técnico supervisor, quiero poder actualizar la fase de mi cultivo
  para que el sistema ajuste los parámetros de control automáticamente.

  Scenario: Actualización exitosa de la fase del cultivo
    Given un técnico ha iniciado un nuevo cultivo con el ID "Fungi-C01"
    When el técnico envía una solicitud para actualizar la fase del cultivo a "incubation"
    Then el sistema debe persistir que la fase actual para el cultivo "Fungi-C01" es "incubation"
    And el sistema debe responder con un mensaje de éxito y la información actualizada.

  Scenario: Falla al actualizar la información del cultivo por datos incompletos
    Given un técnico intenta actualizar la información de un cultivo
    When el técnico envía una solicitud con un ID de cultivo pero sin especificar la "phase"
    Then el sistema debe rechazar la solicitud
    And responder con un error 400 indicando que falta el campo 'phase'.

  Scenario: Un dispositivo de sensores consulta un cultivo no configurado
    Given el sistema aún no ha recibido información de ningún cultivo activo
    When un dispositivo de sensores envía una lectura
    Then el sistema registrará la lectura pero no ejecutará acciones de control
    And el sistema advertirá en los logs que no hay un cultivo activo.