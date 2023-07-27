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
    name character varying(50) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean,
    star_id integer
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
    name character varying(50) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean,
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    object_id integer,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean,
    star_id integer,
    moon_id integer
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
    name character varying(50) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean,
    galaxy_id integer,
    planet_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'planet1', 500, 750, 1200.50, 'solid', true, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'planet2', 500, 750, 1200.50, 'solid', true, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'planet3', 500, 750, 1200.50, 'solid', true, true, NULL);
INSERT INTO public.galaxy VALUES (4, 'planet4', 500, 750, 1200.50, 'solid', true, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'planet5', 500, 750, 1200.50, 'solid', true, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'planet6', 500, 750, 1200.50, 'solid', true, true, NULL);
INSERT INTO public.galaxy VALUES (7, 'planet7', 500, 750, 1200.50, 'solid', true, true, 7);
INSERT INTO public.galaxy VALUES (8, 'planet8', 500, 750, 1200.50, 'solid', true, true, 8);
INSERT INTO public.galaxy VALUES (9, 'planet9', 500, 750, 1200.50, 'solid', true, true, 9);
INSERT INTO public.galaxy VALUES (10, 'planet10', 500, 750, 1200.50, 'solid', true, true, 10);
INSERT INTO public.galaxy VALUES (11, 'planet11', 500, 750, 1200.50, 'solid', true, true, 11);
INSERT INTO public.galaxy VALUES (12, 'planet12', 500, 750, 1200.50, 'solid', true, true, 12);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 500, 750, 1200.5, 'solid', true, true, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 500, 750, 1200.5, 'solid', true, true, NULL);
INSERT INTO public.moon VALUES (4, 'moon3', 500, 750, 1200.5, 'solid', true, true, NULL);
INSERT INTO public.moon VALUES (3, 'moon4', 500, 750, 1200.5, 'solid', true, true, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', 500, 750, 1200.5, 'solid', true, true, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', 500, 750, 1200.5, 'solid', true, true, NULL);
INSERT INTO public.moon VALUES (7, '5oon7', 500, 750, 1200.5, 'solid', true, true, 7);
INSERT INTO public.moon VALUES (8, 'moon8', 500, 750, 1200.5, 'solid', true, true, 8);
INSERT INTO public.moon VALUES (9, 'moon9', 500, 750, 1200.5, 'solid', true, true, 9);
INSERT INTO public.moon VALUES (10, 'moon10', 500, 750, 1200.5, 'solid', true, true, 10);
INSERT INTO public.moon VALUES (11, 'moon11', 500, 750, 1200.5, 'solid', true, true, 11);
INSERT INTO public.moon VALUES (12, 'moon12', 500, 750, 1200.5, 'solid', true, true, 12);
INSERT INTO public.moon VALUES (13, 'moon13', 500, 750, 1200.5, 'solid', true, true, 13);
INSERT INTO public.moon VALUES (14, 'moon14', 500, 750, 1200.5, 'solid', true, true, 14);
INSERT INTO public.moon VALUES (15, 'moon15', 500, 750, 1200.5, 'solid', true, true, 15);
INSERT INTO public.moon VALUES (16, 'moon16', 500, 750, 1200.5, 'solid', true, true, 16);
INSERT INTO public.moon VALUES (17, 'moon17', 500, 750, 1200.5, 'solid', true, true, 17);
INSERT INTO public.moon VALUES (18, 'moon18', 500, 750, 1200.5, 'solid', true, true, 18);
INSERT INTO public.moon VALUES (19, 'moon19', 500, 750, 1200.5, 'solid', true, true, 19);
INSERT INTO public.moon VALUES (20, 'moon20', 500, 750, 1200.5, 'solid', true, true, 20);
INSERT INTO public.moon VALUES (21, 'moon21', 500, 750, 1200.5, 'solid', true, true, 21);
INSERT INTO public.moon VALUES (22, 'moon22', 500, 750, 1200.5, 'solid', true, true, 22);
INSERT INTO public.moon VALUES (23, 'moon23', 500, 750, 1200.5, 'solid', true, true, 23);
INSERT INTO public.moon VALUES (24, 'moon24', 500, 750, 1200.5, 'solid', true, true, 24);
INSERT INTO public.moon VALUES (25, 'moon25', 500, 750, 1200.5, 'solid', true, true, 25);
INSERT INTO public.moon VALUES (26, 'moon26', 500, 750, 1200.5, 'solid', true, true, 26);
INSERT INTO public.moon VALUES (27, 'moon27', 500, 750, 1200.5, 'solid', true, true, 27);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 1, 'info1', 'beetle juice');
INSERT INTO public.more_info VALUES (2, 2, 'info2', 'beetle juice');
INSERT INTO public.more_info VALUES (3, 3, 'info3', 'beetle juice');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 500, 750, 1200.5, 'solid', true, true, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'planet2', 500, 750, 1200.5, 'solid', true, true, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'planet3', 500, 750, 1200.5, 'solid', true, true, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'planet4', 500, 750, 1200.5, 'solid', true, true, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'planet5', 500, 750, 1200.5, 'solid', true, true, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'planet6', 500, 750, 1200.5, 'solid', true, true, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'planet7', 500, 750, 1200.5, 'solid', true, true, 7, 7);
INSERT INTO public.planet VALUES (8, 'planet8', 500, 750, 1200.5, 'solid', true, true, 8, 8);
INSERT INTO public.planet VALUES (9, 'planet9', 500, 750, 1200.5, 'solid', true, true, 9, 9);
INSERT INTO public.planet VALUES (10, 'planet10', 500, 750, 1200.5, 'solid', true, true, 10, 10);
INSERT INTO public.planet VALUES (11, 'planet11', 500, 750, 1200.5, 'solid', true, true, 11, 11);
INSERT INTO public.planet VALUES (12, 'planet12', 500, 750, 1200.5, 'solid', true, true, 12, 12);
INSERT INTO public.planet VALUES (13, 'planet13', 500, 750, 1200.5, 'solid', true, true, 13, 13);
INSERT INTO public.planet VALUES (14, 'planet14', 500, 750, 1200.5, 'solid', true, true, 14, 14);
INSERT INTO public.planet VALUES (15, 'planet15', 500, 750, 1200.5, 'solid', true, true, 15, 15);
INSERT INTO public.planet VALUES (16, 'planet16', 500, 750, 1200.5, 'solid', true, true, 16, 16);
INSERT INTO public.planet VALUES (17, 'planet17', 500, 750, 1200.5, 'solid', true, true, 17, 17);
INSERT INTO public.planet VALUES (18, 'planet18', 500, 750, 1200.5, 'solid', true, true, 18, 18);
INSERT INTO public.planet VALUES (19, 'planet19', 500, 750, 1200.5, 'solid', true, true, 19, 19);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 500, 750, 1200.5, 'solid', true, true, NULL, NULL);
INSERT INTO public.star VALUES (2, 'star2', 500, 750, 1200.5, 'solid', true, true, NULL, NULL);
INSERT INTO public.star VALUES (3, 'star3', 500, 750, 1200.5, 'solid', true, true, NULL, NULL);
INSERT INTO public.star VALUES (4, 'star4', 500, 750, 1200.5, 'solid', true, true, NULL, NULL);
INSERT INTO public.star VALUES (5, 'star5', 500, 750, 1200.5, 'solid', true, true, NULL, NULL);
INSERT INTO public.star VALUES (6, 'star6', 500, 750, 1200.5, 'solid', true, true, NULL, NULL);
INSERT INTO public.star VALUES (7, 'star7', 500, 750, 1200.5, 'solid', true, true, 7, 7);
INSERT INTO public.star VALUES (8, 'star8', 500, 750, 1200.5, 'solid', true, true, 8, 8);
INSERT INTO public.star VALUES (9, 'star9', 500, 750, 1200.5, 'solid', true, true, 9, 9);
INSERT INTO public.star VALUES (10, 'star10', 500, 750, 1200.5, 'solid', true, true, 10, 10);
INSERT INTO public.star VALUES (11, 'star11', 500, 750, 1200.5, 'solid', true, true, 11, 11);
INSERT INTO public.star VALUES (12, 'star12', 500, 750, 1200.5, 'solid', true, true, 12, 12);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

