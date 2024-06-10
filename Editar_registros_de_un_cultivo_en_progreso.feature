Feature: Editar registros de un cultivo en progreso


  Scenario: Registro editado correctamente
    Given el administrador desee editar un registro
    When realice las modificaciones necesarias en los datos del registro
    Then el sistema actualizará el registro con la información editada

  Scenario: Error al editar registro
    Given el administrador desee editar un registro
    When realice modificaciones en los datos del registro, pero el sistema entre en un estado de error
    Then se indicará que la información no pudo ser procesada y se mostrará un mensaje de error
