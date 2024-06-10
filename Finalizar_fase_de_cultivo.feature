Feature: Finalizar fase de cultivo


  Scenario: Finalizar la fase de cultivo
    Given el técnico supervisor desea dar por culminada la fase actual del cultivo
    When el técnico supervisor seleccione la opción de finalizar fase
    And el usuario confirme su decisión
    Then se actualizará la fase del cultivo por la siguiente y se mostrará la pantalla correspondiente.

  Scenario: Técnico supervisor no decide finalizar cultivo
    Given el técnico supervisor desea dar por culminada la fase actual del cultivo
    When el técnico supervisor seleccione la opción de finalizar fase
    And seleccione cancelar
    Then se cerrará la pestaña emergente .

  Scenario: Técnico supervisor decide finalizar el cultivo
    Given el cultivo se encuentra en la fase de cosecha
    And el técnico supervisor desea dar por terminado el cultivo
    When el técnico supervisor seleccione la opción de finalizar cultivo
    And el técnico supervisor confirme su decisión
    Then se dará por finalizado el cultivo
    And pasará al histórico de cultivo
