Feature: Visualización de terapia personalizada

Como usuario, deseo tener una 
terapia personalizada para 
mejorar mi estado físico.

Criterio de Aceptación #1
    Scenario: Usuario visualiza su terapia personalizada

    Given el usuario cuenta con una sesión iniciada con el rol de paciente
    When abre la sección "Mi terapia"
    Then se muestra la vista de la terapia con los siguientes datos: Título de la terapia, descripción y el fisioterapeuta a cargo.
    And una línea de tiempo con días calendario con la sección de "Actividades por día".

Criterio de Aceptación #2
    Scenario: Usuario visualiza las actividades de un día

    Given el usuario se encuentra en la sección "Mi terapia"
    And se presenta la línea de tiempo
    When selecciona un día en la línea de tiempo
    Then se presentan los videos de ejercicios asignados para esa fecha o, en caso contrario, la información de una cita presencial agendada para ese día.