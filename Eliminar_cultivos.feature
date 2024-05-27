Feature: Eliminar cultivos


  Scenario: Administrador borra cultivo
    Given el administrador desee eliminar un cultivo
    When confirme su intención de borrar los datos
    Then el sistema eliminará de la base de datos toda la información almacenada por ese cultivo

  Scenario: Administrador decide no borrar cultivo
    Given el administrador desee eliminar un cultivo
    When niegue su intención de borrar los datos
    Then el sistema desaparecerá el pop up y no se eliminará la información del cultivo
