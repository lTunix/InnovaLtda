var img, canvas, context;

function SubirImagen()
{
    canvas = document.getElementById("canvas");
    context = canvas.getContext("2d");

    canvas.width = 700;
    canvas.height = 500;

    // Cargamos el objeto que nos permite subir imagenes
    var imagen = document.getElementById("imagen");
    if (imagen.files.length == 0)
    {
        alert('Debe ingresar una imagen');
        return;
    }

    // Creamos la imagen
    img = new Image();
    img.src = URL.createObjectURL(imagen.files[0]);

    img.onload = function () {
        // Dibujamos la imagen
        context.drawImage(img, 0, 0, canvas.width, canvas.height);
    };
    // Mostramos el canvas
    document.getElementById("imagenPerfil").style.display = 'block';
}


