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
-- Name: blackholes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackholes (
    blackholes_id integer NOT NULL,
    name character varying(30) NOT NULL,
    light_years_earth numeric NOT NULL
);


ALTER TABLE public.blackholes OWNER TO freecodecamp;

--
-- Name: blackholes_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackholes_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackholes_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackholes_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackholes_blackhole_id_seq OWNED BY public.blackholes.blackholes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radius_light_years integer,
    age numeric,
    type text NOT NULL
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    galaxy_id integer,
    star_id integer
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
    natural_satellites integer,
    radius numeric,
    galaxy_id integer,
    star_id integer,
    life boolean,
    planet_type character varying(30) NOT NULL,
    water boolean
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
    galaxy_id integer,
    distance_from_earth_light_years numeric,
    radius_in_km numeric,
    type_of_star text NOT NULL
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
-- Name: blackholes blackholes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes ALTER COLUMN blackholes_id SET DEFAULT nextval('public.blackholes_blackhole_id_seq'::regclass);


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
-- Data for Name: blackholes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackholes VALUES (1, 'Sagittarius A*', 25640);
INSERT INTO public.blackholes VALUES (2, 'TON 618', 10000000000);
INSERT INTO public.blackholes VALUES (3, 'Homberg 15A', 700000000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 110000, 10.01, 'spiral');
INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', 52850, 13.61, 'spiral');
INSERT INTO public.galaxy VALUES (3, 'Sombrero Galaxy', 25000, 13.25, 'spiral');
INSERT INTO public.galaxy VALUES (4, 'IC 1101', 2000000, 12.31, 'elliptical');
INSERT INTO public.galaxy VALUES (5, 'Cigar Galaxy', 18500, 13.3, 'irregular');
INSERT INTO public.galaxy VALUES (6, 'The Sunflower Galaxy', 49000, 13.28, 'spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 1, 1);
INSERT INTO public.moon VALUES (2, 'Fobos', 4, 1, 1);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 1, 1);
INSERT INTO public.moon VALUES (4, 'Europa', 5, 1, 1);
INSERT INTO public.moon VALUES (5, 'Ganymede', 5, 1, 1);
INSERT INTO public.moon VALUES (6, 'Callisto', 5, 1, 1);
INSERT INTO public.moon VALUES (7, 'Io', 5, 1, 1);
INSERT INTO public.moon VALUES (8, 'Amalthea', 5, 1, 1);
INSERT INTO public.moon VALUES (9, 'Titan', 6, 1, 1);
INSERT INTO public.moon VALUES (10, 'Rhea', 6, 1, 1);
INSERT INTO public.moon VALUES (11, 'Iapetus', 6, 1, 1);
INSERT INTO public.moon VALUES (12, 'Dione', 6, 1, 1);
INSERT INTO public.moon VALUES (13, 'Tethys', 6, 1, 1);
INSERT INTO public.moon VALUES (14, 'Titania', 7, 1, 1);
INSERT INTO public.moon VALUES (15, 'Oberon', 7, 1, 1);
INSERT INTO public.moon VALUES (16, 'Umbriel', 7, 1, 1);
INSERT INTO public.moon VALUES (17, 'Ariel', 7, 1, 1);
INSERT INTO public.moon VALUES (18, 'Triton', 8, 1, 1);
INSERT INTO public.moon VALUES (19, 'Charon', 9, 1, 1);
INSERT INTO public.moon VALUES (20, 'Proteus', 8, 1, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 6371, 1, 1, true, 'terrestrial', true);
INSERT INTO public.planet VALUES (2, 'Mercury', 0, 2439.7, 1, 1, false, 'terrestrial', false);
INSERT INTO public.planet VALUES (3, 'Venus', 0, 6051.8, 1, 1, false, 'terrestrial', true);
INSERT INTO public.planet VALUES (4, 'Mars', 2, 3389.5, 1, 1, false, 'terrestrial', true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 79, 69911, 1, 1, false, 'gas giant', true);
INSERT INTO public.planet VALUES (6, 'Saturn', 62, 58232, 1, 1, false, 'gas giant', true);
INSERT INTO public.planet VALUES (7, 'Uranus', 27, 25362, 1, 1, false, 'ice giant', true);
INSERT INTO public.planet VALUES (8, 'Neptune', 14, 24622, 1, 1, false, 'ice giant', true);
INSERT INTO public.planet VALUES (9, 'Pluto', 5, 1188, 1, 1, false, 'dwarf', true);
INSERT INTO public.planet VALUES (10, 'Kepler-1b', NULL, 90938, 1, NULL, false, 'gas giant', false);
INSERT INTO public.planet VALUES (11, '55 Cancri e', NULL, 11946, 1, NULL, false, 'terrestrial', false);
INSERT INTO public.planet VALUES (12, 'HD 80606B', NULL, 74804, 1, NULL, false, 'gas giant', false);
INSERT INTO public.planet VALUES (13, 'GJ 1214 b', NULL, 17081, 1, NULL, false, 'Neptune-like', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 0.000016045, 696340, 'yellow dwarf');
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 1, 4.36, 107280, 'red dwarf');
INSERT INTO public.star VALUES (4, 'VY Canis Majoris', 1, 4892, 987000000, 'red hypergiant');
INSERT INTO public.star VALUES (5, 'Sirius', 1, 8.6, 1190741, 'white dwarf');
INSERT INTO public.star VALUES (6, 'Betelgeuse', 1, 642.5, 615000000, 'red supergiant');
INSERT INTO public.star VALUES (2, 'UY Scuti', 1, 5219, 1250000000, 'red hypergiant');


--
-- Name: blackholes_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackholes_blackhole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackholes blackholes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes
    ADD CONSTRAINT blackholes_name_key UNIQUE (name);


--
-- Name: blackholes blackholes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes
    ADD CONSTRAINT blackholes_pkey PRIMARY KEY (blackholes_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


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
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


--
-- Name: moon moon_name_key2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key2 UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


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
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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