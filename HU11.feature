Feature: Reservación de cita médica

Como usuario, deseo reservar una cita
 médica con un fisioterapeuta para que
  pueda evaluar mi condición física.

Criterio de Aceptación #1
    Scenario: Usuario reserva una cita médica

    Given el usuario se encuentra en la sección "Fisioterapeutas"
    When selecciona un fisioterapeuta de la lista
    Then el sistema presenta el perfil del fisioterapeuta con los campos: Nombre del fisioterapeuta, edad, número de pacientes en la aplicación, años de experiencia, costo por cita médica, especialización, centro de estudios, calendario de citas, el botón "Reseñas" y el botón "Agendar cita"

Criterio de Aceptación #2
    Scenario: Usuario accede al formulario de reserva de cita médica

    Given el usuario se encuentra en el perfil de un fisioterapeuta
    When presiona el botón "Agendar cita"
    Then el sistema presenta el formulario para la reserva de una cita médica

Criterio de Aceptación #3
    Scenario: Usuario completa la reserva de una cita médica

    Given el usuario se encuentra en el formulario para la reserva de una cita médica
    When completa los campos necesarios (tópico, fecha, hora)
    And presiona el botón "Pagar"
    Then el sistema registra los datos de la cita
    And redirige al usuario al formulario para la realización del pago por la cita

Criterio de Aceptación #4
    Scenario: Usuario realiza el pago de la cita médica

    Given el usuario se encuentra en el formulario para la realización del pago por la cita
    And el sistema presenta el costo de la cita en el campo "Costo"
    And presenta las opciones "Confirmar pago" y "Recordar tarjeta"
    When el usuario completa los campos de información de la tarjeta
    And presiona la opción "Recordar tarjeta"
    And luego presiona la opción "Confirmar Pago"
    Then se realiza el pago
    And se reserva la cita médica
    And se presenta el mensaje "Cita médica reservada con éxito"
    And se guardan los datos de la tarjeta