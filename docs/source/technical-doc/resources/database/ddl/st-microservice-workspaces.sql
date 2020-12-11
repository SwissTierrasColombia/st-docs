--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Debian 11.5-1+deb10u1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-4)

-- Started on 2020-08-27 13:09:09 -05

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
-- TOC entry 10 (class 2615 OID 19612)
-- Name: workspaces; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA workspaces;


SET default_tablespace = '';

--
-- TOC entry 305 (class 1259 OID 19613)
-- Name: departments; Type: TABLE; Schema: workspaces; Owner: -
--

CREATE TABLE workspaces.departments (
    id bigint NOT NULL,
    code character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 306 (class 1259 OID 19619)
-- Name: departments_id_seq; Type: SEQUENCE; Schema: workspaces; Owner: -
--

ALTER TABLE workspaces.departments ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME workspaces.departments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 307 (class 1259 OID 19621)
-- Name: integrations; Type: TABLE; Schema: workspaces; Owner: -
--

CREATE TABLE workspaces.integrations (
    id bigint NOT NULL,
    database character varying(255) NOT NULL,
    finished_at timestamp without time zone,
    hostname character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    port character varying(255) NOT NULL,
    schema character varying(255) NOT NULL,
    started_at timestamp without time zone NOT NULL,
    supply_ant_id bigint,
    supply_cadastre_id bigint NOT NULL,
    supply_snr_id bigint NOT NULL,
    username character varying(255) NOT NULL,
    integration_state_id bigint NOT NULL,
    workspace_id bigint NOT NULL
);


--
-- TOC entry 308 (class 1259 OID 19627)
-- Name: integrations_histories; Type: TABLE; Schema: workspaces; Owner: -
--

CREATE TABLE workspaces.integrations_histories (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    manager_code bigint,
    user_code bigint,
    user_name character varying(300) NOT NULL,
    integration_id bigint NOT NULL,
    integration_state_id bigint NOT NULL
);


--
-- TOC entry 309 (class 1259 OID 19630)
-- Name: integrations_histories_id_seq; Type: SEQUENCE; Schema: workspaces; Owner: -
--

ALTER TABLE workspaces.integrations_histories ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME workspaces.integrations_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 310 (class 1259 OID 19632)
-- Name: integrations_id_seq; Type: SEQUENCE; Schema: workspaces; Owner: -
--

ALTER TABLE workspaces.integrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME workspaces.integrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 311 (class 1259 OID 19634)
-- Name: integrations_states; Type: TABLE; Schema: workspaces; Owner: -
--

CREATE TABLE workspaces.integrations_states (
    id bigint NOT NULL,
    description character varying(255),
    name character varying(255) NOT NULL
);


--
-- TOC entry 312 (class 1259 OID 19640)
-- Name: integrations_states_id_seq; Type: SEQUENCE; Schema: workspaces; Owner: -
--

ALTER TABLE workspaces.integrations_states ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME workspaces.integrations_states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 313 (class 1259 OID 19642)
-- Name: integrations_stats; Type: TABLE; Schema: workspaces; Owner: -
--

CREATE TABLE workspaces.integrations_stats (
    id bigint NOT NULL,
    ant_records_number bigint,
    cadastre_records_number bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    match_number bigint NOT NULL,
    percentage double precision NOT NULL,
    snr_records_number bigint NOT NULL,
    integration_id bigint NOT NULL
);


--
-- TOC entry 314 (class 1259 OID 19645)
-- Name: integrations_stats_id_seq; Type: SEQUENCE; Schema: workspaces; Owner: -
--

ALTER TABLE workspaces.integrations_stats ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME workspaces.integrations_stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 315 (class 1259 OID 19647)
-- Name: milestones; Type: TABLE; Schema: workspaces; Owner: -
--

CREATE TABLE workspaces.milestones (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 316 (class 1259 OID 19650)
-- Name: milestones_id_seq; Type: SEQUENCE; Schema: workspaces; Owner: -
--

ALTER TABLE workspaces.milestones ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME workspaces.milestones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 317 (class 1259 OID 19652)
-- Name: municipalities; Type: TABLE; Schema: workspaces; Owner: -
--

CREATE TABLE workspaces.municipalities (
    id bigint NOT NULL,
    code character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    department_id bigint NOT NULL
);


--
-- TOC entry 318 (class 1259 OID 19658)
-- Name: municipalities_id_seq; Type: SEQUENCE; Schema: workspaces; Owner: -
--

ALTER TABLE workspaces.municipalities ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME workspaces.municipalities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 319 (class 1259 OID 19660)
-- Name: states; Type: TABLE; Schema: workspaces; Owner: -
--

CREATE TABLE workspaces.states (
    id bigint NOT NULL,
    description character varying(255),
    name character varying(255) NOT NULL
);


--
-- TOC entry 320 (class 1259 OID 19666)
-- Name: states_id_seq; Type: SEQUENCE; Schema: workspaces; Owner: -
--

ALTER TABLE workspaces.states ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME workspaces.states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 321 (class 1259 OID 19668)
-- Name: supports; Type: TABLE; Schema: workspaces; Owner: -
--

CREATE TABLE workspaces.supports (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    url_documentary_repository character varying(255) NOT NULL,
    milestone_id bigint NOT NULL,
    workspace_id bigint NOT NULL
);


--
-- TOC entry 322 (class 1259 OID 19671)
-- Name: supports_id_seq; Type: SEQUENCE; Schema: workspaces; Owner: -
--

ALTER TABLE workspaces.supports ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME workspaces.supports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 323 (class 1259 OID 19673)
-- Name: workspace_operators; Type: TABLE; Schema: workspaces; Owner: -
--

CREATE TABLE workspaces.workspace_operators (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    end_date timestamp without time zone,
    number_parcels_expected bigint,
    observations character varying(255),
    operator_code bigint NOT NULL,
    start_date timestamp without time zone,
    work_area double precision,
    workspace_id bigint NOT NULL
);


--
-- TOC entry 324 (class 1259 OID 19676)
-- Name: workspace_operators_id_seq; Type: SEQUENCE; Schema: workspaces; Owner: -
--

ALTER TABLE workspaces.workspace_operators ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME workspaces.workspace_operators_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 325 (class 1259 OID 19678)
-- Name: workspaces; Type: TABLE; Schema: workspaces; Owner: -
--

CREATE TABLE workspaces.workspaces (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    is_active boolean,
    manager_code bigint NOT NULL,
    municipality_area double precision,
    number_alphanumeric_parcels bigint,
    observations character varying(255) NOT NULL,
    start_date date NOT NULL,
    updated_at timestamp without time zone,
    version bigint NOT NULL,
    municipality_id bigint NOT NULL,
    state_id bigint NOT NULL,
    workspace_id bigint
);


--
-- TOC entry 326 (class 1259 OID 19681)
-- Name: workspaces_id_seq; Type: SEQUENCE; Schema: workspaces; Owner: -
--

ALTER TABLE workspaces.workspaces ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME workspaces.workspaces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 327 (class 1259 OID 19683)
-- Name: workspaces_states; Type: TABLE; Schema: workspaces; Owner: -
--

CREATE TABLE workspaces.workspaces_states (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    state_id bigint NOT NULL,
    workspace_id bigint NOT NULL
);


--
-- TOC entry 328 (class 1259 OID 19686)
-- Name: workspaces_states_id_seq; Type: SEQUENCE; Schema: workspaces; Owner: -
--

ALTER TABLE workspaces.workspaces_states ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME workspaces.workspaces_states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3140 (class 2606 OID 19689)
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


--
-- TOC entry 3144 (class 2606 OID 19691)
-- Name: integrations_histories integrations_histories_pkey; Type: CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.integrations_histories
    ADD CONSTRAINT integrations_histories_pkey PRIMARY KEY (id);


--
-- TOC entry 3142 (class 2606 OID 19693)
-- Name: integrations integrations_pkey; Type: CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.integrations
    ADD CONSTRAINT integrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3146 (class 2606 OID 19695)
-- Name: integrations_states integrations_states_pkey; Type: CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.integrations_states
    ADD CONSTRAINT integrations_states_pkey PRIMARY KEY (id);


--
-- TOC entry 3148 (class 2606 OID 19697)
-- Name: integrations_stats integrations_stats_pkey; Type: CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.integrations_stats
    ADD CONSTRAINT integrations_stats_pkey PRIMARY KEY (id);


--
-- TOC entry 3150 (class 2606 OID 19699)
-- Name: milestones milestones_pkey; Type: CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.milestones
    ADD CONSTRAINT milestones_pkey PRIMARY KEY (id);


--
-- TOC entry 3152 (class 2606 OID 19701)
-- Name: municipalities municipalities_pkey; Type: CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.municipalities
    ADD CONSTRAINT municipalities_pkey PRIMARY KEY (id);


--
-- TOC entry 3154 (class 2606 OID 19703)
-- Name: states states_pkey; Type: CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);


--
-- TOC entry 3156 (class 2606 OID 19705)
-- Name: supports supports_pkey; Type: CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.supports
    ADD CONSTRAINT supports_pkey PRIMARY KEY (id);


--
-- TOC entry 3158 (class 2606 OID 19707)
-- Name: workspace_operators workspace_operators_pkey; Type: CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.workspace_operators
    ADD CONSTRAINT workspace_operators_pkey PRIMARY KEY (id);


--
-- TOC entry 3160 (class 2606 OID 19709)
-- Name: workspaces workspaces_pkey; Type: CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.workspaces
    ADD CONSTRAINT workspaces_pkey PRIMARY KEY (id);


--
-- TOC entry 3162 (class 2606 OID 19711)
-- Name: workspaces_states workspaces_states_pkey; Type: CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.workspaces_states
    ADD CONSTRAINT workspaces_states_pkey PRIMARY KEY (id);


--
-- TOC entry 3165 (class 2606 OID 19712)
-- Name: integrations_histories fk22lcf7sk847shkiqemx9mmheo; Type: FK CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.integrations_histories
    ADD CONSTRAINT fk22lcf7sk847shkiqemx9mmheo FOREIGN KEY (integration_state_id) REFERENCES workspaces.integrations_states(id);


--
-- TOC entry 3175 (class 2606 OID 19717)
-- Name: workspaces_states fk6w527ela400m98ug63nyfgqrh; Type: FK CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.workspaces_states
    ADD CONSTRAINT fk6w527ela400m98ug63nyfgqrh FOREIGN KEY (state_id) REFERENCES workspaces.states(id);


--
-- TOC entry 3163 (class 2606 OID 19722)
-- Name: integrations fk9upl96ljkw91e5kgxptp2usfw; Type: FK CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.integrations
    ADD CONSTRAINT fk9upl96ljkw91e5kgxptp2usfw FOREIGN KEY (integration_state_id) REFERENCES workspaces.integrations_states(id);


--
-- TOC entry 3172 (class 2606 OID 19727)
-- Name: workspaces fkb8odxsgj7w7odd35pdm21v9ag; Type: FK CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.workspaces
    ADD CONSTRAINT fkb8odxsgj7w7odd35pdm21v9ag FOREIGN KEY (workspace_id) REFERENCES workspaces.workspaces(id);


--
-- TOC entry 3164 (class 2606 OID 19732)
-- Name: integrations fkbrb65h3gd37lif5f9nyvrtwuv; Type: FK CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.integrations
    ADD CONSTRAINT fkbrb65h3gd37lif5f9nyvrtwuv FOREIGN KEY (workspace_id) REFERENCES workspaces.workspaces(id);


--
-- TOC entry 3168 (class 2606 OID 19737)
-- Name: municipalities fkbv7fvmtec7tpmhxb6ojlhgm6m; Type: FK CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.municipalities
    ADD CONSTRAINT fkbv7fvmtec7tpmhxb6ojlhgm6m FOREIGN KEY (department_id) REFERENCES workspaces.departments(id);


--
-- TOC entry 3167 (class 2606 OID 19742)
-- Name: integrations_stats fkfi59r439mkqwqa2aimpix6u7e; Type: FK CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.integrations_stats
    ADD CONSTRAINT fkfi59r439mkqwqa2aimpix6u7e FOREIGN KEY (integration_id) REFERENCES workspaces.integrations(id);


--
-- TOC entry 3173 (class 2606 OID 19747)
-- Name: workspaces fkjldsn4jpiwv96fkfw31qsbjkx; Type: FK CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.workspaces
    ADD CONSTRAINT fkjldsn4jpiwv96fkfw31qsbjkx FOREIGN KEY (state_id) REFERENCES workspaces.states(id);


--
-- TOC entry 3171 (class 2606 OID 19752)
-- Name: workspace_operators fkklakxhmuhmf6ekqu4m2g2r747; Type: FK CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.workspace_operators
    ADD CONSTRAINT fkklakxhmuhmf6ekqu4m2g2r747 FOREIGN KEY (workspace_id) REFERENCES workspaces.workspaces(id);


--
-- TOC entry 3174 (class 2606 OID 19757)
-- Name: workspaces fkmo4nentxq08qcfy4uwxh7v5ud; Type: FK CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.workspaces
    ADD CONSTRAINT fkmo4nentxq08qcfy4uwxh7v5ud FOREIGN KEY (municipality_id) REFERENCES workspaces.municipalities(id);


--
-- TOC entry 3169 (class 2606 OID 19762)
-- Name: supports fkn7rg3vaed84n8y70lph4huyk1; Type: FK CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.supports
    ADD CONSTRAINT fkn7rg3vaed84n8y70lph4huyk1 FOREIGN KEY (milestone_id) REFERENCES workspaces.milestones(id);


--
-- TOC entry 3170 (class 2606 OID 19767)
-- Name: supports fkrq9mou12qhi7e4tk0m2rg4qt5; Type: FK CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.supports
    ADD CONSTRAINT fkrq9mou12qhi7e4tk0m2rg4qt5 FOREIGN KEY (workspace_id) REFERENCES workspaces.workspaces(id);


--
-- TOC entry 3176 (class 2606 OID 19772)
-- Name: workspaces_states fkt0u3vv5yv7a4jq0gnpayo9w7; Type: FK CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.workspaces_states
    ADD CONSTRAINT fkt0u3vv5yv7a4jq0gnpayo9w7 FOREIGN KEY (workspace_id) REFERENCES workspaces.workspaces(id);


--
-- TOC entry 3166 (class 2606 OID 19777)
-- Name: integrations_histories fktowme6te1tg8yup02jcyh38xo; Type: FK CONSTRAINT; Schema: workspaces; Owner: -
--

ALTER TABLE ONLY workspaces.integrations_histories
    ADD CONSTRAINT fktowme6te1tg8yup02jcyh38xo FOREIGN KEY (integration_id) REFERENCES workspaces.integrations(id);


-- Completed on 2020-08-27 13:09:19 -05

--
-- PostgreSQL database dump complete
--
