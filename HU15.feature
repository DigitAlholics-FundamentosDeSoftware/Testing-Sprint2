Feature: Visualización de los resultados de la consulta

Como usuario, deseo poder ver
 el diagnóstico de mi cita 
 médica para conocer los 
 resultados de la consulta.

Criterio de Aceptación #1
    Scenario: Usuario visualiza los resultados de su cita médica

    Given el usuario se encuentra en la sección "Mis citas médicas"
    And el sistema presenta todas las citas que ha realizado
    When selecciona una cita de la lista
    Then el sistema presenta el nombre del fisioterapeuta con quien se llevó la cita, el tópico de la cita, la fecha y hora de la cita y el diagnóstico de la cita médica.

Criterio de Aceptación #2
    Scenario: Usuario no ha realizado citas médicas

    Given el usuario se encuentra en la sección "Mis citas médicas"
    And el usuario no ha realizado citas médicas
    Then se presenta el mensaje: "Todavía no ha tenido citas médicas" en pantalla.