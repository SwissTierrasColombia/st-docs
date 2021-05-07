--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2 (Debian 11.2-1.pgdg90+1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-4)

-- Started on 2021-05-07 10:44:20 -05

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
-- TOC entry 17 (class 2615 OID 496069)
-- Name: managers; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA managers;


SET default_tablespace = '';

--
-- TOC entry 369 (class 1259 OID 510521)
-- Name: managers; Type: TABLE; Schema: managers; Owner: -
--

CREATE TABLE managers.managers (
    id bigint NOT NULL,
    alias character varying(20),
    created_at timestamp without time zone NOT NULL,
    name character varying(255) NOT NULL,
    tax_identification_number character varying(255) NOT NULL,
    manager_state_id bigint NOT NULL
);


--
-- TOC entry 368 (class 1259 OID 510519)
-- Name: managers_id_seq; Type: SEQUENCE; Schema: managers; Owner: -
--

ALTER TABLE managers.managers ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME managers.managers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 371 (class 1259 OID 510531)
-- Name: managers_profiles; Type: TABLE; Schema: managers; Owner: -
--

CREATE TABLE managers.managers_profiles (
    id bigint NOT NULL,
    description character varying(255),
    name character varying(255) NOT NULL
);


--
-- TOC entry 370 (class 1259 OID 510529)
-- Name: managers_profiles_id_seq; Type: SEQUENCE; Schema: managers; Owner: -
--

ALTER TABLE managers.managers_profiles ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME managers.managers_profiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 373 (class 1259 OID 510541)
-- Name: managers_states; Type: TABLE; Schema: managers; Owner: -
--

CREATE TABLE managers.managers_states (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 372 (class 1259 OID 510539)
-- Name: managers_states_id_seq; Type: SEQUENCE; Schema: managers; Owner: -
--

ALTER TABLE managers.managers_states ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME managers.managers_states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 375 (class 1259 OID 510548)
-- Name: managers_users; Type: TABLE; Schema: managers; Owner: -
--

CREATE TABLE managers.managers_users (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    user_code bigint NOT NULL,
    manager_id bigint NOT NULL,
    manager_profile_id bigint NOT NULL
);


--
-- TOC entry 374 (class 1259 OID 510546)
-- Name: managers_users_id_seq; Type: SEQUENCE; Schema: managers; Owner: -
--

ALTER TABLE managers.managers_users ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME managers.managers_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 4889 (class 2606 OID 510528)
-- Name: managers managers_pkey; Type: CONSTRAINT; Schema: managers; Owner: -
--

ALTER TABLE ONLY managers.managers
    ADD CONSTRAINT managers_pkey PRIMARY KEY (id);


--
-- TOC entry 4891 (class 2606 OID 510538)
-- Name: managers_profiles managers_profiles_pkey; Type: CONSTRAINT; Schema: managers; Owner: -
--

ALTER TABLE ONLY managers.managers_profiles
    ADD CONSTRAINT managers_profiles_pkey PRIMARY KEY (id);


--
-- TOC entry 4893 (class 2606 OID 510545)
-- Name: managers_states managers_states_pkey; Type: CONSTRAINT; Schema: managers; Owner: -
--

ALTER TABLE ONLY managers.managers_states
    ADD CONSTRAINT managers_states_pkey PRIMARY KEY (id);


--
-- TOC entry 4895 (class 2606 OID 510552)
-- Name: managers_users managers_users_pkey; Type: CONSTRAINT; Schema: managers; Owner: -
--

ALTER TABLE ONLY managers.managers_users
    ADD CONSTRAINT managers_users_pkey PRIMARY KEY (id);


--
-- TOC entry 4897 (class 2606 OID 510558)
-- Name: managers_users fk63eupshs046f9xlbsk3rb0ad; Type: FK CONSTRAINT; Schema: managers; Owner: -
--

ALTER TABLE ONLY managers.managers_users
    ADD CONSTRAINT fk63eupshs046f9xlbsk3rb0ad FOREIGN KEY (manager_id) REFERENCES managers.managers(id);


--
-- TOC entry 4898 (class 2606 OID 510563)
-- Name: managers_users fkj1dmw9fd81effm2o89x8nwrwm; Type: FK CONSTRAINT; Schema: managers; Owner: -
--

ALTER TABLE ONLY managers.managers_users
    ADD CONSTRAINT fkj1dmw9fd81effm2o89x8nwrwm FOREIGN KEY (manager_profile_id) REFERENCES managers.managers_profiles(id);


--
-- TOC entry 4896 (class 2606 OID 510553)
-- Name: managers fkpvpt8pfl0ls0ei2ywcxb0m79d; Type: FK CONSTRAINT; Schema: managers; Owner: -
--

ALTER TABLE ONLY managers.managers
    ADD CONSTRAINT fkpvpt8pfl0ls0ei2ywcxb0m79d FOREIGN KEY (manager_state_id) REFERENCES managers.managers_states(id);


-- Completed on 2021-05-07 10:44:20 -05

--
-- PostgreSQL database dump complete
--

