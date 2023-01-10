/* Tipos de Aeropuerto */
insert into AIRUD.airport_type values('INTERNACIONAL');
insert into AIRUD.airport_type values('REGIONAL');

/* Tipos de Lugares */
insert into AIRUD.place_type values('PAI', 'PAIS');
insert into AIRUD.place_type values('PRO', 'PROVINCIA');
insert into AIRUD.place_type values('EST', 'ESTADO');
insert into AIRUD.place_type values('COM', 'COMUNIDAD');
insert into AIRUD.place_type values('ISL', 'ISLA');
insert into AIRUD.place_type values('DEP', 'DEPARTAMENTO');
insert into AIRUD.place_type values('CIU', 'CIUDAD');

/* Lugares */
insert into AIRUD.place values('CAN', 'PAI', NULL, 'Canadá');
insert into AIRUD.place values('ON', 'PRO', 'CAN', 'Ontario');
insert into AIRUD.place values('TORON', 'CIU', 'ON', 'Toronto');
insert into AIRUD.place values('QC', 'PRO', 'CAN', 'Qubec');
insert into AIRUD.place values('MONTR', 'CIU', 'QC', 'Montreal');
insert into AIRUD.place values('QUBEC', 'CIU', 'QC', 'Qubec');
insert into AIRUD.place values('COB', 'PRO', 'CAN', 'Columbia Británica');
insert into AIRUD.place values('VANCO', 'CIU', 'COB', 'Vancouver');
insert into AIRUD.place values('AB', 'PRO', 'CAN', 'Alberta');
insert into AIRUD.place values('CALGA', 'CIU', 'AB', 'Calgary');
insert into AIRUD.place values('EDMON', 'CIU', 'AB', 'Edmonton');

insert into AIRUD.place values('USA', 'PAI', NULL, 'Estados Unidos');
insert into AIRUD.place values('GA', 'EST', 'USA', 'Georgia');
insert into AIRUD.place values('ATLAN', 'CIU', 'GA', 'Atlanta');
insert into AIRUD.place values('CA', 'EST', 'USA', 'California');
insert into AIRUD.place values('LOSAN', 'CIU', 'CA', 'Los Ángeles');
insert into AIRUD.place values('SANFR', 'CIU', 'CA', 'San Francisco');
insert into AIRUD.place values('IL', 'EST', 'USA', 'Illinois');
insert into AIRUD.place values('CHICA', 'CIU', 'IL', 'Chicago');
insert into AIRUD.place values('TX', 'EST', 'USA', 'Texas');
insert into AIRUD.place values('DALLA', 'CIU', 'TX', 'Dallas');
insert into AIRUD.place values('CO', 'EST', 'USA', 'Columbis');
insert into AIRUD.place values('DENVE', 'CIU', 'CO', 'Denver');
insert into AIRUD.place values('NY', 'EST', 'USA', 'Nueva York');
insert into AIRUD.place values('NYORK', 'CIU', 'NY', 'Nueva York');
insert into AIRUD.place values('NEWAR', 'CIU', 'NY', 'Newark');
insert into AIRUD.place values('WA', 'EST', 'USA', 'Washington');
insert into AIRUD.place values('SEATT', 'CIU', 'WA', 'Seattle');
insert into AIRUD.place values('NV', 'EST', 'USA', 'Nevada');
insert into AIRUD.place values('VEGAS', 'CIU', 'NV', 'Las Vegas');
insert into AIRUD.place values('FL', 'EST', 'USA', 'Florida');
insert into AIRUD.place values('ORLAN', 'CIU', 'FL', 'Orlando');

insert into AIRUD.place values('MEX', 'PAI', NULL, 'México');
insert into AIRUD.place values('GR', 'EST', 'MEX', 'Guerrero');
insert into AIRUD.place values('ACAPU', 'CIU', 'GR', 'Acapulco');
insert into AIRUD.place values('AG', 'EST', 'MEX', 'Aguascalientes');
insert into AIRUD.place values('AGUCA', 'CIU', 'AG', 'Aguascalientes');
insert into AIRUD.place values('SO', 'EST', 'MEX', 'Sonora');
insert into AIRUD.place values('ALAMO', 'CIU', 'SO', 'Álamos');
insert into AIRUD.place values('CANAN', 'CIU', 'SO', 'Cananea');
insert into AIRUD.place values('MI', 'EST', 'MEX', 'Michoacán');
insert into AIRUD.place values('APATZ', 'CIU', 'MI', 'Apatzingán');
insert into AIRUD.place values('EM', 'EST', 'MEX', 'México');
insert into AIRUD.place values('ATIZA', 'CIU', 'EM', 'Atizapán');
insert into AIRUD.place values('BCS', 'EST', 'MEX', 'Baja California Sur');
insert into AIRUD.place values('CASLU', 'CIU', 'BCS', 'Cabo San Lucas');
insert into AIRUD.place values('CM', 'EST', 'MEX', 'Campeche');
insert into AIRUD.place values('CAMPE', 'CIU', 'CM', 'Campeche');
insert into AIRUD.place values('QR', 'EST', 'MEX', 'Quintana Roo');
insert into AIRUD.place values('CANCU', 'CIU', 'QR', 'Cancún');
insert into AIRUD.place values('CHETU', 'CIU', 'QR', 'Chetumal');
insert into AIRUD.place values('GT', 'EST', 'MEX', 'Guanajuato');
insert into AIRUD.place values('CELAY', 'CIU', 'GT', 'Celaya');

insert into AIRUD.place values('ARG', 'PAI', NULL, 'Argentina');
insert into AIRUD.place values('BA', 'EST', 'ARG', 'Buenos Aires');
insert into AIRUD.place values('BUEAI', 'CIU', 'BA', 'Buenos Aires');
insert into AIRUD.place values('CB', 'EST', 'ARG', 'Córdoba');
insert into AIRUD.place values('CORDB', 'CIU', 'CB', 'Córdoba');
insert into AIRUD.place values('SF', 'EST', 'ARG', 'Santa Fé');
insert into AIRUD.place values('ROSAR', 'CIU', 'SF', 'Rosario');
insert into AIRUD.place values('MZ', 'EST', 'ARG', 'Mendoza');
insert into AIRUD.place values('MENDO', 'CIU', 'MZ', 'Mendoza');
insert into AIRUD.place values('SA', 'EST', 'ARG', 'Salta');
insert into AIRUD.place values('SALTA', 'CIU', 'SA', 'Salta');

insert into AIRUD.place values('ESP', 'PAI', NULL, 'España');
insert into AIRUD.place values('BC', 'COM', 'ESP', 'Cataluña');
insert into AIRUD.place values('BARCE', 'CIU', 'BC', 'Barcelona');
insert into AIRUD.place values('MA', 'COM', 'ESP', 'Madrid');
insert into AIRUD.place values('MADRI', 'CIU', 'MA', 'Madrid');
insert into AIRUD.place values('MAG', 'COM', 'ESP', 'Málaga');
insert into AIRUD.place values('MALAG', 'CIU', 'MAG', 'Málaga');
insert into AIRUD.place values('PM', 'ISL', 'ESP', 'Islas Baleares');
insert into AIRUD.place values('PALMA', 'CIU', 'PM', 'Palma de Mallorca');
insert into AIRUD.place values('VL', 'COM', 'ESP', 'Valencia');
insert into AIRUD.place values('ALICA', 'CIU', 'VL', 'Alicante');
insert into AIRUD.place values('VALEN', 'CIU', 'VL', 'Valencia');
insert into AIRUD.place values('SV', 'COM', 'ESP', 'Andalucía');
insert into AIRUD.place values('SEVIL', 'CIU', 'SV', 'Sevilla');

insert into AIRUD.place values('COL', 'PAI', NULL, 'Colombia');
insert into AIRUD.place values('AX', 'DEP', 'COL', 'Quindío');
insert into AIRUD.place values('LATEB', 'CIU', 'AX', 'La Tebaida');
insert into AIRUD.place values('BQ', 'DEP', 'COL', 'Atlántico');
insert into AIRUD.place values('SOLED', 'CIU', 'BQ', 'Soledad');
insert into AIRUD.place values('BO', 'DEP', 'COL', 'Distrito Capital');
insert into AIRUD.place values('BOGOT', 'CIU', 'BO', 'Bogotá');
insert into AIRUD.place values('BG', 'DEP', 'COL', 'Santander');
insert into AIRUD.place values('LEBRI', 'CIU', 'BG', 'Lebrija');
insert into AIRUD.place values('CL', 'DEP', 'COL', 'Valle del Cauca');
insert into AIRUD.place values('PALMI', 'CIU', 'CL', 'Palmira');
insert into AIRUD.place values('CT', 'DEP', 'COL', 'Bolívar');
insert into AIRUD.place values('CARTA', 'CIU', 'CT', 'Cartagena');
insert into AIRUD.place values('CU', 'DEP', 'COL', 'Norte de Santander');
insert into AIRUD.place values('CUCUT', 'CIU', 'CU', 'Cúcuta');
insert into AIRUD.place values('LE', 'DEP', 'COL', 'Amazonas');
insert into AIRUD.place values('LETIC', 'CIU', 'LE', 'Leticia');
insert into AIRUD.place values('MD', 'DEP', 'COL', 'Antioquia');
insert into AIRUD.place values('RIONE', 'CIU', 'MD', 'Rionegro');
insert into AIRUD.place values('PE', 'DEP', 'COL', 'Risaralda');
insert into AIRUD.place values('PEREI', 'CIU', 'PE', 'Pereira');
insert into AIRUD.place values('RH', 'DEP', 'COL', 'La Guajira');
insert into AIRUD.place values('RIOHA', 'CIU', 'RH', 'Riohacha');
insert into AIRUD.place values('AD', 'DEP', 'COL', 'San Andrés y Providencia');
insert into AIRUD.place values('SANAS', 'CIU', 'AD', 'San Andrés');
insert into AIRUD.place values('SM', 'DEP', 'COL', 'Magdalena');
insert into AIRUD.place values('SANTA', 'CIU', 'SM', 'Santa Marta');

/* Aeropuertos */
insert into AIRUD.airport values('YYZ', 'TORON', 'INTERNACIONAL', 'Lester B. Pearson International Airport');
insert into AIRUD.airport values('YUL', 'MONTR', 'INTERNACIONAL', 'Montreal / Pierre Elliott Trudeau International Airport');
insert into AIRUD.airport values('YVR', 'VANCO', 'INTERNACIONAL', 'Vancouver International Airport');
insert into AIRUD.airport values('YYC', 'CALGA', 'INTERNACIONAL', 'Calgary International Airport');
insert into AIRUD.airport values('YEG', 'EDMON', 'INTERNACIONAL', 'Edmonton International Airport');
insert into AIRUD.airport values('YQB', 'QUBEC', 'INTERNACIONAL', 'Aeropuerto Internacional Jean-Lesage de Quebec');

insert into AIRUD.airport values('ATL', 'ATLAN', 'INTERNACIONAL', 'Aeropuerto Internacional Hartsfield-Jackson');
insert into AIRUD.airport values('LAX', 'LOSAN', 'INTERNACIONAL', 'Aeropuerto Internacional de Los Ángeles');
insert into AIRUD.airport values('ORD', 'CHICA', 'INTERNACIONAL', 'Aeropuerto Internacional OHare');
insert into AIRUD.airport values('DFW', 'DALLA', 'INTERNACIONAL', 'Aeropuerto Internacional de Dallas-Fort Worth');
insert into AIRUD.airport values('DEN', 'DENVE', 'INTERNACIONAL', 'Aeropuerto Internacional de Denver');
insert into AIRUD.airport values('JFK', 'NYORK', 'INTERNACIONAL', 'Aeropuerto Internacional John F. Kennedy');
insert into AIRUD.airport values('SFO', 'SANFR', 'INTERNACIONAL', 'Aeropuerto Internacional de San Francisco');
insert into AIRUD.airport values('SEA', 'SEATT', 'INTERNACIONAL', 'Aeropuerto Internacional de Seattle-Tacoma');
insert into AIRUD.airport values('LAS', 'VEGAS', 'INTERNACIONAL', 'Aeropuerto Internacional Harry Reid');
insert into AIRUD.airport values('MCO', 'ORLAN', 'INTERNACIONAL', 'Aeropuerto Internacional de Orlando');
insert into AIRUD.airport values('EWR', 'NEWAR', 'INTERNACIONAL', 'Aeropuerto Internacional Libertad de Newark');

insert into AIRUD.airport values('ACA', 'ACAPU', 'INTERNACIONAL', 'Aeropuerto Internacional de Acapulco');
insert into AIRUD.airport values('PIE', 'ACAPU', 'REGIONAL', 'Base Aérea No. 7 León González Pie de la Cuesta');
insert into AIRUD.airport values('AGU', 'AGUCA', 'REGIONAL', 'Aeropuerto Internacional de Aguascalientes');
insert into AIRUD.airport values('XAL', 'ALAMO', 'REGIONAL', 'Aeropuerto Nacional de Álamos');
insert into AIRUD.airport values('AZG', 'APATZ', 'REGIONAL', 'Aeropuerto Nacional Pablo L. Sidar');
insert into AIRUD.airport values('JJC', 'ATIZA', 'REGIONAL', 'Aeropuerto Nacional Jorge Jiménez Cantú');
insert into AIRUD.airport values('CSL', 'CASLU', 'INTERNACIONAL', 'Aeródromo Internacional de Cabo San Lucas');
insert into AIRUD.airport values('CPE', 'CAMPE', 'INTERNACIONAL', 'Aeropuerto Internacional de Campeche');
insert into AIRUD.airport values('CNA', 'CANAN', 'REGIONAL', 'Aeropuerto Nacional de Cananea');
insert into AIRUD.airport values('CUN', 'CANCU', 'INTERNACIONAL', 'Aeropuerto Internacional de Cancún');
insert into AIRUD.airport values('CYW', 'CELAY', 'REGIONAL', 'Aeropuerto Nacional Capitán Rogelio Castillo');
insert into AIRUD.airport values('CTM', 'CHETU', 'INTERNACIONAL', 'Aeropuerto Internacional de Chetumal');

insert into AIRUD.airport values('EZE', 'BUEAI', 'INTERNACIONAL', 'Ministro Pistarini International Airport');
insert into AIRUD.airport values('AEP', 'BUEAI', 'REGIONAL', 'Jorge Newbery Airpark');
insert into AIRUD.airport values('COR', 'CORDB', 'REGIONAL', 'Ingeniero Ambrosio Taravella Airport');
insert into AIRUD.airport values('ROS', 'ROSAR', 'REGIONAL', 'Islas Malvinas Airport');
insert into AIRUD.airport values('MDZ', 'MENDO', 'REGIONAL', 'El Plumerillo Airport');
insert into AIRUD.airport values('SLA', 'SALTA', 'INTERNACIONAL', 'Martin Miguel De Guemes International Airport');

insert into AIRUD.airport values('BCN', 'BARCE', 'INTERNACIONAL', 'Barcelona International Airport');
insert into AIRUD.airport values('MAD', 'MADRI', 'REGIONAL', 'Adolfo Suárez Madrid-Barajas Airport');
insert into AIRUD.airport values('AGP', 'MALAG', 'REGIONAL', 'Málaga Airport');
insert into AIRUD.airport values('PMI', 'PALMA', 'REGIONAL', 'Palma De Mallorca Airport');
insert into AIRUD.airport values('ALC', 'ALICA', 'INTERNACIONAL', 'Alicante International Airport');
insert into AIRUD.airport values('VLC', 'VALEN', 'REGIONAL', 'Valencia Airport');
insert into AIRUD.airport values('SVQ', 'SEVIL', 'REGIONAL', 'Sevilla Airport');

insert into AIRUD.airport values('AXM', 'LATEB', 'INTERNACIONAL', 'Aeropuerto Internacional El Edén');
insert into AIRUD.airport values('BAQ', 'SOLED', 'INTERNACIONAL', 'Aeropuerto Internacional Ernesto Cortissoz');
insert into AIRUD.airport values('BOG', 'BOGOT', 'INTERNACIONAL', 'Aeropuerto Internacional El Dorado');
insert into AIRUD.airport values('BGA', 'LEBRI', 'INTERNACIONAL', 'Aeropuerto Internacional Palonegro');
insert into AIRUD.airport values('CLO', 'PALMI', 'INTERNACIONAL', 'Aeropuerto Internacional Alfonso Bonilla Aragón');
insert into AIRUD.airport values('CTG', 'CARTA', 'INTERNACIONAL', 'Aeropuerto Internacional Rafael Núñez');
insert into AIRUD.airport values('CUC', 'CUCUT', 'INTERNACIONAL', 'Aeropuerto Internacional Camilo Daza');
insert into AIRUD.airport values('LET', 'LETIC', 'INTERNACIONAL', 'Aeropuerto Internacional Alfredo Vásquez Cobo');
insert into AIRUD.airport values('MDE', 'RIONE', 'INTERNACIONAL', 'Aeropuerto Internacional José María Córdova');
insert into AIRUD.airport values('PEI', 'PEREI', 'INTERNACIONAL', 'Aeropuerto Internacional Matecaña');
insert into AIRUD.airport values('RCH', 'RIOHA', 'INTERNACIONAL', 'Aeropuerto Internacional Almirante Padilla');
insert into AIRUD.airport values('ADZ', 'SANAS', 'INTERNACIONAL', 'Aeropuerto Internacional Gustavo Rojas Pinilla');
insert into AIRUD.airport values('SMR', 'SANTA', 'INTERNACIONAL', 'Aeropuerto Internacional Simón Bolívar');

/* Aerolineas */
insert into AIRUD.airline values('W3', NULL, 'ESP', 'Swiftair');
insert into AIRUD.airline values('V7', NULL, 'ESP', 'Volotea');
insert into AIRUD.airline values('VY', NULL, 'ESP','Vueling');
insert into AIRUD.airline values('EB', NULL, 'ESP','Wamos Air');

insert into AIRUD.airline values('AC', NULL, 'CAN', 'Air Canada');
insert into AIRUD.airline values('WS', NULL, 'CAN', 'WestJet');
insert into AIRUD.airline values('TS', NULL, 'CAN', 'Air Transat');
insert into AIRUD.airline values('7F', NULL, 'CAN', 'First Air');
insert into AIRUD.airline values('5T', NULL, 'CAN', 'Canadian North');
insert into AIRUD.airline values('YC', NULL, 'CAN', 'Ciel Canadien');
insert into AIRUD.airline values('PD', NULL, 'CAN', 'Porter Airlines');

insert into AIRUD.airline values('AM', NULL, 'MEX', 'AeroMéxico');
insert into AIRUD.airline values('4O', NULL, 'MEX', 'Interjet');
insert into AIRUD.airline values('Y4', NULL, 'MEX', 'Volaris');
insert into AIRUD.airline values('VB', NULL, 'MEX', 'Viva Aerobus');
insert into AIRUD.airline values('VW', NULL, 'MEX', 'Aeromar');
insert into AIRUD.airline values('YQ', NULL, 'MEX', 'TAR');

insert into AIRUD.airline values('AV', NULL, 'COL', 'Avianca');
insert into AIRUD.airline values('5Z', NULL, 'COL', 'Viva Air Colombia');
insert into AIRUD.airline values('P5', NULL, 'COL', 'Wingo');
insert into AIRUD.airline values('VE', NULL, 'COL', 'EasyFly');

insert into AIRUD.airline values('AA', NULL, 'USA', 'American Airlines');
insert into AIRUD.airline values('XP', NULL, 'USA', 'Avelo Airlines');
insert into AIRUD.airline values('MX', NULL, 'USA', 'Breeze Airways');
insert into AIRUD.airline values('DL', NULL, 'USA', 'Delta Air Lines');

insert into AIRUD.airline values('AR', NULL, 'ARG', 'Aerolineas Argentinas');
insert into AIRUD.airline values('AU', NULL, 'ARG', 'Austral');
insert into AIRUD.airline values('4M', NULL, 'ARG', 'LATAM Airlines Argentina');

/* Personas */
insert into AIRUD.person values(1001, 'BOGOT', 'Andrés Hernández', TO_DATE('17-02-2000'));
insert into AIRUD.person values(1002, 'BOGOT', 'Sergio Paez', TO_DATE('15-03-2002'));
insert into AIRUD.person values(1003, 'MADRI', 'Brayan Muñoz', TO_DATE('27-01-2001'));
insert into AIRUD.person values(1004, 'MALAG', 'María Barrera', TO_DATE('02-02-2000'));
insert into AIRUD.person values(1005, 'BARCE', 'María Álvarez', TO_DATE('31-12-1999'));
insert into AIRUD.person values(1006, 'TORON', 'Natalia Martinez', TO_DATE('20-10-2002'));
insert into AIRUD.person values(1007, 'TORON', 'Juan Medina', TO_DATE('15-07-2001'));
insert into AIRUD.person values(1008, 'DALLA', 'María Pardo', TO_DATE('15-10-2003'));
insert into AIRUD.person values(1009, 'ORLAN', 'Diego Torres', TO_DATE('15-01-1996'));
insert into AIRUD.person values(10010, 'CELAY', 'Paula Rodríguez', TO_DATE('14-11-2000'));

/* Empleados */
insert into AIRUD.employee values('AV', 1, 10010, TO_DATE('20-03-2017'));
insert into AIRUD.employee values('4M', 2, 1008, TO_DATE('15-09-2019'));
insert into AIRUD.employee values('AR', 3, 1007, TO_DATE('25-05-2021'));
insert into AIRUD.employee values('AA', 4, 1005, TO_DATE('01-01-2016'));
insert into AIRUD.employee values('VW', 5, 1004, TO_DATE('14-07-2019'));
insert into AIRUD.employee values('AV', 6, 1006, TO_DATE('20-11-2019'));
insert into AIRUD.employee values('AV', 7, 1002, TO_DATE('25-12-2020'));
insert into AIRUD.employee values('7F', 8, 1009, TO_DATE('17-02-2020'));
insert into AIRUD.employee values('W3', 9, 1001, TO_DATE('22-11-2022'));

/* Pilotos */
insert into AIRUD.pilot values('PPA-0', 'AV', 1, TO_DATE('14-10-2030'));
insert into AIRUD.pilot values('PPA-1', 'W3', 9, TO_DATE('20-11-2026'));
insert into AIRUD.pilot values('PPA-2', '7F', 8, TO_DATE('19-09-2032'));
insert into AIRUD.pilot values('PPA-3', 'VW', 5, TO_DATE('09-07-2024'));
insert into AIRUD.pilot values('PPA-4', 'AA', 4, TO_DATE('01-07-2023'));
insert into AIRUD.pilot values('PPA-5', 'AR', 3, TO_DATE('31-08-2028'));
insert into AIRUD.pilot values('PPA-6', '4M', 2, TO_DATE('27-05-2026'));
commit;