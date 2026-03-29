-- 1.Ver todos los clientes:

SELECT * FROM Cliente;


-- 2.Ver eventos con limpieza solicitada:

SELECT * FROM Evento
WHERE limpieza = true;


-- 3.Contar cuántas reservas hay:

SELECT COUNT(*) AS total_reservas
FROM Reserva;


-- 4.Eventos futuros ordenados;

SELECT * FROM Evento
ORDER BY fecha_evento ASC;


-- 5.Buscar eventos por tipo:

SELECT * 
FROM Evento
WHERE tipo LIKE '%cumpleaños%'


-- 6.Ver pagos con datos del cliente:

SELECT p.id_pago, p.importe, p.estado, c.nombre
FROM Pago p 
JOIN Cliente c ON p.id_cliente = c.id_cliente


-- 7.Ver reservas con su pago:

SELECT r.id_reserva, r.fecha_reserva, p.importe
FROM Reserva r 
JOIN Pago p ON r.id_pago = p.id_pago;


-- 8.Ver clientes con pago pendiente:

SELECT c.nombre, p.importe
FROM Cliente c
JOIN Pago p ON c.id_cliente = p.id_cliente
WHERE p.estado = 'pendiente';

-- 9.Clientes con pagos superiores a la media:

SELECT nombre
FROM Cliente
WHERE id_cliente IN (
    SELECT id_cliente
    FROM Pago
    WHERE importe > (SELECT AVG(importe) FROM Pago)
);

-- 10.Clientes que tienen un evento tipo "taller infantil":

SELECT nombre, apellidos, email
FROM Cliente
WHERE id_cliente IN (
    -- Esta es la subconsulta: busca IDs de clientes con talleres infantiles
    SELECT p.id_cliente
    FROM Pago p
    JOIN Reserva r ON p.id_pago = r.id_pago
    JOIN Evento e ON r.id_reserva = e.id_reserva
    WHERE e.tipo = 'taller infantil'
);


