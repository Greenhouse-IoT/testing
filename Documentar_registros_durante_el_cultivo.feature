Feature: Documentar registros durante el cultivo


  Scenario: Técnico supervisor ingresa todos los datos correctamente
    Given el técnico supervisor se encuentra autenticado
    And se encuentre dentro de un cultivo en progreso
    When ingrese todos los datos correspondientes a la fase actual del registro
    And se valide que sean datos dentro de los rangos establecidos
    Then el sistema guardará el registro y se actualizará en la tabla.

  Scenario: Técnico supervisor ingresa datos no válidos
    Given el técnico supervisor se encuentra autenticado
    And se encuentre dentro de un cultivo en progreso
    When ingrese todos los datos correspondientes a la fase actual del registro
    And los datos no pasan la validación según los rangos establecidos
    Then el sistema no guardará el registro y alertará al técnico de que el dato ingresado es incorrecto.
