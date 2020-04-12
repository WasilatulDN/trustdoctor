--
-- PostgreSQL database dump
--

-- Dumped from database version 11.7
-- Dumped by pg_dump version 11.7

-- Started on 2020-04-12 22:39:18

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

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16434)
-- Name: dokter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dokter (
    iddokter integer NOT NULL,
    nama character varying(200) DEFAULT NULL::character varying,
    str character varying(200) DEFAULT NULL::character varying,
    email character varying(200) DEFAULT NULL::character varying,
    username character varying(100) DEFAULT NULL::character varying,
    password character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.dokter OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16432)
-- Name: dokter_iddokter_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dokter_iddokter_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dokter_iddokter_seq OWNER TO postgres;

--
-- TOC entry 2855 (class 0 OID 0)
-- Dependencies: 196
-- Name: dokter_iddokter_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dokter_iddokter_seq OWNED BY public.dokter.iddokter;


--
-- TOC entry 201 (class 1259 OID 16465)
-- Name: konsultasi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.konsultasi (
    idkonsultasi integer NOT NULL,
    idpasien integer,
    iddokter integer,
    tanggal date,
    jkel character varying(50) DEFAULT NULL::character varying,
    usia character varying(50) DEFAULT NULL::character varying,
    keluhan character varying(500) DEFAULT NULL::character varying,
    detail character varying(500) DEFAULT NULL::character varying,
    dijawab integer,
    jawaban character varying(500) DEFAULT NULL::character varying
);


ALTER TABLE public.konsultasi OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16463)
-- Name: konsultasi_idkonsultasi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.konsultasi_idkonsultasi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.konsultasi_idkonsultasi_seq OWNER TO postgres;

--
-- TOC entry 2856 (class 0 OID 0)
-- Dependencies: 200
-- Name: konsultasi_idkonsultasi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.konsultasi_idkonsultasi_seq OWNED BY public.konsultasi.idkonsultasi;


--
-- TOC entry 199 (class 1259 OID 16450)
-- Name: pasien; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pasien (
    idpasien integer NOT NULL,
    nama character varying(200) DEFAULT NULL::character varying,
    email character varying(200) DEFAULT NULL::character varying,
    username character varying(100) DEFAULT NULL::character varying,
    password character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.pasien OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16448)
-- Name: pasien_idpasien_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pasien_idpasien_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pasien_idpasien_seq OWNER TO postgres;

--
-- TOC entry 2857 (class 0 OID 0)
-- Dependencies: 198
-- Name: pasien_idpasien_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pasien_idpasien_seq OWNED BY public.pasien.idpasien;


--
-- TOC entry 2700 (class 2604 OID 16437)
-- Name: dokter iddokter; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dokter ALTER COLUMN iddokter SET DEFAULT nextval('public.dokter_iddokter_seq'::regclass);


--
-- TOC entry 2711 (class 2604 OID 16468)
-- Name: konsultasi idkonsultasi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.konsultasi ALTER COLUMN idkonsultasi SET DEFAULT nextval('public.konsultasi_idkonsultasi_seq'::regclass);


--
-- TOC entry 2706 (class 2604 OID 16453)
-- Name: pasien idpasien; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasien ALTER COLUMN idpasien SET DEFAULT nextval('public.pasien_idpasien_seq'::regclass);


--
-- TOC entry 2845 (class 0 OID 16434)
-- Dependencies: 197
-- Data for Name: dokter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dokter (iddokter, nama, str, email, username, password) FROM stdin;
1	saya sendiri	123	saya@email.com	saya	$2y$12$b1VNV09GRG5SdzRnODd5Mu49J1LfmAoTzaLjHwsrmlGILdJqWZHtm
\.


--
-- TOC entry 2849 (class 0 OID 16465)
-- Dependencies: 201
-- Data for Name: konsultasi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.konsultasi (idkonsultasi, idpasien, iddokter, tanggal, jkel, usia, keluhan, detail, dijawab, jawaban) FROM stdin;
\.


--
-- TOC entry 2847 (class 0 OID 16450)
-- Dependencies: 199
-- Data for Name: pasien; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pasien (idpasien, nama, email, username, password) FROM stdin;
\.


--
-- TOC entry 2858 (class 0 OID 0)
-- Dependencies: 196
-- Name: dokter_iddokter_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dokter_iddokter_seq', 1, true);


--
-- TOC entry 2859 (class 0 OID 0)
-- Dependencies: 200
-- Name: konsultasi_idkonsultasi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.konsultasi_idkonsultasi_seq', 1, false);


--
-- TOC entry 2860 (class 0 OID 0)
-- Dependencies: 198
-- Name: pasien_idpasien_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pasien_idpasien_seq', 1, false);


--
-- TOC entry 2718 (class 2606 OID 16447)
-- Name: dokter dokter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dokter
    ADD CONSTRAINT dokter_pkey PRIMARY KEY (iddokter);


--
-- TOC entry 2722 (class 2606 OID 16478)
-- Name: konsultasi konsultasi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.konsultasi
    ADD CONSTRAINT konsultasi_pkey PRIMARY KEY (idkonsultasi);


--
-- TOC entry 2720 (class 2606 OID 16462)
-- Name: pasien pasien_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasien
    ADD CONSTRAINT pasien_pkey PRIMARY KEY (idpasien);


-- Completed on 2020-04-12 22:39:18

--
-- PostgreSQL database dump complete
--

