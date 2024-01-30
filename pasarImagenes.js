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



