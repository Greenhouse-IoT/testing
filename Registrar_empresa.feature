Feature: Registrar empresa


  Scenario: Usuario ingresa credenciales válidas.
    Given el administrador desee crear una cuenta en la aplicación Greenhouse
    When ingrese las credenciales de una cuenta inexistente en la base de datos Greenhouse, una contraseña que cumple con todos los requisitos de seguridad y acepte los términos y condiciones de uso
    Then se creará la cuenta de empresa

  Scenario: Usuario ingresa credenciales incorrectas.
    Given el usuario desee crear una cuenta en la aplicación Greenhouse
    When ingrese una dirección de correo electrónico o contraseña que no cumplen con los requisitos especificados
    Then se le denegará la operación.
