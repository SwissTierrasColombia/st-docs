--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Debian 11.5-1+deb10u1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-4)

-- Started on 2020-11-03 14:32:54 -05

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
-- TOC entry 11 (class 2615 OID 43731)
-- Name: supplies; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA supplies;


SET default_tablespace = '';

--
-- TOC entry 277 (class 1259 OID 43732)
-- Name: supplies; Type: TABLE; Schema: supplies; Owner: -
--

CREATE TABLE supplies.supplies (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    model_version character varying(20),
    municipality_code character varying(10) NOT NULL,
    observations character varying(500),
    request_code bigint,
    type_supply_code bigint,
    state_id bigint NOT NULL,
    name character varying(500)
);


--
-- TOC entry 278 (class 1259 OID 43738)
-- Name: supplies_attachments; Type: TABLE; Schema: supplies; Owner: -
--

CREATE TABLE supplies.supplies_attachments (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    data character varying(2000) NOT NULL,
    attachment_type_id bigint NOT NULL,
    supply_id bigint NOT NULL
);


--
-- TOC entry 279 (class 1259 OID 43744)
-- Name: supplies_attachments_id_seq; Type: SEQUENCE; Schema: supplies; Owner: -
--

ALTER TABLE supplies.supplies_attachments ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME supplies.supplies_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 280 (class 1259 OID 43746)
-- Name: supplies_attachments_types; Type: TABLE; Schema: supplies; Owner: -
--

CREATE TABLE supplies.supplies_attachments_types (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 281 (class 1259 OID 43749)
-- Name: supplies_attachments_types_id_seq; Type: SEQUENCE; Schema: supplies; Owner: -
--

ALTER TABLE supplies.supplies_attachments_types ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME supplies.supplies_attachments_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 282 (class 1259 OID 43751)
-- Name: supplies_id_seq; Type: SEQUENCE; Schema: supplies; Owner: -
--

ALTER TABLE supplies.supplies ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME supplies.supplies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 283 (class 1259 OID 43753)
-- Name: supplies_owners; Type: TABLE; Schema: supplies; Owner: -
--

CREATE TABLE supplies.supplies_owners (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    owner_code bigint NOT NULL,
    owner_type character varying(50) NOT NULL,
    supply_id bigint NOT NULL
);


--
-- TOC entry 284 (class 1259 OID 43756)
-- Name: supplies_owners_id_seq; Type: SEQUENCE; Schema: supplies; Owner: -
--

ALTER TABLE supplies.supplies_owners ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME supplies.supplies_owners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 285 (class 1259 OID 43758)
-- Name: supplies_states; Type: TABLE; Schema: supplies; Owner: -
--

CREATE TABLE supplies.supplies_states (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 286 (class 1259 OID 43761)
-- Name: supplies_states_id_seq; Type: SEQUENCE; Schema: supplies; Owner: -
--

ALTER TABLE supplies.supplies_states ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME supplies.supplies_states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3121 (class 2606 OID 43764)
-- Name: supplies_attachments supplies_attachments_pkey; Type: CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies_attachments
    ADD CONSTRAINT supplies_attachments_pkey PRIMARY KEY (id);


--
-- TOC entry 3123 (class 2606 OID 43766)
-- Name: supplies_attachments_types supplies_attachments_types_pkey; Type: CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies_attachments_types
    ADD CONSTRAINT supplies_attachments_types_pkey PRIMARY KEY (id);


--
-- TOC entry 3125 (class 2606 OID 43768)
-- Name: supplies_owners supplies_owners_pkey; Type: CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies_owners
    ADD CONSTRAINT supplies_owners_pkey PRIMARY KEY (id);


--
-- TOC entry 3119 (class 2606 OID 43770)
-- Name: supplies supplies_pkey; Type: CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies
    ADD CONSTRAINT supplies_pkey PRIMARY KEY (id);


--
-- TOC entry 3127 (class 2606 OID 43772)
-- Name: supplies_states supplies_states_pkey; Type: CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies_states
    ADD CONSTRAINT supplies_states_pkey PRIMARY KEY (id);


--
-- TOC entry 3128 (class 2606 OID 43773)
-- Name: supplies fkcqnuux9mukugkg2pphv2tl2xq; Type: FK CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies
    ADD CONSTRAINT fkcqnuux9mukugkg2pphv2tl2xq FOREIGN KEY (state_id) REFERENCES supplies.supplies_states(id);


--
-- TOC entry 3131 (class 2606 OID 43778)
-- Name: supplies_owners fkji8m8lptgn5lodrtes5da1j15; Type: FK CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies_owners
    ADD CONSTRAINT fkji8m8lptgn5lodrtes5da1j15 FOREIGN KEY (supply_id) REFERENCES supplies.supplies(id);


--
-- TOC entry 3129 (class 2606 OID 43783)
-- Name: supplies_attachments fkqklh4hs350kjghiawxeh9t2s8; Type: FK CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies_attachments
    ADD CONSTRAINT fkqklh4hs350kjghiawxeh9t2s8 FOREIGN KEY (supply_id) REFERENCES supplies.supplies(id);


--
-- TOC entry 3130 (class 2606 OID 43788)
-- Name: supplies_attachments fks1yol7abrd26ekjh5oca1dr72; Type: FK CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies_attachments
    ADD CONSTRAINT fks1yol7abrd26ekjh5oca1dr72 FOREIGN KEY (attachment_type_id) REFERENCES supplies.supplies_attachments_types(id);


-- Completed on 2020-11-03 14:33:02 -05

--
-- PostgreSQL database dump complete
--