-- Pacientes
INSERT INTO "Pacientes" ("Nombre", "Apellido", "FechaNacimiento", "Genero", "Direccion", "NumeroTelefono", "Correo", "FechaRegistro") VALUES
('Juan', 'Pérez', '1985-05-15', 'Masculino', 'Calle Falsa 123', '555-1234', 'juan.perez@example.com', '2023-01-10'),
('María', 'Gómez', '1990-08-22', 'Femenino', 'Avenida Siempre Viva 456', '555-5678', 'maria.gomez@example.com', '2023-02-15'),
('Carlos', 'López', '1978-03-30', 'Masculino', 'Calle Luna 789', '555-8765', 'carlos.lopez@example.com', '2023-03-20')
('Lucía', 'Fernández', '1995-07-12', 'Femenino', 'Calle Sol 321', '555-4321', 'lucia.fernandez@example.com', '2023-04-05'),
('Pedro', 'Díaz', '1982-11-25', 'Masculino', 'Avenida Libertad 654', '555-9876', 'pedro.diaz@example.com', '2023-05-10'),
('Elena', 'Ruiz', '1975-09-18', 'Femenino', 'Calle Estrella 987', '555-6543', 'elena.ruiz@example.com', '2023-06-15');



-- Doctores
INSERT INTO "Doctores" ("Nombre", "Apellido", "Especialidad", "NumeroTelefono", "Correo", "FechaContratacion") VALUES
('Ana', 'Martínez', 'Cardiología', '555-1111', 'ana.martinez@example.com', '2020-06-01'),
('Luis', 'Rodríguez', 'Pediatría', '555-2222', 'luis.rodriguez@example.com', '2019-09-15'),
('Sofía', 'Hernández', 'Dermatología', '555-3333', 'sofia.hernandez@example.com', '2021-04-10'),
('Marta', 'Gutiérrez', 'Oncología', '555-4444', 'marta.gutierrez@example.com', '2018-03-12'),
('Javier', 'Sánchez', 'Neurología', '555-5555', 'javier.sanchez@example.com', '2017-07-22'),
('Carmen', 'López', 'Ginecología', '555-6666', 'carmen.lopez@example.com', '2020-11-30');

-- Habitaciones
INSERT INTO "Habitaciones" ("NumeroHabitacion", "TipoHabitacion", "Estado") VALUES
('101', 'Individual', 'Disponible'),
('102', 'Doble', 'Ocupada'),
('103', 'Suite', 'Mantenimiento'),
('104', 'Individual', 'Disponible'),
('105', 'Doble', 'Ocupada'),
('106', 'Suite', 'Disponible');


-- HabitacionesPacientes
INSERT INTO "HabitacionesPacientes" ("IDPaciente", "IDHabitacion", "FechaAdmision", "FechaAlta") VALUES
(1, 1, '2023-01-15', '2023-01-20'),
(2, 2, '2023-02-20', NULL),
(3, 3, '2023-03-25', NULL),
(4, 4, '2023-04-10', '2023-04-15'),
(5, 5, '2023-05-12', NULL),
(6, 6, '2023-06-18', NULL);


-- Citas
INSERT INTO "Citas" ("IDPaciente", "IDDoctor", "FechaCita", "Razon", "Estado") VALUES
(1, 1, '2023-01-12 10:00', 'Dolor en el pecho', 'Completada'),
(2, 2, '2023-02-18 11:00', 'Control pediátrico', 'Pendiente'),
(3, 3, '2023-03-22 09:00', 'Erupción cutánea', 'Cancelada'),
(4, 4, '2023-04-08 14:00', 'Dolor de cabeza', 'Completada'),
(5, 5, '2023-05-15 16:00', 'Mareos frecuentes', 'Pendiente'),
(6, 6, '2023-06-20 10:00', 'Consulta ginecológica', 'Cancelada');

-- Diagnosticos
INSERT INTO "Diagnosticos" ("IDPaciente", "IDDoctor", "FechaDiagnostico", "Enfermedad", "Prescripcion") VALUES
(1, 1, '2023-01-12', 'Hipertensión', 'Tomar medicación diaria'),
(2, 2, '2023-02-18', 'Gripe', 'Reposo y líquidos'),
(3, 3, '2023-03-22', 'Dermatitis', 'Crema hidratante'),
(4, 4, '2023-04-08', 'Migraña', 'Tomar analgésicos'),
(5, 5, '2023-05-15', 'Vértigo', 'Reposo y terapia'),
(6, 6, '2023-06-20', 'Infección urinaria', 'Antibióticos');

-- Alergias
INSERT INTO "Alergias" ("IDPaciente", "NombreAlergia", "AllergySeverity") VALUES
(1, 'Penicilina', 'Alta'),
(2, 'Polvo', 'Moderada'),
(3, 'Mariscos', 'Leve'),
(4, 'Aspirina', 'Moderada'),
(5, 'Polen', 'Alta'),
(6, 'Lácteos', 'Leve');


-- MedicacionHistorial
INSERT INTO "HistorialMedicacion" ("IDPaciente", "NombreMedicacion", "Dosis", "FechaInicio", "FechaFin") VALUES
(1, 'Paracetamol', '500mg', '2023-01-12', '2023-01-19'),
(2, 'Amoxicilina', '250mg', '2023-02-18', '2023-02-25'),
(3, 'Cetirizina', '10mg', '2023-03-22', '2023-03-29'),
(4, 'Ibuprofeno', '400mg', '2023-04-08', '2023-04-15'),
(5, 'Diazepam', '5mg', '2023-05-15', '2023-05-22'),
(6, 'Amoxicilina', '500mg', '2023-06-20', '2023-06-27');

-- Pagos
INSERT INTO "Pagos" ("IDPaciente", "FechaPago", "Monto", "MetodoPago") VALUES
(1, '2023-01-21', 150.00, 'Tarjeta'),
(2, '2023-02-25', 200.00, 'Efectivo'),
(3, '2023-03-30', 300.00, 'Transferencia'),
(4, '2023-04-16', 180.00, 'Tarjeta'),
(5, '2023-05-23', 220.00, 'Efectivo'),
(6, '2023-06-28', 350.00, 'Transferencia');

-- Enfermeras
INSERT INTO "Enfermeras" ("Nombre", "Apellido", "NumeroTelefono", "Correo", "IDDoctorAsignado", "FechaContratacion") VALUES
('Laura', 'García', '555-4444', 'laura.garcia@example.com', 1, '2022-07-01'),
('Pedro', 'Sánchez', '555-5555', 'pedro.sanchez@example.com', 2, '2021-11-15'),
('Ana', 'Morales', '555-7777', 'ana.morales@example.com', 4, '2022-09-10'),
('Miguel', 'Torres', '555-8888', 'miguel.torres@example.com', 5, '2021-12-20');


-- Equipamiento médico
INSERT INTO "EquipamientoMedico" ("NombreEquipo", "TipoEquipo", "Estado") VALUES
('Monitor cardíaco', 'Monitorización', 'Disponible'),
('Ventilador', 'Soporte vital', 'En uso'),
('Desfibrilador', 'Emergencia', 'Mantenimiento'),
  ('Bomba de infusión', 'Terapia', 'Disponible'),
('Monitor de presión', 'Monitorización', 'En uso'),
('Respirador', 'Soporte vital', 'Mantenimiento');

-- AsignacionesEquipamiento
INSERT INTO "AsignacionesEquipamiento" ("IDEquipo", "IDPaciente", "FechaAsignacion", "FechaDevolucion") VALUES
(1, 1, '2023-01-15', '2023-01-20'),
(2, 2, '2023-02-20', NULL),
(3, 3, '2023-03-25', NULL),
(4, 4, '2023-04-10', '2023-04-15'),
(5, 5, '2023-05-12', NULL),
(6, 6, '2023-06-18', NULL);

-- GruposApoyo
INSERT INTO "GruposApoyo" ("NombreGrupo", "Descripcion") VALUES
('Soporte cardíaco', 'Grupo para pacientes con problemas cardíacos'),
('Soporte pediátrico', 'Grupo para padres de niños con enfermedades crónicas'),
('Soporte oncológico', 'Grupo para pacientes con cáncer'),
('Soporte neurológico', 'Grupo para pacientes con trastornos neurológicos');

-- GruposApoyoPAcientes
INSERT INTO "GruposApoyoPacientes" ("IDPaciente", "IDGrupoApoyo", "FechaUnion") VALUES
(1, 1, '2023-01-25'),
(2, 2, '2023-02-28'),
(4, 3, '2023-04-20'),
(5, 4, '2023-05-25');

-- ResumenesAlta
INSERT INTO "ResumenesAlta" ("IDPaciente", "FechaAlta", "Resumen") VALUES
(4, '2023-04-15', 'Paciente estable, seguir tratamiento para migraña'),
(5, '2023-05-23', 'Paciente con vértigo, requiere seguimiento neurológico');

-- CuidadosUrgencia
INSERT INTO "CuidadosUrgencias" ("IDPaciente", "FechaAdmision", "FechaAlta", "Estado") VALUES
(4, '2023-04-10', '2023-04-15', 'Estable'),
(5, '2023-05-12', NULL, 'En tratamiento');

-- ContactosEmergencia
INSERT INTO "ContactosEmergencia" ("IDPaciente", "NombreContacto", "TelefonoContacto", "RelacionContacto") VALUES
(4, 'Carlos Fernández', '555-1111', 'Esposo'),
(5, 'Laura Díaz', '555-2222', 'Hermana');


-- Turnos personal
INSERT INTO "TurnosPersonal" ("IDPersonal", "TipoPersonal", "FechaTurno", "InicioTurno", "FinTurno") VALUES
(3, 'Enfermera', '2023-04-15', '08:00', '16:00'),
(4, 'Auxiliar', '2023-05-12', '12:00', '20:00');
