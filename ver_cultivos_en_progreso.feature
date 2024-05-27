Feature: Ver_cultivos_en_progreso


  Scenario: Técnico supervisor visualiza cultivo satisfactoriamente
    Given el técnico supervisor desea visualizar una siembra existente
    When acceda a la lista de cultivos en curso
    Then el sistema muestra la información registrada para el cultivo seleccionado

  Scenario: Usuario no puede visualizar cultivo
    Given el técnico supervisor desea visualizar una siembra existente
    When el sistema entre en un estado de error la momento de visualizar la lista de cultivos en curso
    Then indica el error generado y se cancela la operación
