Feature: Crear_nuevo_cultivo


  Scenario: Tecnico supervisor crea un cultivo nuevo satisfactoriamente
    Given el técnico supervisor desea comenzar una nueva siembra
    When confirme su intención
    Then se registra la información del nuevo cultivo en la base de datos de la aplicación

  Scenario: Tecnico supervisor cancela creacion de nuevo cultivo
    Given el técnico supervisor intenta crear una nueva siembra
    When cancele la operación
    Then el sistema revierte la operación y cancela la creación de un nuevo cultivo

  Scenario: El sistema impide la creacion de un nuevo cultivo
    Given el técnico supervisor intente comenzar una nueva siembra
    When el sistema entre en un estado de error que imposibilite la creación
    Then cancela la operación e indica el error generado
