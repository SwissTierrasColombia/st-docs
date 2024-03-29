--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2 (Debian 11.2-1.pgdg90+1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-4)

-- Started on 2021-05-07 10:40:42 -05

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
-- TOC entry 15 (class 2615 OID 496067)
-- Name: administration; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA administration;


SET default_tablespace = '';

--
-- TOC entry 359 (class 1259 OID 510455)
-- Name: codes; Type: TABLE; Schema: administration; Owner: -
--

CREATE TABLE administration.codes (
    id bigint NOT NULL,
    available boolean NOT NULL,
    code character varying(50) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    expired_at timestamp without time zone NOT NULL,
    user_id bigint NOT NULL
);


--
-- TOC entry 358 (class 1259 OID 510453)
-- Name: codes_id_seq; Type: SEQUENCE; Schema: administration; Owner: -
--

ALTER TABLE administration.codes ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME administration.codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 361 (class 1259 OID 510462)
-- Name: permissions; Type: TABLE; Schema: administration; Owner: -
--

CREATE TABLE administration.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 360 (class 1259 OID 510460)
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: administration; Owner: -
--

ALTER TABLE administration.permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME administration.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 363 (class 1259 OID 510469)
-- Name: roles; Type: TABLE; Schema: administration; Owner: -
--

CREATE TABLE administration.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 362 (class 1259 OID 510467)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: administration; Owner: -
--

ALTER TABLE administration.roles ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME administration.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 364 (class 1259 OID 510474)
-- Name: roles_x_permissions; Type: TABLE; Schema: administration; Owner: -
--

CREATE TABLE administration.roles_x_permissions (
    role_id bigint NOT NULL,
    permission_id bigint NOT NULL
);


--
-- TOC entry 366 (class 1259 OID 510481)
-- Name: users; Type: TABLE; Schema: administration; Owner: -
--

CREATE TABLE administration.users (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    email character varying(100) NOT NULL,
    enabled boolean NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    updated_at timestamp without time zone,
    username character varying(100) NOT NULL
);


--
-- TOC entry 365 (class 1259 OID 510479)
-- Name: users_id_seq; Type: SEQUENCE; Schema: administration; Owner: -
--

ALTER TABLE administration.users ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME administration.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 367 (class 1259 OID 510489)
-- Name: users_x_roles; Type: TABLE; Schema: administration; Owner: -
--

CREATE TABLE administration.users_x_roles (
    user_id bigint NOT NULL,
    role_id bigint NOT NULL
);


--
-- TOC entry 4891 (class 2606 OID 510459)
-- Name: codes codes_pkey; Type: CONSTRAINT; Schema: administration; Owner: -
--

ALTER TABLE ONLY administration.codes
    ADD CONSTRAINT codes_pkey PRIMARY KEY (id);


--
-- TOC entry 4893 (class 2606 OID 510466)
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: administration; Owner: -
--

ALTER TABLE ONLY administration.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 4895 (class 2606 OID 510473)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: administration; Owner: -
--

ALTER TABLE ONLY administration.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4897 (class 2606 OID 510478)
-- Name: roles_x_permissions roles_x_permissions_pkey; Type: CONSTRAINT; Schema: administration; Owner: -
--

ALTER TABLE ONLY administration.roles_x_permissions
    ADD CONSTRAINT roles_x_permissions_pkey PRIMARY KEY (role_id, permission_id);


--
-- TOC entry 4899 (class 2606 OID 510493)
-- Name: users uk_r43af9ap4edm43mmtq01oddj6; Type: CONSTRAINT; Schema: administration; Owner: -
--

ALTER TABLE ONLY administration.users
    ADD CONSTRAINT uk_r43af9ap4edm43mmtq01oddj6 UNIQUE (username);


--
-- TOC entry 4901 (class 2606 OID 510488)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: administration; Owner: -
--

ALTER TABLE ONLY administration.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4906 (class 2606 OID 510514)
-- Name: users_x_roles fk5m3oxlveydoa436r304vaaehn; Type: FK CONSTRAINT; Schema: administration; Owner: -
--

ALTER TABLE ONLY administration.users_x_roles
    ADD CONSTRAINT fk5m3oxlveydoa436r304vaaehn FOREIGN KEY (user_id) REFERENCES administration.users(id);


--
-- TOC entry 4905 (class 2606 OID 510509)
-- Name: users_x_roles fk60659q5rov7mrdxwbmkc6156y; Type: FK CONSTRAINT; Schema: administration; Owner: -
--

ALTER TABLE ONLY administration.users_x_roles
    ADD CONSTRAINT fk60659q5rov7mrdxwbmkc6156y FOREIGN KEY (role_id) REFERENCES administration.roles(id);


--
-- TOC entry 4902 (class 2606 OID 510494)
-- Name: codes fk8ry3r9xl1dqixqp9dyrxehcsq; Type: FK CONSTRAINT; Schema: administration; Owner: -
--

ALTER TABLE ONLY administration.codes
    ADD CONSTRAINT fk8ry3r9xl1dqixqp9dyrxehcsq FOREIGN KEY (user_id) REFERENCES administration.users(id);


--
-- TOC entry 4904 (class 2606 OID 510504)
-- Name: roles_x_permissions fkdw5l2fd28ajnt9agpi3m9dw5w; Type: FK CONSTRAINT; Schema: administration; Owner: -
--

ALTER TABLE ONLY administration.roles_x_permissions
    ADD CONSTRAINT fkdw5l2fd28ajnt9agpi3m9dw5w FOREIGN KEY (role_id) REFERENCES administration.roles(id);


--
-- TOC entry 4903 (class 2606 OID 510499)
-- Name: roles_x_permissions fkphaj22xwadb0vd7vp8qcoo1rb; Type: FK CONSTRAINT; Schema: administration; Owner: -
--

ALTER TABLE ONLY administration.roles_x_permissions
    ADD CONSTRAINT fkphaj22xwadb0vd7vp8qcoo1rb FOREIGN KEY (permission_id) REFERENCES administration.permissions(id);


-- Completed on 2021-05-07 10:40:42 -05

--
-- PostgreSQL database dump complete
--

