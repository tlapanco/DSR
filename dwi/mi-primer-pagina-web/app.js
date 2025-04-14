const tarjetas = document.getElementById('cards');

const colores = [
	'red',
	'orange',
	'blue',
	'cyan',
	'sky',
	'amber',
	'emerald',
	'fuchsia',
	'green',
	'indigo',
	'lime',
	'purple',
	'yellow'
]

const escalaColores = ['300', '400', '500', '600', '700', '800'];


//Obtiene un color aleatorio de tailwind a partir de los colores y escalas dadas
const getTailwindColor = () => {
	colorBase = colores[Math.floor(Math.random() * colores.length)];
	escalaColor = escalaColores[Math.floor(Math.random() * escalaColores.length)]
	return `${colorBase}-${escalaColor}`;
}

//crear una tarjeta para cada alumno con un color de fondo aleatorio
const crearTarjeta = (alumno) => {
	//color tarjeta
	const color = getTailwindColor();
	//Contenedor principal
	const li = document.createElement("li");
	li.className = "text-white rounded-lg p-4 flex place-content-between hover:scale-105 hover:shadow-xl hover:shadow-gray-600 cursor-pointer transform transition duration-300";
	li.classList.add(`bg-${color}`);	
	//título
	const h2 = document.createElement("h2");
	h2.className = "text-xl font-bold mb-2";
	h2.textContent = alumno.nombre;
	//botón
	const boton = document.createElement("a");
	boton.className ="bg-white px-3 py-1 rounded-full hover:animate-pulse";
	boton.classList.add(`text-${color}`)
	boton.textContent = "Ver..";
	boton.href = `./${alumno.carpeta}`

	li.appendChild(h2);
	li.appendChild(boton);

	return li;
}

const alumnos = [
	{
		nombre: 'Marilyn',
		carpeta: 'marilyn/trabajo1Mayn.html'
	},
]



//Creamos las tarjetas y las agregamos a la lista
alumnos.map( alumno => {
	tarjetas.appendChild(crearTarjeta(alumno));
})