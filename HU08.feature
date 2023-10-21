Feature: Visualización de fisioterapeutas

Como usuario, deseo visualizar una 
lista de fisioterapeutas para poder 
encontrar un profesional de la salud 
con quien reservar una cita médica.

Criterio de Aceptación #1
    Scenario: Usuario visualiza la lista de fisioterapeutas

    Given el usuario cuenta con una sesión iniciada con el rol de paciente
    When presiona la sección "Fisioterapeutas"
    Then se presenta la lista de fisioterapeutas
    And por cada fisioterapeuta se muestran los siguientes datos: Nombre, especialización, cantidad de pacientes y foto de perfil.