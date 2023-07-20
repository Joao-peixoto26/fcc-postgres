--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    description text,
    size integer NOT NULL,
    size_2 integer NOT NULL,
    size_3 numeric,
    has_life boolean NOT NULL,
    can_live boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255),
    description text,
    size integer NOT NULL,
    size_2 integer NOT NULL,
    size_3 numeric,
    has_life boolean NOT NULL,
    can_live boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255),
    description text,
    size integer NOT NULL,
    size_2 integer NOT NULL,
    size_3 numeric,
    has_life boolean NOT NULL,
    can_live boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255),
    description text,
    size integer NOT NULL,
    size_2 integer NOT NULL,
    size_3 numeric,
    has_life boolean NOT NULL,
    can_live boolean NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    test_id integer NOT NULL,
    name character varying(255),
    description text,
    size integer NOT NULL,
    size_2 integer NOT NULL,
    size_3 numeric,
    has_life boolean NOT NULL,
    can_live boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.test OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.test_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_test_id_seq OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.test_test_id_seq OWNED BY public.test.test_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: test test_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test ALTER COLUMN test_id SET DEFAULT nextval('public.test_test_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'A', 'A', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (2, 'B', 'B', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (3, 'C', 'C', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (4, 'D', 'D', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (5, 'E', 'E', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (6, 'F', 'F', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (7, 'G', 'G', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (8, 'H', 'H', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (9, 'I', 'I', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (10, 'J', 'J', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (11, 'K', 'K', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (12, 'L', 'L', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (13, 'M', 'M', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (14, 'N', 'N', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (15, 'O', 'O', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (16, 'P', 'P', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (17, 'Q', 'Q', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (18, 'R', 'R', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (19, 'S', 'S', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (20, 'T', 'T', 1, 1, 1, true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'A', 'A', 1, 1, 1, true, true, 1);
INSERT INTO public.moon VALUES (2, 'B', 'B', 1, 1, 1, true, true, 2);
INSERT INTO public.moon VALUES (3, 'C', 'C', 1, 1, 1, true, true, 3);
INSERT INTO public.moon VALUES (4, 'D', 'D', 1, 1, 1, true, true, 4);
INSERT INTO public.moon VALUES (5, 'E', 'E', 1, 1, 1, true, true, 5);
INSERT INTO public.moon VALUES (6, 'F', 'F', 1, 1, 1, true, true, 6);
INSERT INTO public.moon VALUES (7, 'G', 'G', 1, 1, 1, true, true, 7);
INSERT INTO public.moon VALUES (8, 'H', 'H', 1, 1, 1, true, true, 8);
INSERT INTO public.moon VALUES (9, 'I', 'I', 1, 1, 1, true, true, 9);
INSERT INTO public.moon VALUES (10, 'J', 'J', 1, 1, 1, true, true, 10);
INSERT INTO public.moon VALUES (11, 'K', 'K', 1, 1, 1, true, true, 11);
INSERT INTO public.moon VALUES (12, 'L', 'L', 1, 1, 1, true, true, 12);
INSERT INTO public.moon VALUES (13, 'M', 'M', 1, 1, 1, true, true, 13);
INSERT INTO public.moon VALUES (14, 'N', 'N', 1, 1, 1, true, true, 14);
INSERT INTO public.moon VALUES (15, 'O', 'O', 1, 1, 1, true, true, 15);
INSERT INTO public.moon VALUES (16, 'P', 'P', 1, 1, 1, true, true, 16);
INSERT INTO public.moon VALUES (17, 'Q', 'Q', 1, 1, 1, true, true, 17);
INSERT INTO public.moon VALUES (18, 'R', 'R', 1, 1, 1, true, true, 18);
INSERT INTO public.moon VALUES (19, 'S', 'S', 1, 1, 1, true, true, 19);
INSERT INTO public.moon VALUES (20, 'T', 'T', 1, 1, 1, true, true, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'A', 'A', 1, 1, 1, true, true, 1);
INSERT INTO public.planet VALUES (2, 'B', 'B', 1, 1, 1, true, true, 2);
INSERT INTO public.planet VALUES (3, 'C', 'C', 1, 1, 1, true, true, 3);
INSERT INTO public.planet VALUES (4, 'D', 'D', 1, 1, 1, true, true, 4);
INSERT INTO public.planet VALUES (5, 'E', 'E', 1, 1, 1, true, true, 5);
INSERT INTO public.planet VALUES (6, 'F', 'F', 1, 1, 1, true, true, 6);
INSERT INTO public.planet VALUES (7, 'G', 'G', 1, 1, 1, true, true, 7);
INSERT INTO public.planet VALUES (8, 'H', 'H', 1, 1, 1, true, true, 8);
INSERT INTO public.planet VALUES (9, 'I', 'I', 1, 1, 1, true, true, 9);
INSERT INTO public.planet VALUES (10, 'J', 'J', 1, 1, 1, true, true, 10);
INSERT INTO public.planet VALUES (11, 'K', 'K', 1, 1, 1, true, true, 11);
INSERT INTO public.planet VALUES (12, 'L', 'L', 1, 1, 1, true, true, 12);
INSERT INTO public.planet VALUES (13, 'M', 'M', 1, 1, 1, true, true, 13);
INSERT INTO public.planet VALUES (14, 'N', 'N', 1, 1, 1, true, true, 14);
INSERT INTO public.planet VALUES (15, 'O', 'O', 1, 1, 1, true, true, 15);
INSERT INTO public.planet VALUES (16, 'P', 'P', 1, 1, 1, true, true, 16);
INSERT INTO public.planet VALUES (17, 'Q', 'Q', 1, 1, 1, true, true, 17);
INSERT INTO public.planet VALUES (18, 'R', 'R', 1, 1, 1, true, true, 18);
INSERT INTO public.planet VALUES (19, 'S', 'S', 1, 1, 1, true, true, 19);
INSERT INTO public.planet VALUES (20, 'T', 'T', 1, 1, 1, true, true, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'A', 'A', 1, 1, 1, true, true, 1);
INSERT INTO public.star VALUES (2, 'B', 'B', 1, 1, 1, true, true, 2);
INSERT INTO public.star VALUES (3, 'C', 'C', 1, 1, 1, true, true, 3);
INSERT INTO public.star VALUES (4, 'D', 'D', 1, 1, 1, true, true, 4);
INSERT INTO public.star VALUES (5, 'E', 'E', 1, 1, 1, true, true, 5);
INSERT INTO public.star VALUES (6, 'F', 'F', 1, 1, 1, true, true, 6);
INSERT INTO public.star VALUES (7, 'G', 'G', 1, 1, 1, true, true, 7);
INSERT INTO public.star VALUES (8, 'H', 'H', 1, 1, 1, true, true, 8);
INSERT INTO public.star VALUES (9, 'I', 'I', 1, 1, 1, true, true, 9);
INSERT INTO public.star VALUES (10, 'J', 'J', 1, 1, 1, true, true, 10);
INSERT INTO public.star VALUES (11, 'K', 'K', 1, 1, 1, true, true, 11);
INSERT INTO public.star VALUES (12, 'L', 'L', 1, 1, 1, true, true, 12);
INSERT INTO public.star VALUES (13, 'M', 'M', 1, 1, 1, true, true, 13);
INSERT INTO public.star VALUES (14, 'N', 'N', 1, 1, 1, true, true, 14);
INSERT INTO public.star VALUES (15, 'O', 'O', 1, 1, 1, true, true, 15);
INSERT INTO public.star VALUES (16, 'P', 'P', 1, 1, 1, true, true, 16);
INSERT INTO public.star VALUES (17, 'Q', 'Q', 1, 1, 1, true, true, 17);
INSERT INTO public.star VALUES (18, 'R', 'R', 1, 1, 1, true, true, 18);
INSERT INTO public.star VALUES (19, 'S', 'S', 1, 1, 1, true, true, 19);
INSERT INTO public.star VALUES (20, 'T', 'T', 1, 1, 1, true, true, 20);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test VALUES (1, 'A', 'A', 1, 1, 1, true, true, 1);
INSERT INTO public.test VALUES (2, 'B', 'B', 1, 1, 1, true, true, 2);
INSERT INTO public.test VALUES (3, 'C', 'C', 1, 1, 1, true, true, 3);
INSERT INTO public.test VALUES (4, 'D', 'D', 1, 1, 1, true, true, 4);
INSERT INTO public.test VALUES (5, 'E', 'E', 1, 1, 1, true, true, 5);
INSERT INTO public.test VALUES (6, 'F', 'F', 1, 1, 1, true, true, 6);
INSERT INTO public.test VALUES (7, 'G', 'G', 1, 1, 1, true, true, 7);
INSERT INTO public.test VALUES (8, 'H', 'H', 1, 1, 1, true, true, 8);
INSERT INTO public.test VALUES (9, 'I', 'I', 1, 1, 1, true, true, 9);
INSERT INTO public.test VALUES (10, 'J', 'J', 1, 1, 1, true, true, 10);
INSERT INTO public.test VALUES (11, 'K', 'K', 1, 1, 1, true, true, 11);
INSERT INTO public.test VALUES (12, 'L', 'L', 1, 1, 1, true, true, 12);
INSERT INTO public.test VALUES (13, 'M', 'M', 1, 1, 1, true, true, 13);
INSERT INTO public.test VALUES (14, 'N', 'N', 1, 1, 1, true, true, 14);
INSERT INTO public.test VALUES (15, 'O', 'O', 1, 1, 1, true, true, 15);
INSERT INTO public.test VALUES (16, 'P', 'P', 1, 1, 1, true, true, 16);
INSERT INTO public.test VALUES (17, 'Q', 'Q', 1, 1, 1, true, true, 17);
INSERT INTO public.test VALUES (18, 'R', 'R', 1, 1, 1, true, true, 18);
INSERT INTO public.test VALUES (19, 'S', 'S', 1, 1, 1, true, true, 19);
INSERT INTO public.test VALUES (20, 'T', 'T', 1, 1, 1, true, true, 20);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: test_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.test_test_id_seq', 20, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: test test_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_description_key UNIQUE (description);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);


--
-- Name: moon fk_moon_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

