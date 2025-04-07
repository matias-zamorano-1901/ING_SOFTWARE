-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2025-04-07 11:07:01 CLT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE cliente (
    cliente_id   CHAR(9) NOT NULL,
    name_cli     VARCHAR2(20) NOT NULL,
    apellido_cli VARCHAR2(20) NOT NULL,
    email_cl     VARCHAR2(50) NOT NULL,
    telefono_cli CHAR(11) NOT NULL
);

ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY ( cliente_id );

CREATE TABLE habitacion (
    habitacion_id VARCHAR2(6) NOT NULL,
    hotel_id      VARCHAR2(4) NOT NULL,
    tipo          VARCHAR2(10) NOT NULL,
    capacidad     CHAR(2) NOT NULL,
    precio        CHAR(6) NOT NULL
);

ALTER TABLE habitacion ADD CONSTRAINT habitacion_pk PRIMARY KEY ( habitacion_id );

CREATE TABLE hotel (
    hotel_id       VARCHAR2(4) NOT NULL,
    name_hotel     VARCHAR2(15) NOT NULL,
    ciudad         VARCHAR2(20) NOT NULL,
    categoria      VARCHAR2(10) NOT NULL,
    telefono_hotel CHAR(11) NOT NULL
);

ALTER TABLE hotel ADD CONSTRAINT hotel_pk PRIMARY KEY ( hotel_id );

CREATE TABLE reserva (
    reserva_id        CHAR(6) NOT NULL,
    hotel_id          VARCHAR2(4) NOT NULL,
    cliente_id        CHAR(9) NOT NULL,
    habitacion_id     VARCHAR2(6) NOT NULL,
    fecha_entrada     DATE NOT NULL,
    fecha_salida      DATE,
    cantidad_personas CHAR(1)
);

ALTER TABLE reserva ADD CONSTRAINT reserva_pk PRIMARY KEY ( reserva_id );

ALTER TABLE reserva
    ADD CONSTRAINT cliente_fk FOREIGN KEY ( cliente_id )
        REFERENCES cliente ( cliente_id );

ALTER TABLE reserva
    ADD CONSTRAINT habitacion_fk FOREIGN KEY ( habitacion_id )
        REFERENCES habitacion ( habitacion_id );

ALTER TABLE reserva
    ADD CONSTRAINT hotel_fk FOREIGN KEY ( hotel_id )
        REFERENCES hotel ( hotel_id );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              7
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
