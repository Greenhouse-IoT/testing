Feature: Adquirir_membresia

    Scenario: Usuario administrador de la aplicación adquire una membresía
        Given el usuario administrador acaba de registrarse en la aplicación
        When seleccione uno de los planes de membresía 
        And efectúe el pago
        Then el sistema asignará a su compañía el nivel de membresía correspondiente
    
    Scenario: Compañia portadora de membresía utiliza sus beneficios
        Given el usuario administrador ha adquirido una membresía diferente a la básica
        When cree un nuevo cultivo o registro
        Then el sistema permitirá superar los límites establecidos por defecto
    
    Scenario: Compañia con membresía básica supera los límites
        Given el usuario administrador no ha adquirido una membresía diferente a la básica
        When cree un nuevo cultivo o registro
        Then el sistema no le permitirá superar los límites de la membresía básica