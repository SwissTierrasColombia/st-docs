--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2 (Debian 11.2-1.pgdg90+1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-4)

-- Started on 2020-10-16 10:00:44 -05

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
-- TOC entry 23 (class 2615 OID 20738)
-- Name: operators; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA operators;


SET default_tablespace = '';

--
-- TOC entry 316 (class 1259 OID 287333)
-- Name: deliveries; Type: TABLE; Schema: operators; Owner: -
--

CREATE TABLE operators.deliveries (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    download_report_url character varying(1000),
    is_active boolean NOT NULL,
    manager_code bigint NOT NULL,
    municipality_code character varying(10) NOT NULL,
    observations character varying(500) NOT NULL,
    operator_id bigint NOT NULL
);


--
-- TOC entry 315 (class 1259 OID 287331)
-- Name: deliveries_id_seq; Type: SEQUENCE; Schema: operators; Owner: -
--

ALTER TABLE operators.deliveries ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME operators.deliveries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 318 (class 1259 OID 287343)
-- Name: operators; Type: TABLE; Schema: operators; Owner: -
--

CREATE TABLE operators.operators (
    id bigint NOT NULL,
    alias character varying(20),
    created_at timestamp without time zone NOT NULL,
    is_public boolean,
    name character varying(255) NOT NULL,
    tax_identification_number character varying(255) NOT NULL,
    operator_state_id bigint NOT NULL
);


--
-- TOC entry 317 (class 1259 OID 287341)
-- Name: operators_id_seq; Type: SEQUENCE; Schema: operators; Owner: -
--

ALTER TABLE operators.operators ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME operators.operators_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 320 (class 1259 OID 287353)
-- Name: operators_states; Type: TABLE; Schema: operators; Owner: -
--

CREATE TABLE operators.operators_states (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 319 (class 1259 OID 287351)
-- Name: operators_states_id_seq; Type: SEQUENCE; Schema: operators; Owner: -
--

ALTER TABLE operators.operators_states ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME operators.operators_states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 322 (class 1259 OID 287360)
-- Name: operators_users; Type: TABLE; Schema: operators; Owner: -
--

CREATE TABLE operators.operators_users (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    user_code bigint NOT NULL,
    operator_id bigint NOT NULL
);


--
-- TOC entry 321 (class 1259 OID 287358)
-- Name: operators_users_id_seq; Type: SEQUENCE; Schema: operators; Owner: -
--

ALTER TABLE operators.operators_users ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME operators.operators_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 324 (class 1259 OID 287367)
-- Name: supplies_delivered; Type: TABLE; Schema: operators; Owner: -
--

CREATE TABLE operators.supplies_delivered (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    download_report_url character varying(1000),
    downloaded boolean NOT NULL,
    downloaded_at timestamp without time zone,
    downloaded_by bigint,
    observations character varying(500),
    supply_code bigint NOT NULL,
    delivery_id bigint NOT NULL
);


--
-- TOC entry 323 (class 1259 OID 287365)
-- Name: supplies_delivered_id_seq; Type: SEQUENCE; Schema: operators; Owner: -
--

ALTER TABLE operators.supplies_delivered ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME operators.supplies_delivered_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 4847 (class 2606 OID 287340)
-- Name: deliveries deliveries_pkey; Type: CONSTRAINT; Schema: operators; Owner: -
--

ALTER TABLE ONLY operators.deliveries
    ADD CONSTRAINT deliveries_pkey PRIMARY KEY (id);


--
-- TOC entry 4849 (class 2606 OID 287350)
-- Name: operators operators_pkey; Type: CONSTRAINT; Schema: operators; Owner: -
--

ALTER TABLE ONLY operators.operators
    ADD CONSTRAINT operators_pkey PRIMARY KEY (id);


--
-- TOC entry 4851 (class 2606 OID 287357)
-- Name: operators_states operators_states_pkey; Type: CONSTRAINT; Schema: operators; Owner: -
--

ALTER TABLE ONLY operators.operators_states
    ADD CONSTRAINT operators_states_pkey PRIMARY KEY (id);


--
-- TOC entry 4853 (class 2606 OID 287364)
-- Name: operators_users operators_users_pkey; Type: CONSTRAINT; Schema: operators; Owner: -
--

ALTER TABLE ONLY operators.operators_users
    ADD CONSTRAINT operators_users_pkey PRIMARY KEY (id);


--
-- TOC entry 4855 (class 2606 OID 287374)
-- Name: supplies_delivered supplies_delivered_pkey; Type: CONSTRAINT; Schema: operators; Owner: -
--

ALTER TABLE ONLY operators.supplies_delivered
    ADD CONSTRAINT supplies_delivered_pkey PRIMARY KEY (id);


--
-- TOC entry 4859 (class 2606 OID 287390)
-- Name: supplies_delivered fk2ncpuoqqwylr1kqucgr50qo7v; Type: FK CONSTRAINT; Schema: operators; Owner: -
--

ALTER TABLE ONLY operators.supplies_delivered
    ADD CONSTRAINT fk2ncpuoqqwylr1kqucgr50qo7v FOREIGN KEY (delivery_id) REFERENCES operators.deliveries(id);


--
-- TOC entry 4856 (class 2606 OID 287375)
-- Name: deliveries fk7y1de51e1guer6w1le5dxihf0; Type: FK CONSTRAINT; Schema: operators; Owner: -
--

ALTER TABLE ONLY operators.deliveries
    ADD CONSTRAINT fk7y1de51e1guer6w1le5dxihf0 FOREIGN KEY (operator_id) REFERENCES operators.operators(id);


--
-- TOC entry 4858 (class 2606 OID 287385)
-- Name: operators_users fk9rj5yw8f3rw8wfx89mwq0yqe9; Type: FK CONSTRAINT; Schema: operators; Owner: -
--

ALTER TABLE ONLY operators.operators_users
    ADD CONSTRAINT fk9rj5yw8f3rw8wfx89mwq0yqe9 FOREIGN KEY (operator_id) REFERENCES operators.operators(id);


--
-- TOC entry 4857 (class 2606 OID 287380)
-- Name: operators fkdkichydjv0g7r2dox2dxkdbik; Type: FK CONSTRAINT; Schema: operators; Owner: -
--

ALTER TABLE ONLY operators.operators
    ADD CONSTRAINT fkdkichydjv0g7r2dox2dxkdbik FOREIGN KEY (operator_state_id) REFERENCES operators.operators_states(id);


-- Completed on 2020-10-16 10:00:45 -05

--
-- PostgreSQL database dump complete
--
