--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2 (Debian 11.2-1.pgdg90+1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-4)

-- Started on 2021-05-07 10:46:46 -05

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
-- TOC entry 21 (class 2615 OID 496073)
-- Name: supplies; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA supplies;


SET default_tablespace = '';

--
-- TOC entry 317 (class 1259 OID 505290)
-- Name: supplies; Type: TABLE; Schema: supplies; Owner: -
--

CREATE TABLE supplies.supplies (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    is_valid boolean,
    manager_code bigint NOT NULL,
    model_version character varying(20),
    municipality_code character varying(10) NOT NULL,
    name character varying(500),
    observations character varying(500),
    request_code bigint,
    type_supply_code bigint,
    state_id bigint NOT NULL
);


--
-- TOC entry 319 (class 1259 OID 505300)
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
-- TOC entry 318 (class 1259 OID 505298)
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
-- TOC entry 321 (class 1259 OID 505310)
-- Name: supplies_attachments_types; Type: TABLE; Schema: supplies; Owner: -
--

CREATE TABLE supplies.supplies_attachments_types (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 320 (class 1259 OID 505308)
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
-- TOC entry 316 (class 1259 OID 505288)
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
-- TOC entry 323 (class 1259 OID 505317)
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
-- TOC entry 322 (class 1259 OID 505315)
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
-- TOC entry 325 (class 1259 OID 505324)
-- Name: supplies_states; Type: TABLE; Schema: supplies; Owner: -
--

CREATE TABLE supplies.supplies_states (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 324 (class 1259 OID 505322)
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
-- TOC entry 4892 (class 2606 OID 505307)
-- Name: supplies_attachments supplies_attachments_pkey; Type: CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies_attachments
    ADD CONSTRAINT supplies_attachments_pkey PRIMARY KEY (id);


--
-- TOC entry 4894 (class 2606 OID 505314)
-- Name: supplies_attachments_types supplies_attachments_types_pkey; Type: CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies_attachments_types
    ADD CONSTRAINT supplies_attachments_types_pkey PRIMARY KEY (id);


--
-- TOC entry 4896 (class 2606 OID 505321)
-- Name: supplies_owners supplies_owners_pkey; Type: CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies_owners
    ADD CONSTRAINT supplies_owners_pkey PRIMARY KEY (id);


--
-- TOC entry 4890 (class 2606 OID 505297)
-- Name: supplies supplies_pkey; Type: CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies
    ADD CONSTRAINT supplies_pkey PRIMARY KEY (id);


--
-- TOC entry 4898 (class 2606 OID 505328)
-- Name: supplies_states supplies_states_pkey; Type: CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies_states
    ADD CONSTRAINT supplies_states_pkey PRIMARY KEY (id);


--
-- TOC entry 4899 (class 2606 OID 505329)
-- Name: supplies fkcqnuux9mukugkg2pphv2tl2xq; Type: FK CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies
    ADD CONSTRAINT fkcqnuux9mukugkg2pphv2tl2xq FOREIGN KEY (state_id) REFERENCES supplies.supplies_states(id);


--
-- TOC entry 4902 (class 2606 OID 505344)
-- Name: supplies_owners fkji8m8lptgn5lodrtes5da1j15; Type: FK CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies_owners
    ADD CONSTRAINT fkji8m8lptgn5lodrtes5da1j15 FOREIGN KEY (supply_id) REFERENCES supplies.supplies(id);


--
-- TOC entry 4901 (class 2606 OID 505339)
-- Name: supplies_attachments fkqklh4hs350kjghiawxeh9t2s8; Type: FK CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies_attachments
    ADD CONSTRAINT fkqklh4hs350kjghiawxeh9t2s8 FOREIGN KEY (supply_id) REFERENCES supplies.supplies(id);


--
-- TOC entry 4900 (class 2606 OID 505334)
-- Name: supplies_attachments fks1yol7abrd26ekjh5oca1dr72; Type: FK CONSTRAINT; Schema: supplies; Owner: -
--

ALTER TABLE ONLY supplies.supplies_attachments
    ADD CONSTRAINT fks1yol7abrd26ekjh5oca1dr72 FOREIGN KEY (attachment_type_id) REFERENCES supplies.supplies_attachments_types(id);


-- Completed on 2021-05-07 10:46:46 -05

--
-- PostgreSQL database dump complete
--

