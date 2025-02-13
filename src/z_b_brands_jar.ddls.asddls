@AbapCatalog.sqlViewName: 'ZV_BRANDS_JAR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
@Metadata.ignorePropagatedAnnotations: true
define view Z_B_BRANDS_jar
  as select from zrent_brands_jar
{
  key marca as Marca,
      @UI.hidden: true
      url   as Imagen
}
