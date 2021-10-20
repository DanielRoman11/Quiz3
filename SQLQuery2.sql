create view VentasPorRegion
as
select [Nombre]
      ,[Plataforma]
      ,[A�o]
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

SELECT nombre, plataforma, a�o, genero, editorial from
(SELECT nombre, plataforma, a�o, genero editorial, [Norteamerica], [Europa], [Japon], [Otros] 
from VentasPorRegion)
unpivot
(Plataforma for a�o in (Norteamerica], [Europa], [Japon], [Otros] )
)as Unpivit