Feature: Muestra y Selección de diagnosticos

"Como medico quiero visualizar y seleccionar los diagnosticos 
previos del paciente para darle seguimiento en 
su Historia Clinica"

Scenario: Seleccion de diagnostico previo
   Given que se muestra un listado de diagnosticos del paciente 
   When  el medico selecciona un diagnostico 
   Then  se iniciara la carga de la evolucion clinica del paciente 

Scenario: Agregar nuevo diagnostico
   Given que no existe el diagnostico deseado en la listado de diagnostico del paciente
   When  el medico selecciona el boton "Agregar nuevo diagnostico"
   And visualiza un listado de diagnosticos del CIE-10
   And selecciona un diagnostico
   Then el sistema asociara el diagnostico con la historia clinica del paciente

