@AbapCatalog.sqlViewName: 'ZV_DET_CUSTL_JAR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Details costumers'
@Metadata.allowExtensions: true
define view z_b_det_costumer_jar
  as select from zrent_custom_jar
{
  key doc_id       as Id,
  key matricula    as Matricula,
      fecha_inicio as FechaInicio,
      fecha_hasta  as FechaHasta,
      nombres      as Nombres,
      apellidos    as Apellidos,
      email        as Email,
      cntr_type    as TipoContrato
}
