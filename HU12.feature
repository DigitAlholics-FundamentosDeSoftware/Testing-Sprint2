Feature: Visualización de citas médicas

Como fisioterapeuta, deseo visualizar 
una lista de citas médicas para 
atenderlas en su fecha correspondiente.

Criterio de Aceptación #1
    Scenario: Usuario visualiza sus citas médicas

    Given el usuario cuenta con una sesión iniciada con el rol de fisioterapeuta
    When abre la sección "Mis citas médicas"
    Then el sistema presenta una lista con todas las citas médicas que tiene
    And por cada cita se presenta: Nombre del paciente, tópico de la cita, fecha y hora de la cita.

Criterio de Aceptación #2
    Scenario: Usuario visualiza una cita médica

    Given el usuario se encuentra en la sección "Mis citas médicas"
    And selecciona una cita médica de la lista
    Then se presentan los siguientes campos: Nombre del paciente, tópico de la cita, fecha y hora, campo de "Diagnóstico" y el botón "Enviar Diagnóstico"

Criterio de Aceptación #3
    Scenario: Usuario no encuentra citas médicas

    Given el usuario cuenta con una sesión iniciada con el rol de fisioterapeuta
    And no tiene citas médicas
    When abre la sección "Mis citas médicas"
    Then se presenta el mensaje: "No tiene citas por el momento" en pantalla.