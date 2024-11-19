Feature: Obtener_notificaciones

Scenario: Notificación cultivo creado
    Given un técnico supervisor de la empresa se encuentra autenticado en la aplicación
    When cree un nuevo cultivo
    Then el sistema enviará una notificación a los usuarios administradores

Scenario: Notificación cultivo eliminado
    Given un técnico supervisor de la empresa se encuentra autenticado en la aplicación
    When se elimine un cultivo
    Then el sistema enviará una notificación a los usuarios administradores

Scenario: Notificación cultivo editado
    Given un usuario a administrador de la empresa se encuentra autenticado en la aplicación
    When editen un cultivo pendiente de revisión
    Then el sistema enviará una notificación al usuario técnico supervisor que lo registró
    