const imagenes1 = ["/fotoshotel/hotel.jpg", "/fotoshotel/piscina.jpg", "/fotoshotel/habitación2.jpg"];
let indiceActual1 = 0;

function cambiarImagenPiscina(direccion) {
  if (direccion === "anterior") {
    indiceActual1 = (indiceActual1 - 1 + imagenes1.length) % imagenes1.length;
  } else if (direccion === "siguiente") {
    indiceActual1 = (indiceActual1 + 1) % imagenes1.length;
  }

  const imagen = document.getElementById("imagenActual");
  imagen.src = imagenes1[indiceActual1];
}


const imagenes2 = ["/fotoshotel/giman.jpg", "/fotoshotel/gimnasio1.jpg", "/fotoshotel/gimnasio6.jpg", "/fotoshotel/gimnasio3.jpg", "/fotoshotel/gimnasio4.jpg", "/fotoshotel/gimnasio5.jpg"];
let indiceActual2 = 0;

function cambiarImagenGimnasio(direccion) {
  if (direccion === "anterior") {
    indiceActual2 = (indiceActual2 - 1 + imagenes2.length) % imagenes2.length;
  } else if (direccion === "siguiente") {
    indiceActual2 = (indiceActual2 + 1) % imagenes2.length;
  }

  const imagen = document.getElementById("imagenActual");
  imagen.src = imagenes2[indiceActual2];
}

const imagenes3 = ["/fotoshotel/hotel.jpg", "/fotoshotel/piscina.jpg", "/fotoshotel/habitación2.jpg"];
let indiceActual3 = 0;

function cambiarImagenRestaurante(direccion) {
  if (direccion === "anterior") {
    indiceActual3 = (indiceActual3 - 1 + imagenes3.length) % imagenes3.length;
  } else if (direccion === "siguiente") {
    indiceActual3 = (indiceActual3 + 1) % imagenes3.length;
  }

  const imagen = document.getElementById("imagenActual");
  imagen.src = imagenes3[indiceActual3];
}

