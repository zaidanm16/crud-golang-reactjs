--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Debian 15.4-1.pgdg120+1)
-- Dumped by pg_dump version 15.4 (Debian 15.4-1.pgdg120+1)

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

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name text,
    email text,
    date timestamp with time zone,
    city text,
    country text
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, date, city, country) FROM stdin;
1	Udin	udin@udin.com	2000-09-09 00:00:00+00	Tjimahi	Indonesia
2	Kepin	kevin@udin.com	2000-08-16 00:00:00+00	Depock	Indonesia
3	Delete	mamang@udin.com	2000-09-09 00:00:00+00	Bandoeng	Indonesia
4	Mellisa	mele@udin.com	2000-12-04 00:00:00+00	Kerkof	Suriname
5	Arizal	arizal@udin.com	2000-09-09 00:00:00+00	Padalarang	Indonesia
6	Yanuar	yanu@udin.com	2000-09-09 00:00:00+00	Cikalong	Indonesia
7	Hanif	hanip@udin.com	2000-09-09 00:00:00+00	Ngamprah	Indonesia
8	Dedi	dedi@udin.com	2000-09-09 00:00:00+00	Bogor	Indonesia
9	Bambang	bambang@udin.com	2000-09-09 00:00:00+00	Bandung	Indonesia
10	Dimas	dimas@udin.com	2000-09-09 00:00:00+00	Bandung	Indonesia
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 10, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

