calificar = () ->
   this.iniciar = () ->
      this.agregarItem();
      this.eliminarItem();
   this.agregarItem = () ->
      $("#boton_agregar").click ->
         nombre = $("#nombre").val();
         calificacion = $("#calificacion").val();
         item = '';
         item += '<tr>';
         item += '<td style="text-align: center"> ' + nombre + ' </td>';
         item += '<td style="text-align: center"> ' + calificacion + ' </td>';
         item += '<td style="text-align: center"> <a class="eliminar_item" href="javascript:void(0)"> Eliminar </a> </td>';
         item += '</tr>';
         $("#lista").append(item);
         $("#nombre").val("");
         $("#calificacion").val("");
   this.eliminarItem = () ->
      $("#lista").delegate(".eliminar_item", "click", ->
         $(this).parents("tr").remove();
      );
   return this.iniciar();
$(document).ready ->
   calificar();