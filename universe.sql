--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(10,1),
    description text,
    galaxy_types character varying(60),
    unique_id integer
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
-- Name: last_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.last_table (
    last_table_id integer NOT NULL,
    description text,
    is_done boolean,
    name character varying(30),
    num integer NOT NULL,
    unique_id integer
);


ALTER TABLE public.last_table OWNER TO freecodecamp;

--
-- Name: last_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.last_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.last_table_id_seq OWNER TO freecodecamp;

--
-- Name: last_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.last_table_id_seq OWNED BY public.last_table.last_table_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    is_spherical boolean,
    planet_id integer,
    unique_id integer
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
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    is_spherical boolean,
    star_id integer,
    unique_id integer
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
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    galaxy_id integer,
    temperature integer,
    unique_id integer
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
-- Name: last_table last_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.last_table ALTER COLUMN last_table_id SET DEFAULT nextval('public.last_table_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (7, 'Milky Way', 13600.0, 'Our home galaxy, containing our Solar System.', 'Spiral', 1);
INSERT INTO public.galaxy VALUES (8, 'Andromeda', 10100.0, 'Nearest spiral galaxy to the Milky Way.', 'Spiral', 2);
INSERT INTO public.galaxy VALUES (9, 'Triangulum', 9200.0, 'Third-largest member of the Local Group of galaxies.', 'Spiral', 3);
INSERT INTO public.galaxy VALUES (10, 'Large Magellanic Cloud', 13600.0, 'A satellite galaxy of the Milky Way.', 'Irregular', 4);
INSERT INTO public.galaxy VALUES (11, 'Small Magellanic Cloud', 13600.0, 'A dwarf galaxy near the Milky Way.', 'Irregular', 5);
INSERT INTO public.galaxy VALUES (12, 'Messier 87', 13500.0, 'A giant elliptical galaxy in the Virgo Cluster.', 'Elliptical', 6);


--
-- Data for Name: last_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.last_table VALUES (1, 'Description 1', true, 'Name A', 1, 201);
INSERT INTO public.last_table VALUES (2, 'Description 2', false, 'Name B', 2, 202);
INSERT INTO public.last_table VALUES (3, 'Description 3', true, 'Name C', 3, 203);
INSERT INTO public.last_table VALUES (4, 'Description 4', false, 'Name D', 4, 204);
INSERT INTO public.last_table VALUES (5, 'Description 5', true, 'Name E', 5, 205);
INSERT INTO public.last_table VALUES (6, 'Description 6', false, 'Name F', 6, 206);
INSERT INTO public.last_table VALUES (7, 'Description 7', true, 'Name G', 7, 207);
INSERT INTO public.last_table VALUES (8, 'Description 8', false, 'Name H', 8, 208);
INSERT INTO public.last_table VALUES (9, 'Description 9', true, 'Name I', 9, 209);
INSERT INTO public.last_table VALUES (10, 'Description 10', false, 'Name J', 10, 210);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon A', 384400, true, 1, 101);
INSERT INTO public.moon VALUES (2, 'Moon B', 1500000, true, 2, 102);
INSERT INTO public.moon VALUES (3, 'Moon C', 237000, false, 3, 103);
INSERT INTO public.moon VALUES (4, 'Moon D', 1070000, true, 4, 104);
INSERT INTO public.moon VALUES (5, 'Moon E', 590000, false, 5, 105);
INSERT INTO public.moon VALUES (6, 'Moon F', 850000, true, 6, 106);
INSERT INTO public.moon VALUES (7, 'Moon G', 300000, true, 7, 107);
INSERT INTO public.moon VALUES (8, 'Moon H', 420000, false, 8, 108);
INSERT INTO public.moon VALUES (9, 'Moon I', 1230000, true, 9, 109);
INSERT INTO public.moon VALUES (10, 'Moon J', 678000, false, 10, 110);
INSERT INTO public.moon VALUES (11, 'Moon K', 900000, true, 11, 111);
INSERT INTO public.moon VALUES (12, 'Moon L', 320000, false, 12, 112);
INSERT INTO public.moon VALUES (13, 'Moon M', 730000, true, 1, 113);
INSERT INTO public.moon VALUES (14, 'Moon N', 430000, true, 2, 114);
INSERT INTO public.moon VALUES (15, 'Moon O', 560000, false, 3, 115);
INSERT INTO public.moon VALUES (16, 'Moon P', 990000, true, 4, 116);
INSERT INTO public.moon VALUES (17, 'Moon Q', 270000, false, 5, 117);
INSERT INTO public.moon VALUES (18, 'Moon R', 880000, true, 6, 118);
INSERT INTO public.moon VALUES (19, 'Moon S', 350000, true, 7, 119);
INSERT INTO public.moon VALUES (20, 'Moon T', 470000, false, 8, 120);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mars', 23224, true, 1, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 2324, true, 1, 2);
INSERT INTO public.planet VALUES (3, 'Pluto', 42222, false, 1, 3);
INSERT INTO public.planet VALUES (4, 'Mercury', 423424, true, 1, 4);
INSERT INTO public.planet VALUES (5, 'Neptune', 323212, true, 1, 5);
INSERT INTO public.planet VALUES (6, 'Earth', 0, true, 1, 6);
INSERT INTO public.planet VALUES (7, 'Saturn', 12313, true, 1, 7);
INSERT INTO public.planet VALUES (8, 'Nibiru', 24324323, false, 6, 8);
INSERT INTO public.planet VALUES (9, 'Mustafar', 32242323, true, 5, 9);
INSERT INTO public.planet VALUES (10, 'Zenon', 3243244, false, 4, 10);
INSERT INTO public.planet VALUES (11, 'x', 131232, true, 4, 11);
INSERT INTO public.planet VALUES (12, 'y', 324324, false, 3, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star', 10000, 7, 20000, 1);
INSERT INTO public.star VALUES (2, 'new star', 2324, 8, 32023, 2);
INSERT INTO public.star VALUES (3, 'adam', 23423, 8, 23321, 3);
INSERT INTO public.star VALUES (4, 'dsaf', 42353, 10, 4433, 4);
INSERT INTO public.star VALUES (5, 'das', 203222, 11, 243242, 5);
INSERT INTO public.star VALUES (6, 'last star', 20342, 11, 42343, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: last_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.last_table_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_id_key UNIQUE (unique_id);


--
-- Name: last_table last_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.last_table
    ADD CONSTRAINT last_table_pkey PRIMARY KEY (last_table_id);


--
-- Name: last_table last_table_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.last_table
    ADD CONSTRAINT last_table_unique_id_key UNIQUE (unique_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_id_key UNIQUE (unique_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_id_key UNIQUE (unique_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_id_key UNIQUE (unique_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

