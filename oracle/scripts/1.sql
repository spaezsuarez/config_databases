/*==============================================================*/
/* DBMS name:      ORACLE Version 12c                           */
/* Created on:     30/11/2022 2:07:30 p.�m.                     */
/*==============================================================*/

CREATE USER AIRUD IDENTIFIED BY pass;

GRANT ALL PRIVILEGES TO system;
GRANT ALL PRIVILEGES TO AIRUD;

alter table AIRUD.AIRLINE
   drop constraint FK_AIRLINE_AIRLINE_O_AIRLINE;

alter table AIRUD.AIRLINE
   drop constraint FK_AIRLINE_COUNTRY_A_PLACE;

alter table AIRUD.AIRPORT
   drop constraint FK_AIRPORT_AIRPORT_L_PLACE;

alter table AIRUD.AIRPORT
   drop constraint FK_AIRPORT_AIRPORT_T_AIRPORT_;

alter table AIRUD.AIRPORT_SERVICE
   drop constraint FK_AIRPORT__AIRPORT_C_AIRPORT;

alter table AIRUD.AIRPORT_SERVICE
   drop constraint FK_AIRPORT__CITY_AIRP_PLACE;

alter table AIRUD.EMPLOYEE
   drop constraint FK_EMPLOYEE_EMPLOYMEN_AIRLINE;

alter table AIRUD.EMPLOYEE
   drop constraint FK_EMPLOYEE_PERSON_EM_PERSON;

alter table AIRUD.FLIGHT
   drop constraint FK_FLIGHT_AIRLINE_F_AIRLINE;

alter table AIRUD.FLIGHT_CONNECTION
   drop constraint FK_FLIGHT_CONNECTIO_FLIGHT_S1;

alter table AIRUD.FLIGHT_CONNECTION
   drop constraint FK_FLIGHT_CONNECTIO_FLIGHT_S2;

alter table AIRUD.FLIGHT_SEGMENT
   drop constraint FK_FLIGHT_S_DESTINATI_AIRPORT;

alter table AIRUD.FLIGHT_SEGMENT
   drop constraint FK_FLIGHT_S_FLIGHT_SE_FLIGHT;

alter table AIRUD.FLIGHT_SEGMENT
   drop constraint FK_FLIGHT_S_ORIGIN_AIRPORT;

alter table AIRUD.GROUND_CREW
   drop constraint FK_GROUND_C_ASSISTANT_EMPLOYEE;

alter table AIRUD.PARKING_SPACE
   drop constraint FK_PARKING__EMP_PARK__EMPLOYEE;

alter table AIRUD.PASSENGER
   drop constraint FK_PASSENGE_PERSON_PA_PERSON;

alter table AIRUD.PERSON
   drop constraint FK_PERSON_CITY_PERS_PLACE;

alter table AIRUD.PILOT
   drop constraint FK_PILOT_EMPLOYEED_EMPLOYEE;

alter table AIRUD.PILOT_ASSIGNMENT
   drop constraint FK_PILOT_AS_FLIGHT_SE_FLIGHT_S;

alter table AIRUD.PILOT_ASSIGNMENT
   drop constraint FK_PILOT_AS_PILOT_FLI_PILOT;

alter table AIRUD.PLACE
   drop constraint FK_PLACE_PLACETYPE_PLACE_TY;

alter table AIRUD.PLACE
   drop constraint FK_PLACE_PLACE_PLA_PLACE;

drop index COUNTRY_AIRLINE_FK;

drop index AIRLINE_OPERATOR_FK;

drop table AIRUD.AIRLINE cascade constraints;

drop index AIRPORT_TYPE_AIRPORT_FK;

drop index AIRPORT_LOCATION_FK;

drop table AIRUD.AIRPORT cascade constraints;

drop index CITY_AIRPORT_FK;

drop index AIRPORT_CITY_FK;

drop table AIRUD.AIRPORT_SERVICE cascade constraints;

drop table AIRUD.AIRPORT_TYPE cascade constraints;

drop index EMPLOYMENT_FK;

drop index PERSON_EMPLOYEE_FK;

drop table AIRUD.EMPLOYEE cascade constraints;

drop index AIRLINE_FLIGHT_FK;

drop table AIRUD.FLIGHT cascade constraints;

drop index CONNECTION2_FK;

drop index CONNECTION1_FK;

drop table AIRUD.FLIGHT_CONNECTION cascade constraints;

drop index ORIGIN_FK;

drop index DESTINATION_FK;

drop index FLIGHT_SEGMENT_FK;

drop table AIRUD.FLIGHT_SEGMENT cascade constraints;

drop index ASSISTANT_FK;

drop table AIRUD.GROUND_CREW cascade constraints;

drop index EMP_PARK_SPACE_FK;

drop table AIRUD.PARKING_SPACE cascade constraints;

drop index PERSON_PASSENGER_FK;

drop table AIRUD.PASSENGER cascade constraints;

drop index CITY_PERSON_FK;

drop table AIRUD.PERSON cascade constraints;

drop index EMPLOYEED_FK;

drop table AIRUD.PILOT cascade constraints;

drop index FLIGHT_SEGMENT_PILOT_FK;

drop index PILOT_FLIGHT_SEGMENT_FK;

drop table AIRUD.PILOT_ASSIGNMENT cascade constraints;

drop index PLACE_PLACE_FK;

drop index PLACETYPE_PLACE_FK;

drop table AIRUD.PLACE cascade constraints;

drop table AIRUD.PLACE_TYPE cascade constraints;

/*==============================================================*/
/* Table: AIRLINE                                               */
/*==============================================================*/
create table AIRUD.AIRLINE (
   AIRLINE_CODE         VARCHAR2(2)           not null,
   AIR_AIRLINE_CODE     VARCHAR2(2),
   ID_PLACE             VARCHAR2(5)           not null,
   AIRLINE_NAME         VARCHAR2(30)          not null,
   constraint PK_AIRLINE primary key (AIRLINE_CODE)
);

/*==============================================================*/
/* Index: AIRLINE_OPERATOR_FK                                   */
/*==============================================================*/
create index AIRLINE_OPERATOR_FK on AIRUD.AIRLINE (
   AIR_AIRLINE_CODE ASC
);

/*==============================================================*/
/* Index: COUNTRY_AIRLINE_FK                                    */
/*==============================================================*/
create index COUNTRY_AIRLINE_FK on AIRUD.AIRLINE (
   ID_PLACE ASC
);

/*==============================================================*/
/* Table: AIRPORT                                               */
/*==============================================================*/
create table AIRUD.AIRPORT (
   AIRPORT_CODE         VARCHAR2(3)           not null,
   ID_PLACE             VARCHAR2(5)           not null,
   AIRPORT_TYPE         VARCHAR2(15)          not null,
   AIRPORT_NAME         VARCHAR2(70)          not null,
   constraint PK_AIRPORT primary key (AIRPORT_CODE)
);

/*==============================================================*/
/* Index: AIRPORT_LOCATION_FK                                   */
/*==============================================================*/
create index AIRPORT_LOCATION_FK on AIRUD.AIRPORT (
   ID_PLACE ASC
);

/*==============================================================*/
/* Index: AIRPORT_TYPE_AIRPORT_FK                               */
/*==============================================================*/
create index AIRPORT_TYPE_AIRPORT_FK on AIRUD.AIRPORT (
   AIRPORT_TYPE ASC
);

/*==============================================================*/
/* Table: AIRPORT_SERVICE                                       */
/*==============================================================*/
create table AIRUD.AIRPORT_SERVICE (
   AIRPORT_SERVICE_TK   VARCHAR2(5)           not null,
   AIRPORT_CODE         VARCHAR2(3)           not null,
   ID_PLACE             VARCHAR2(5)           not null,
   NEVER_ON_SUNDAY      VARCHAR2(1)           not null,
   constraint PK_AIRPORT_SERVICE primary key (AIRPORT_SERVICE_TK)
);

/*==============================================================*/
/* Index: AIRPORT_CITY_FK                                       */
/*==============================================================*/
create index AIRPORT_CITY_FK on AIRUD.AIRPORT_SERVICE (
   AIRPORT_CODE ASC
);

/*==============================================================*/
/* Index: CITY_AIRPORT_FK                                       */
/*==============================================================*/
create index CITY_AIRPORT_FK on AIRUD.AIRPORT_SERVICE (
   ID_PLACE ASC
);

/*==============================================================*/
/* Table: AIRPORT_TYPE                                          */
/*==============================================================*/
create table AIRUD.AIRPORT_TYPE (
   AIRPORT_TYPE         VARCHAR2(15)          not null,
   constraint PK_AIRPORT_TYPE primary key (AIRPORT_TYPE)
);

/*==============================================================*/
/* Table: EMPLOYEE                                              */
/*==============================================================*/
create table AIRUD.EMPLOYEE (
   AIRLINE_CODE         VARCHAR2(2)           not null,
   EMPLOYEE_NUMBER      NUMBER(10)            not null,
   ID_PERSON            NUMBER(10)            not null,
   DATE_HIRED           DATE                  not null,
   constraint PK_EMPLOYEE primary key (AIRLINE_CODE, EMPLOYEE_NUMBER)
);

/*==============================================================*/
/* Index: PERSON_EMPLOYEE_FK                                    */
/*==============================================================*/
create index PERSON_EMPLOYEE_FK on AIRUD.EMPLOYEE (
   ID_PERSON ASC
);

/*==============================================================*/
/* Index: EMPLOYMENT_FK                                         */
/*==============================================================*/
create index EMPLOYMENT_FK on AIRUD.EMPLOYEE (
   AIRLINE_CODE ASC
);

/*==============================================================*/
/* Table: FLIGHT                                                */
/*==============================================================*/
create table AIRUD.FLIGHT (
   AIRLINE_CODE         VARCHAR2(2)           not null,
   FLIGHT_NUMBER        NUMBER(5)             not null,
   "DATE"               DATE                  not null,
   constraint PK_FLIGHT primary key (AIRLINE_CODE, FLIGHT_NUMBER)
);

/*==============================================================*/
/* Index: AIRLINE_FLIGHT_FK                                     */
/*==============================================================*/
create index AIRLINE_FLIGHT_FK on AIRUD.FLIGHT (
   AIRLINE_CODE ASC
);

/*==============================================================*/
/* Table: FLIGHT_CONNECTION                                     */
/*==============================================================*/
create table AIRUD.FLIGHT_CONNECTION (
   AIRPORT_CODE_DEST2   VARCHAR2(3)           not null,
   AIRLINE_CODE2        VARCHAR2(2)           not null,
   FLIGHT_NUMBER2       NUMBER(5)             not null,
   CONSEC_FS2           NUMBER(5)             not null,
   AIRPORT_CODE_DEST1   VARCHAR2(3)           not null,
   AIRLINE_CODE1        VARCHAR2(2)           not null,
   FLIGHT_NUMBER1       NUMBER(5)             not null,
   CONSEC_FS1           NUMBER(5)             not null,
   constraint PK_FLIGHT_CONNECTION primary key (AIRPORT_CODE_DEST2, AIRLINE_CODE2, FLIGHT_NUMBER2, CONSEC_FS2, AIRPORT_CODE_DEST1, AIRLINE_CODE1, FLIGHT_NUMBER1, CONSEC_FS1)
);

/*==============================================================*/
/* Index: CONNECTION1_FK                                        */
/*==============================================================*/
create index CONNECTION1_FK on AIRUD.FLIGHT_CONNECTION (
   AIRPORT_CODE_DEST1 ASC,
   AIRLINE_CODE1 ASC,
   FLIGHT_NUMBER1 ASC,
   CONSEC_FS1 ASC
);

/*==============================================================*/
/* Index: CONNECTION2_FK                                        */
/*==============================================================*/
create index CONNECTION2_FK on AIRUD.FLIGHT_CONNECTION (
   AIRPORT_CODE_DEST2 ASC,
   AIRLINE_CODE2 ASC,
   FLIGHT_NUMBER2 ASC,
   CONSEC_FS2 ASC
);

/*==============================================================*/
/* Table: FLIGHT_SEGMENT                                        */
/*==============================================================*/
create table AIRUD.FLIGHT_SEGMENT (
   AIRPORT_CODE_DEST    VARCHAR2(3)           not null,
   AIRLINE_CODE         VARCHAR2(2)           not null,
   FLIGHT_NUMBER        NUMBER(5)             not null,
   CONSEC_FS            NUMBER(5)             not null,
   AIRPORT_CODE_ORIG    VARCHAR2(3)           not null,
   constraint PK_FLIGHT_SEGMENT primary key (AIRPORT_CODE_DEST, AIRLINE_CODE, FLIGHT_NUMBER, CONSEC_FS)
);

/*==============================================================*/
/* Index: FLIGHT_SEGMENT_FK                                     */
/*==============================================================*/
create index FLIGHT_SEGMENT_FK on AIRUD.FLIGHT_SEGMENT (
   AIRLINE_CODE ASC,
   FLIGHT_NUMBER ASC
);

/*==============================================================*/
/* Index: DESTINATION_FK                                        */
/*==============================================================*/
create index DESTINATION_FK on AIRUD.FLIGHT_SEGMENT (
   AIRPORT_CODE_DEST ASC
);

/*==============================================================*/
/* Index: ORIGIN_FK                                             */
/*==============================================================*/
create index ORIGIN_FK on AIRUD.FLIGHT_SEGMENT (
   AIRPORT_CODE_ORIG ASC
);

/*==============================================================*/
/* Table: GROUND_CREW                                           */
/*==============================================================*/
create table AIRUD.GROUND_CREW (
   CONSEC_GC            NUMBER(5)             not null,
   AIRLINE_CODE         VARCHAR2(2),
   EMPLOYEE_NUMBER      NUMBER(10),
   CERTIFICATION_DATE   DATE                  not null,
   constraint PK_GROUND_CREW primary key (CONSEC_GC)
);

/*==============================================================*/
/* Index: ASSISTANT_FK                                          */
/*==============================================================*/
create index ASSISTANT_FK on AIRUD.GROUND_CREW (
   AIRLINE_CODE ASC,
   EMPLOYEE_NUMBER ASC
);

/*==============================================================*/
/* Table: PARKING_SPACE                                         */
/*==============================================================*/
create table AIRUD.PARKING_SPACE (
   PARKING_SPACE        NUMBER(5)             not null,
   AIRLINE_CODE         VARCHAR2(2),
   EMPLOYEE_NUMBER      NUMBER(10),
   constraint PK_PARKING_SPACE primary key (PARKING_SPACE)
);

/*==============================================================*/
/* Index: EMP_PARK_SPACE_FK                                     */
/*==============================================================*/
create index EMP_PARK_SPACE_FK on AIRUD.PARKING_SPACE (
   AIRLINE_CODE ASC,
   EMPLOYEE_NUMBER ASC
);

/*==============================================================*/
/* Table: PASSENGER                                             */
/*==============================================================*/
create table AIRUD.PASSENGER (
   ID_PASSENGER         NUMBER(10)            not null,
   ID_PERSON            NUMBER(10)            not null,
   constraint PK_PASSENGER primary key (ID_PASSENGER)
);

/*==============================================================*/
/* Index: PERSON_PASSENGER_FK                                   */
/*==============================================================*/
create index PERSON_PASSENGER_FK on AIRUD.PASSENGER (
   ID_PERSON ASC
);

/*==============================================================*/
/* Table: PERSON                                                */
/*==============================================================*/
create table AIRUD.PERSON (
   ID_PERSON            NUMBER(10)            not null,
   ID_PLACE             VARCHAR2(5)           not null,
   NAME_PERSON          VARCHAR2(50)          not null,
   DOB                  DATE,
   constraint PK_PERSON primary key (ID_PERSON)
);

/*==============================================================*/
/* Index: CITY_PERSON_FK                                        */
/*==============================================================*/
create index CITY_PERSON_FK on AIRUD.PERSON (
   ID_PLACE ASC
);

/*==============================================================*/
/* Table: PILOT                                                 */
/*==============================================================*/
create table AIRUD.PILOT (
   PILOT_LICENSE        VARCHAR2(10)          not null,
   AIRLINE_CODE         VARCHAR2(2)           not null,
   EMPLOYEE_NUMBER      NUMBER(10)            not null,
   PILOT_LICENSE_EXPIRATION DATE                  not null,
   constraint PK_PILOT primary key (PILOT_LICENSE)
);

/*==============================================================*/
/* Index: EMPLOYEED_FK                                          */
/*==============================================================*/
create index EMPLOYEED_FK on AIRUD.PILOT (
   AIRLINE_CODE ASC,
   EMPLOYEE_NUMBER ASC
);

/*==============================================================*/
/* Table: PILOT_ASSIGNMENT                                      */
/*==============================================================*/
create table AIRUD.PILOT_ASSIGNMENT (
   AIRPORT_CODE_DEST    VARCHAR2(3)           not null,
   AIRLINE_CODE         VARCHAR2(2)           not null,
   FLIGHT_NUMBER        NUMBER(5)             not null,
   CONSEC_FS            NUMBER(5)             not null,
   PILOT_LICENSE        VARCHAR2(10)          not null,
   CONSEC_PA            NUMBER(5)             not null,
   constraint PK_PILOT_ASSIGNMENT primary key (AIRPORT_CODE_DEST, AIRLINE_CODE, FLIGHT_NUMBER, CONSEC_FS, PILOT_LICENSE, CONSEC_PA)
);

/*==============================================================*/
/* Index: PILOT_FLIGHT_SEGMENT_FK                               */
/*==============================================================*/
create index PILOT_FLIGHT_SEGMENT_FK on AIRUD.PILOT_ASSIGNMENT (
   PILOT_LICENSE ASC
);

/*==============================================================*/
/* Index: FLIGHT_SEGMENT_PILOT_FK                               */
/*==============================================================*/
create index FLIGHT_SEGMENT_PILOT_FK on AIRUD.PILOT_ASSIGNMENT (
   AIRPORT_CODE_DEST ASC,
   AIRLINE_CODE ASC,
   FLIGHT_NUMBER ASC,
   CONSEC_FS ASC
);

/*==============================================================*/
/* Table: PLACE                                                 */
/*==============================================================*/
create table AIRUD.PLACE (
   ID_PLACE             VARCHAR2(5)           not null,
   ID_PLACE_TYPE        VARCHAR2(3)           not null,
   ID_PLACE_CONT        VARCHAR2(5),
   PLACE_NAME           VARCHAR2(30)          not null,
   constraint PK_PLACE primary key (ID_PLACE)
);

/*==============================================================*/
/* Index: PLACETYPE_PLACE_FK                                    */
/*==============================================================*/
create index PLACETYPE_PLACE_FK on AIRUD.PLACE (
   ID_PLACE_TYPE ASC
);

/*==============================================================*/
/* Index: PLACE_PLACE_FK                                        */
/*==============================================================*/
create index PLACE_PLACE_FK on AIRUD.PLACE (
   ID_PLACE_CONT ASC
);

/*==============================================================*/
/* Table: PLACE_TYPE                                            */
/*==============================================================*/
create table AIRUD.PLACE_TYPE (
   ID_PLACE_TYPE        VARCHAR2(3)           not null,
   DES_PLACE_TYPE       VARCHAR2(30)          not null,
   constraint PK_PLACE_TYPE primary key (ID_PLACE_TYPE)
);

alter table AIRUD.AIRLINE
   add constraint FK_AIRLINE_AIRLINE_O_AIRLINE foreign key (AIR_AIRLINE_CODE)
      references AIRUD.AIRLINE (AIRLINE_CODE);

alter table AIRUD.AIRLINE
   add constraint FK_AIRLINE_COUNTRY_A_PLACE foreign key (ID_PLACE)
      references AIRUD.PLACE (ID_PLACE);

alter table AIRUD.AIRPORT
   add constraint FK_AIRPORT_AIRPORT_L_PLACE foreign key (ID_PLACE)
      references AIRUD.PLACE (ID_PLACE);

alter table AIRUD.AIRPORT
   add constraint FK_AIRPORT_AIRPORT_T_AIRPORT_ foreign key (AIRPORT_TYPE)
      references AIRUD.AIRPORT_TYPE (AIRPORT_TYPE);

alter table AIRUD.AIRPORT_SERVICE
   add constraint FK_AIRPORT__AIRPORT_C_AIRPORT foreign key (AIRPORT_CODE)
      references AIRUD.AIRPORT (AIRPORT_CODE);

alter table AIRUD.AIRPORT_SERVICE
   add constraint FK_AIRPORT__CITY_AIRP_PLACE foreign key (ID_PLACE)
      references AIRUD.PLACE (ID_PLACE);

alter table AIRUD.EMPLOYEE
   add constraint FK_EMPLOYEE_EMPLOYMEN_AIRLINE foreign key (AIRLINE_CODE)
      references AIRUD.AIRLINE (AIRLINE_CODE);

alter table AIRUD.EMPLOYEE
   add constraint FK_EMPLOYEE_PERSON_EM_PERSON foreign key (ID_PERSON)
      references AIRUD.PERSON (ID_PERSON);

alter table AIRUD.FLIGHT
   add constraint FK_FLIGHT_AIRLINE_F_AIRLINE foreign key (AIRLINE_CODE)
      references AIRUD.AIRLINE (AIRLINE_CODE);

alter table AIRUD.FLIGHT_CONNECTION
   add constraint FK_FLIGHT_CONNECTIO_FLIGHT_S1 foreign key (AIRPORT_CODE_DEST1, AIRLINE_CODE1, FLIGHT_NUMBER1, CONSEC_FS1)
      references AIRUD.FLIGHT_SEGMENT (AIRPORT_CODE_DEST, AIRLINE_CODE, FLIGHT_NUMBER, CONSEC_FS);

alter table AIRUD.FLIGHT_CONNECTION
   add constraint FK_FLIGHT_CONNECTIO_FLIGHT_S2 foreign key (AIRPORT_CODE_DEST2, AIRLINE_CODE2, FLIGHT_NUMBER2, CONSEC_FS2)
      references AIRUD.FLIGHT_SEGMENT (AIRPORT_CODE_DEST, AIRLINE_CODE, FLIGHT_NUMBER, CONSEC_FS);

alter table AIRUD.FLIGHT_SEGMENT
   add constraint FK_FLIGHT_S_DESTINATI_AIRPORT foreign key (AIRPORT_CODE_DEST)
      references AIRUD.AIRPORT (AIRPORT_CODE);

alter table AIRUD.FLIGHT_SEGMENT
   add constraint FK_FLIGHT_S_FLIGHT_SE_FLIGHT foreign key (AIRLINE_CODE, FLIGHT_NUMBER)
      references AIRUD.FLIGHT (AIRLINE_CODE, FLIGHT_NUMBER);

alter table FLIGHT_SEGMENT
   add constraint FK_FLIGHT_S_ORIGIN_AIRPORT foreign key (AIRPORT_CODE_ORIG)
      references AIRUD.AIRPORT (AIRPORT_CODE);

alter table AIRUD.GROUND_CREW
   add constraint FK_GROUND_C_ASSISTANT_EMPLOYEE foreign key (AIRLINE_CODE, EMPLOYEE_NUMBER)
      references AIRUD.EMPLOYEE (AIRLINE_CODE, EMPLOYEE_NUMBER);

alter table AIRUD.PARKING_SPACE
   add constraint FK_PARKING__EMP_PARK__EMPLOYEE foreign key (AIRLINE_CODE, EMPLOYEE_NUMBER)
      references AIRUD.EMPLOYEE (AIRLINE_CODE, EMPLOYEE_NUMBER);

alter table AIRUD.PASSENGER
   add constraint FK_PASSENGE_PERSON_PA_PERSON foreign key (ID_PERSON)
      references AIRUD.PERSON (ID_PERSON);

alter table AIRUD.PERSON
   add constraint FK_PERSON_CITY_PERS_PLACE foreign key (ID_PLACE)
      references AIRUD.PLACE (ID_PLACE);

alter table AIRUD.PILOT
   add constraint FK_PILOT_EMPLOYEED_EMPLOYEE foreign key (AIRLINE_CODE, EMPLOYEE_NUMBER)
      references AIRUD.EMPLOYEE (AIRLINE_CODE, EMPLOYEE_NUMBER);

alter table AIRUD.PILOT_ASSIGNMENT
   add constraint FK_PILOT_AS_FLIGHT_SE_FLIGHT_S foreign key (AIRPORT_CODE_DEST, AIRLINE_CODE, FLIGHT_NUMBER, CONSEC_FS)
      references AIRUD.FLIGHT_SEGMENT (AIRPORT_CODE_DEST, AIRLINE_CODE, FLIGHT_NUMBER, CONSEC_FS);

alter table AIRUD.PILOT_ASSIGNMENT
   add constraint FK_PILOT_AS_PILOT_FLI_PILOT foreign key (PILOT_LICENSE)
      references AIRUD.PILOT (PILOT_LICENSE);

alter table AIRUD.PLACE
   add constraint FK_PLACE_PLACETYPE_PLACE_TY foreign key (ID_PLACE_TYPE)
      references AIRUD.PLACE_TYPE (ID_PLACE_TYPE);

alter table AIRUD.PLACE
   add constraint FK_PLACE_PLACE_PLA_PLACE foreign key (ID_PLACE_CONT)
      references AIRUD.PLACE (ID_PLACE);

