Feature: Confirmacion de evolucion
    "Como medico quiero confirmar la carga de datos de la evolucion para vincularlos 
    a la Historia Clinica del paciente"

    Scenario: Carga de evolucion clinica exitosa
    Given que se completa la carga de datos de la evolucion clinica
    When  el medico presione el boton "Guardar Evolucion"
    Then  el sistema almacenara los datos de la evolucion clinica  del paciente
    And   el sistema mostrara un mensaje en pantalla indicando que la carga fue exitosa

    Scenario: Carga de evolucion clinica fallida
    Given que se completa la carga de datos de la evolucion clinica
    When  el medico presione el boton "Guardar Evolucion"
    Then  el sistema mostrara un mensaje en pantalla indicando que no puede conectarse con el servidor

    
    
