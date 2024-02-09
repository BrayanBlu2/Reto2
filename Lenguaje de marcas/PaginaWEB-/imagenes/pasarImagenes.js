const imagenes1 = ["/imagenes/piscina/piscina.jpg", "/imagenes/piscina/piscina2.jpg", "/imagenes/piscina/piscinaChico.jpg", "/imagenes/piscina/piscinaDesbordante.jpg"];
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


const imagenes2 = ["/imagenes/gimnasio/giman.jpg", "/imagenes/gimnasio/gimnasio1.jpg", "/imagenes/gimnasio/gimnasio2.jpg", "/imagenes/gimnasio/gimnasio3.jpg", "/imagenes/gimnasio/gimnasio4.jpg", "/imagenes/gimnasio/gimnasio5.jpg","/imagenes/gimnasio/gimnasio6.jpg"];
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

const imagenes3 = ["/imagenes/restaurante/restaurante2.jpg", "/imagenes/restaurante/restaurante3.jpg",  "/imagenes/restaurante/restaurante4.jpg", "/imagenes/restaurante/restaurante5.jpg", "/imagenes/restaurante/restaurante_desayuno.jpg"];
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

