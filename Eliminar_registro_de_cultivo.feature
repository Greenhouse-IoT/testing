Feature: Eliminar registro de cultivo


  Scenario: Eliminar Registro
    Given el administrador desea borrar un registro existente
    When seleccione un registro específico para borrar
    Then el sistema eliminará permanentemente el registro seleccionado

  Scenario: Cancelar Eliminación de Registro
    Given el administrador se encuentre intentando eliminar un registro
    When cancele la operación
    Then el sistema no eliminará el registro y mantendrá su integridad
