// Datos del menú
const menuItems = [
  { item: "Café Americano", price: "$2.00" },
  { item: "Café Latte", price: "$3.50" },
  { item: "Capuchino", price: "$4.00" },
  { item: "Té Verde", price: "$1.50" },
  { item: "Té Negro", price: "$1.50" },
  { item: "Muffin de Arándanos", price: "$2.50" },
  { item: "Sándwich de Jamón y Queso", price: "$5.00" },
  { item: "Ensalada César", price: "$6.00" },
  { item: "Agua Mineral", price: "$1.00" },
  { item: "Jugo de Naranja Natural", price: "$3.00" },
];

// Obtener el cuerpo de la tabla
const tbody = document.querySelector("#menu tbody");

// Generar las filas de la tabla con los datos del menú
menuItems.forEach((menuItem) => {
  const row = document.createElement("tr");
  row.innerHTML = `
        <td>${menuItem.item}</td>
        <td>${menuItem.price}</td>
    `;
  tbody.appendChild(row);
});
