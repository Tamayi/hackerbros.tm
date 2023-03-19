--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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
-- Name: student_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_info (
    id integer NOT NULL,
    name text,
    email text,
    phone text,
    location text,
    industry text,
    book_recommendation text
);


ALTER TABLE public.student_info OWNER TO postgres;

--
-- Name: student_info_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_info_id_seq OWNER TO postgres;

--
-- Name: student_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_info_id_seq OWNED BY public.student_info.id;


--
-- Name: student_info id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_info ALTER COLUMN id SET DEFAULT nextval('public.student_info_id_seq'::regclass);


--
-- Data for Name: student_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_info (id, name, email, phone, location, industry, book_recommendation) FROM stdin;
1	Juan Hernandez	juan.hernandez@gmail.com	+1-555-555-1234	Mexico City, Mexico	Software Development	\N
2	Maria Rodriguez	maria.rodriguez@hotmail.com	+1-555-555-5678	Guadalajara, Mexico	Marketing	\N
3	Patrick O'Sullivan	patrick.osullivan@gmail.com	+1-555-555-9012	Dublin, Ireland	Finance	\N
4	Maggie O'Malley	maggie.omalley@yahoo.com	+1-555-555-3456	Cork, Ireland	Engineering	\N
5	Oscar Hernandez	oscar.hernandez@gmail.com	+1-555-555-7890	Mexico City, Mexico	Software Development	\N
6	Mohammed Ali	mohammed.ali@gmail.com	+254 712345678	Nairobi, Kenya	Sales	\N
7	Amina Mohamed	amina.mohamed@yahoo.com	+254 712345679	Mombasa, Kenya	Marketing	\N
8	Zinhle Dube	zinhle.dube@gmail.com	+27 123456789	Johannesburg, South Africa	Software Development	\N
9	Sipho Nkosi	sipho.nkosi@yahoo.com	+27 123456790	Durban, South Africa	Finance	\N
10	Anjali Patel	anjali.patel@hotmail.com	+91 9876543210	Mumbai, India	Marketing	\N
11	Ravi Singh	ravi.singh@gmail.com	+91 9876543211	Delhi, India	Software Development	\N
12	Juan Martinez	juanm@example.com	555-1234	Mexico City	Engineering	\N
13	Samantha Patel	samanthap@example.com	555-5678	Mumbai	Business	\N
14	Patrick O'Reilly	patricko@example.com	555-9012	Dublin	Finance	\N
15	Maggie Kimani	maggiek@example.com	555-3456	Nairobi	Healthcare	\N
16	Cameron Brown	cameronb@example.com	555-7890	Johannesburg	Marketing	\N
17	Sofia Rodriguez	sofiar@example.com	555-2345	Mexico City	Technology	\N
18	Amit Gupta	amitg@example.com	555-6789	Delhi	Engineering	\N
19	Liam O'Malley	liamo@example.com	555-0123	Dublin	Finance	\N
20	Shannon Nkosi	shannonn@example.com	555-4567	Cape Town	Healthcare	\N
21	Rashmi Patel	rashmip@example.com	555-8901	Mumbai	Technology	\N
22	run	run@run.com	23200032	DRC	test	\N
23	Felix	fele@gmail.com	2324434	Chad	Mining	")\n        \n        self.assertEqual(run_dialog_selections_to_string(selections), \\\n                             'you have recommended Mining Your Team and Exploding Factory ')\n        \n        self.assertEqual(run_dialog_selections_to_string(\\\n                ([(NodeTypes.TYPE_TAG_NODE, ['Extractive Review']), \\\n                      (NodeTypes.TYPE_TAG_NODE, ['
\.


--
-- Name: student_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_info_id_seq', 23, true);


--
-- Name: student_info student_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_info
    ADD CONSTRAINT student_info_pkey PRIMARY KEY (id);


--
-- Name: TABLE student_info; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.student_info TO student;


--
-- Name: SEQUENCE student_info_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.student_info_id_seq TO student;


--
-- PostgreSQL database dump complete
--

