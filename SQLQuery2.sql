create view VentasPorRegion
as
select [Nombre]
      ,[Plataforma]
      ,[Año]
      ,[Genero]
      ,[Editorial]
      ,[Ventas NA] as Norteamerica
      ,[Ventas EU] as Europa
      ,[Ventas JP] as Japon
      ,[Ventas Otros] as Otros
	  from ventaDeVideoJuegos
	  ;
DROP view VentasPorRegion

SELECT * from ventasporregion

SELECT nombre, plataforma, año, genero, editorial from
(SELECT nombre, plataforma, año, genero editorial, [Norteamerica], [Europa], [Japon], [Otros] 
from VentasPorRegion)
unpivot
(Plataforma for año in (Norteamerica], [Europa], [Japon], [Otros] )
)as Unpivit