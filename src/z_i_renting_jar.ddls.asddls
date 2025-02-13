@AbapCatalog.sqlViewName: 'ZV_RENTL_JAR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'renting'
@Metadata.allowExtensions: true
define view z_i_renting_jar
  as select from z_b_cars_jar as Cars
  association [1]    to z_b_rem_days_jarr    as _RemDays      on Cars.Matricula = _RemDays.Matricula
  association [0..*] to Z_B_BRANDS           as _Brands       on Cars.Marca = _Brands.Marca
  association [0..*] to z_b_det_costumer_jar as _Det_Customer on Cars.Matricula = _Det_Customer.Matricula
{
  key Matricula,
      Marca,
      Modelo,
      Color,
      Motor,
      Potencia,
      UndPotencia,
      Combustible,
      Consumo,
      FechaFabr,
      Puertas,
      Precio,
      Moneda,
      Alquilado,
      AlqDesde,
      AlqHasta,
// 0 neutral grey
// 1 negative red
// 2 critical yellow
// 3 positive green
      case
      when _RemDays.Dias <= 0 then 0
      when _RemDays.Dias between 1 and 30 then 1
      when _RemDays.Dias between 31 and 100 then 2
      when _RemDays.Dias > 100 then 3
      else 0
      end as TiempoRenta,
      '' as Estado,
      _Brands.Imagen,
      _Det_Customer

}
