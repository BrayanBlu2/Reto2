const imagenes = ["/fotoshotel/hotel.jpg", "/fotoshotel/piscina.jpg", "/fotoshotel/habitación2.jpg"];
let indiceActual = 0;

function cambiarImagen(direccion) {
  if (direccion === "anterior") {
    indiceActual = (indiceActual - 1 + imagenes.length) % imagenes.length;
  } else if (direccion === "siguiente") {
    indiceActual = (indiceActual + 1) % imagenes.length;
  }

  const imagen = document.getElementById("imagenActual");
  imagen.src = imagenes[indiceActual];
}

function verificarFormularioReserva() {
  // Obtener los valores de los campos del formulario 1
  var Fecha = document.getElementById("Fecha").value;

  // Verificar si todos los campos del formulario 1 están llenos
  if (Fecha.trim() !== "") {
    // Habilitar el formulario 2 para su envío
    document.getElementById("formulariocliente").addEventListener("submit", function () {
      alert("Formulario 1 lleno. Enviando Formulario 2.");
    });
  } else {
    // Mostrar un mensaje de error si el formulario 1 no está completamente lleno
    alert("Por favor, complete todos los campos del Formulario 1 antes de enviar el Formulario 2.");
  }
}

