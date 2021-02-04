--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2 (Debian 11.2-1.pgdg90+1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-4)

-- Started on 2020-08-28 10:40:19 -05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4977 (class 0 OID 175750)
-- Dependencies: 353
-- Data for Name: departments; Type: TABLE DATA; Schema: workspaces; Owner: -
--

COPY workspaces.departments (id, code, name) FROM stdin;
5	05	ANTIOQUIA
6	08	ATLÁNTICO
7	11	BOGOTÁ, D.C.
8	13	BOLÍVAR
9	15	BOYACÁ
10	17	CALDAS
11	18	CAQUETÁ
12	19	CAUCA
13	20	CESAR
14	23	CÓRDOBA
15	25	CUNDINAMARCA
16	27	CHOCÓ
17	41	HUILA
18	44	LA GUAJIRA
19	47	MAGDALENA
20	50	META
21	52	NARIÑO
22	54	NORTE DE SANTANDER
23	63	QUINDÍO
24	66	RISARALDA
25	68	SANTANDER
26	70	SUCRE
27	73	TOLIMA
28	76	VALLE DEL CAUCA
29	81	ARAUCA
30	85	CASANARE
31	86	PUTUMAYO
32	88	ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SANTA CATALINA
33	91	AMAZONAS
34	94	GUAINÍA
35	95	GUAVIARE
36	97	VAUPÉS
37	99	VICHADA
\.


--
-- TOC entry 4983 (class 0 OID 0)
-- Dependencies: 352
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: workspaces; Owner: -
--

SELECT pg_catalog.setval('workspaces.departments_id_seq', 38, true);


-- Completed on 2020-08-28 10:40:19 -05

--
-- PostgreSQL database dump complete
--

