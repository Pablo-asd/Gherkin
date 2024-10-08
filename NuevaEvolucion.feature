Feature: Agregar nueva evolucion clinica

"Como medico quiero poder agregar una nueva evolucion clinica 
para dar seguimiento al paciente"


Scenario: Agregar Evolucion
    Given la busqueda del paciente con su Historia Clinica 
    When  el medico selecciona el boton "Agregar Evolucion" 
    Then  se mostrara los diagnosticos previos del paciente 

Scenario: No existen diagnosticos previos
   Given la busqueda del paciente con su Historia Clinica 
   And el paciente es atendido por primera vez
   When  el medico selecciona el boton "Agregar Evolucion" 
   Then el sistema mostrara un mensaje indicando que el paciente no tiene diagnosticos previos
   And el sistema permitira agregar nuevo diagnostico
    