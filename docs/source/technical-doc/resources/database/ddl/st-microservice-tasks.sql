--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Debian 11.5-1+deb10u1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-4)

-- Started on 2020-08-27 15:11:17 -05

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
-- TOC entry 5 (class 2615 OID 19498)
-- Name: tasks; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA tasks;


SET default_tablespace = '';

--
-- TOC entry 288 (class 1259 OID 19499)
-- Name: tasks; Type: TABLE; Schema: tasks; Owner: -
--

CREATE TABLE tasks.tasks (
    id bigint NOT NULL,
    closing_date timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    deadline timestamp without time zone,
    description character varying(500),
    name character varying(255) NOT NULL,
    reason character varying(500),
    task_state_id bigint NOT NULL
);


--
-- TOC entry 289 (class 1259 OID 19505)
-- Name: tasks_categories; Type: TABLE; Schema: tasks; Owner: -
--

CREATE TABLE tasks.tasks_categories (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 290 (class 1259 OID 19508)
-- Name: tasks_categories_id_seq; Type: SEQUENCE; Schema: tasks; Owner: -
--

ALTER TABLE tasks.tasks_categories ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME tasks.tasks_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 291 (class 1259 OID 19510)
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: tasks; Owner: -
--

ALTER TABLE tasks.tasks ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME tasks.tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 292 (class 1259 OID 19512)
-- Name: tasks_members; Type: TABLE; Schema: tasks; Owner: -
--

CREATE TABLE tasks.tasks_members (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    member_code bigint NOT NULL,
    task_id bigint NOT NULL
);


--
-- TOC entry 293 (class 1259 OID 19515)
-- Name: tasks_members_id_seq; Type: SEQUENCE; Schema: tasks; Owner: -
--

ALTER TABLE tasks.tasks_members ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME tasks.tasks_members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 294 (class 1259 OID 19517)
-- Name: tasks_metadata; Type: TABLE; Schema: tasks; Owner: -
--

CREATE TABLE tasks.tasks_metadata (
    id bigint NOT NULL,
    key character varying(255) NOT NULL,
    task_id bigint NOT NULL
);


--
-- TOC entry 295 (class 1259 OID 19520)
-- Name: tasks_metadata_id_seq; Type: SEQUENCE; Schema: tasks; Owner: -
--

ALTER TABLE tasks.tasks_metadata ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME tasks.tasks_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 296 (class 1259 OID 19522)
-- Name: tasks_metadata_properties; Type: TABLE; Schema: tasks; Owner: -
--

CREATE TABLE tasks.tasks_metadata_properties (
    id bigint NOT NULL,
    key character varying(255) NOT NULL,
    value character varying(255) NOT NULL,
    metadata_id bigint NOT NULL
);


--
-- TOC entry 297 (class 1259 OID 19528)
-- Name: tasks_metadata_properties_id_seq; Type: SEQUENCE; Schema: tasks; Owner: -
--

ALTER TABLE tasks.tasks_metadata_properties ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME tasks.tasks_metadata_properties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 298 (class 1259 OID 19530)
-- Name: tasks_states; Type: TABLE; Schema: tasks; Owner: -
--

CREATE TABLE tasks.tasks_states (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 299 (class 1259 OID 19533)
-- Name: tasks_states_id_seq; Type: SEQUENCE; Schema: tasks; Owner: -
--

ALTER TABLE tasks.tasks_states ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME tasks.tasks_states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 300 (class 1259 OID 19535)
-- Name: tasks_steps; Type: TABLE; Schema: tasks; Owner: -
--

CREATE TABLE tasks.tasks_steps (
    id bigint NOT NULL,
    code character varying(20) NOT NULL,
    description character varying(1000) NOT NULL,
    status boolean NOT NULL,
    step_id bigint,
    task_id bigint NOT NULL,
    task_type_step_id bigint NOT NULL
);


--
-- TOC entry 301 (class 1259 OID 19541)
-- Name: tasks_steps_id_seq; Type: SEQUENCE; Schema: tasks; Owner: -
--

ALTER TABLE tasks.tasks_steps ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME tasks.tasks_steps_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 302 (class 1259 OID 19543)
-- Name: tasks_types_steps; Type: TABLE; Schema: tasks; Owner: -
--

CREATE TABLE tasks.tasks_types_steps (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 303 (class 1259 OID 19546)
-- Name: tasks_types_steps_id_seq; Type: SEQUENCE; Schema: tasks; Owner: -
--

ALTER TABLE tasks.tasks_types_steps ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME tasks.tasks_types_steps_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 304 (class 1259 OID 19548)
-- Name: tasks_x_categories; Type: TABLE; Schema: tasks; Owner: -
--

CREATE TABLE tasks.tasks_x_categories (
    task_id bigint NOT NULL,
    category_id bigint NOT NULL
);


--
-- TOC entry 3139 (class 2606 OID 19552)
-- Name: tasks_categories tasks_categories_pkey; Type: CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks_categories
    ADD CONSTRAINT tasks_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3141 (class 2606 OID 19554)
-- Name: tasks_members tasks_members_pkey; Type: CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks_members
    ADD CONSTRAINT tasks_members_pkey PRIMARY KEY (id);


--
-- TOC entry 3143 (class 2606 OID 19556)
-- Name: tasks_metadata tasks_metadata_pkey; Type: CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks_metadata
    ADD CONSTRAINT tasks_metadata_pkey PRIMARY KEY (id);


--
-- TOC entry 3145 (class 2606 OID 19558)
-- Name: tasks_metadata_properties tasks_metadata_properties_pkey; Type: CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks_metadata_properties
    ADD CONSTRAINT tasks_metadata_properties_pkey PRIMARY KEY (id);


--
-- TOC entry 3137 (class 2606 OID 19560)
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- TOC entry 3147 (class 2606 OID 19562)
-- Name: tasks_states tasks_states_pkey; Type: CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks_states
    ADD CONSTRAINT tasks_states_pkey PRIMARY KEY (id);


--
-- TOC entry 3149 (class 2606 OID 19564)
-- Name: tasks_steps tasks_steps_pkey; Type: CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks_steps
    ADD CONSTRAINT tasks_steps_pkey PRIMARY KEY (id);


--
-- TOC entry 3151 (class 2606 OID 19566)
-- Name: tasks_types_steps tasks_types_steps_pkey; Type: CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks_types_steps
    ADD CONSTRAINT tasks_types_steps_pkey PRIMARY KEY (id);


--
-- TOC entry 3153 (class 2606 OID 19567)
-- Name: tasks_members fk2ffgbngedy5k8g9jphuemkx0i; Type: FK CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks_members
    ADD CONSTRAINT fk2ffgbngedy5k8g9jphuemkx0i FOREIGN KEY (task_id) REFERENCES tasks.tasks(id);


--
-- TOC entry 3156 (class 2606 OID 19572)
-- Name: tasks_steps fk91eqoe255e72lsmpkxo6psvmx; Type: FK CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks_steps
    ADD CONSTRAINT fk91eqoe255e72lsmpkxo6psvmx FOREIGN KEY (task_id) REFERENCES tasks.tasks(id);


--
-- TOC entry 3159 (class 2606 OID 19577)
-- Name: tasks_x_categories fkb4cb0gqnvfbf5ocarsrl06pub; Type: FK CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks_x_categories
    ADD CONSTRAINT fkb4cb0gqnvfbf5ocarsrl06pub FOREIGN KEY (category_id) REFERENCES tasks.tasks_categories(id);


--
-- TOC entry 3154 (class 2606 OID 19582)
-- Name: tasks_metadata fki3ykfnubwe9x93mtfvbg1sdko; Type: FK CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks_metadata
    ADD CONSTRAINT fki3ykfnubwe9x93mtfvbg1sdko FOREIGN KEY (task_id) REFERENCES tasks.tasks(id);


--
-- TOC entry 3157 (class 2606 OID 19587)
-- Name: tasks_steps fkmh1uts5s7p5i78ya704i9dvx3; Type: FK CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks_steps
    ADD CONSTRAINT fkmh1uts5s7p5i78ya704i9dvx3 FOREIGN KEY (task_type_step_id) REFERENCES tasks.tasks_types_steps(id);


--
-- TOC entry 3158 (class 2606 OID 19592)
-- Name: tasks_steps fkmn0ex8gysk22vtt0anfy271jw; Type: FK CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks_steps
    ADD CONSTRAINT fkmn0ex8gysk22vtt0anfy271jw FOREIGN KEY (step_id) REFERENCES tasks.tasks_steps(id);


--
-- TOC entry 3155 (class 2606 OID 19597)
-- Name: tasks_metadata_properties fkn41ds9u9mdvobrd8sxiw9as6p; Type: FK CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks_metadata_properties
    ADD CONSTRAINT fkn41ds9u9mdvobrd8sxiw9as6p FOREIGN KEY (metadata_id) REFERENCES tasks.tasks_metadata(id);


--
-- TOC entry 3152 (class 2606 OID 19602)
-- Name: tasks fkpw2opc7ay9q1wua1kkbmwg7qc; Type: FK CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks
    ADD CONSTRAINT fkpw2opc7ay9q1wua1kkbmwg7qc FOREIGN KEY (task_state_id) REFERENCES tasks.tasks_states(id);


--
-- TOC entry 3160 (class 2606 OID 19607)
-- Name: tasks_x_categories fkrltxlgup2ma7fp2jxy26gpqvs; Type: FK CONSTRAINT; Schema: tasks; Owner: -
--

ALTER TABLE ONLY tasks.tasks_x_categories
    ADD CONSTRAINT fkrltxlgup2ma7fp2jxy26gpqvs FOREIGN KEY (task_id) REFERENCES tasks.tasks(id);


-- Completed on 2020-08-27 15:11:37 -05

--
-- PostgreSQL database dump complete
--

