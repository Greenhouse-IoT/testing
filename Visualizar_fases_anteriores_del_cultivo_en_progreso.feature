Feature: Visualizar fases anteriores del cultivo en progreso


  Scenario: Ver fase anterior
    Given el administrador/técnico supervisor desea visualizar una fase anterior del cultivo en progreso.
    When el técnico supervisor o administrador seleccione la opción de regresar
    Then pasará a ver la fase anterior a la actual.

  Scenario: No hay fase anterior a Formula
    Given el administrador/técnico supervisor desea visualizar la fase anterior del cultivo en progreso
    And esta se encuentre en la fase Formula
    When el técnico supervisor o administrador quiera regresar a una fase anterior.
    Then no podrá hacerlo al no estar habilitado el botón.
