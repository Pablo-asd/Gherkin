Feature: Evolucion clinica
    "Como medico quiero poder agregar una nueva evolucion clinica
    para dar seguimiento al paciente"


    Scenario: El medico crea una nueva Evolucion clinica
        Given el diagnostico de un paciente
        When  el medico decide crear una evolucion
        Then  se crea una nueva evolucion clinica asociada al diagnostico del paciente

    Scenario: El medico agrega un  nuevo pedido de laboratorio
        Given la evolucion clinica de un paciente
        When cuando el medico decide crear un pedido de laboratorio
        Then se crea el pedido de laboratorio
        And se asocia el pedido de laboratorio a la evolucion clinica

    
