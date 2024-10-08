Feature: Escribir Evolucion del paciente
"Como medico quiero escribir una evolucion del paciente para dar seguimiento al diagnostico "

Scenario: Evolucion sin receta medica y sin pedido de laboratorio
   Given  la seleccion de un diagnostico
   And    la visualizacion de un cuadro de texto libre
   When   el medico selecciona el cuadro de texto
   And    redacta la evolucion clinica del paciente 
   Then   el sistema debera vincular los datos de la evolucion con el diagnostico 

Scenario: Evolucion con receta medica y con pedido de laboratorio
   Given  la seleccion de un diagnostico
   And    la visualizacion de una plantilla 
   When   cuando el medico selecciona una plantilla para la receta medica 
   And    el medico selecciona una plantilla para el pedido de laboratorio
   Then   el sistema debera vincular los datos de ambas plantillas con los datos de la evolucion

Scenario: Evolucion con receta medica y sin pedido de laboratorio
   Given  la seleccion de un diagnostico
   And    la visualizacion de una plantilla 
   When   cuando el medico selecciona una plantilla para la receta medica 
   Then   el sistema debera vincular los datos de la plantilla con los datos de la evolucion

Scenario: Evolucion sin receta medica y con pedido de laboratorio
   Given  la seleccion de un diagnostico
   And    la visualizacion de una plantilla 
   When   cuando el medico selecciona una plantilla para el pedido de laboratorio
   Then   el sistema debera vincular los datos de ambas plantillas con los datos de la evolucion

Scenario: Cancelar evolucion
   Given  la redaccion de la evolucion clinica del paciente
   When   el medico selecciona el boton "Cancelar"
   Then   el sistema debera cancelar el proceso de carga 
   And    eliminar todos los datos asociados de la evolucion clinica en la plantilla