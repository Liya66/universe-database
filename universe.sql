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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    in_galaxy character varying,
    feature text,
    name character varying NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_name character varying NOT NULL,
    galaxy_types character varying NOT NULL,
    number_of_stars_million integer,
    diameter numeric,
    name character varying
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    moon_size character varying NOT NULL,
    is_sphereical boolean,
    has_life boolean,
    planet_name character varying
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_name character varying NOT NULL,
    planet_size character varying NOT NULL,
    is_sphereical boolean,
    has_life boolean,
    star_name character varying,
    name character varying
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying NOT NULL,
    star_size character varying NOT NULL,
    number_of_planets integer,
    is_sphereical boolean,
    has_life boolean,
    galaxy_name character varying,
    name character varying
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Milky Way', 'Rocky, Irregular Shape', 'Ceres');
INSERT INTO public.asteroid VALUES (2, 'Andromeda', 'Metallic, High Density', 'Andros I');
INSERT INTO public.asteroid VALUES (3, 'Triangulum', 'Icy, Reflective Surface', 'Trias IV');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 2500000, 105700, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 1000000, 220000, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 40, 60000, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 100000, 76000, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Elliptical', 80000, 49000, NULL);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'Elliptical', 120000, 120000, NULL);
INSERT INTO public.galaxy VALUES (7, 'Cartwheel', 'Ring', 50000, 150000, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Medium', true, false, 'Earth');
INSERT INTO public.moon VALUES (2, 'Io', 'Medium', true, false, 'Jupiter');
INSERT INTO public.moon VALUES (3, 'Europa', 'Small', true, false, 'Jupiter');
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Large', true, false, 'Jupiter');
INSERT INTO public.moon VALUES (5, 'Callisto', 'Large', true, false, 'Jupiter');
INSERT INTO public.moon VALUES (6, 'Titan', 'Large', true, false, 'Saturn');
INSERT INTO public.moon VALUES (7, 'Rhea', 'Medium', true, false, 'Saturn');
INSERT INTO public.moon VALUES (8, 'Iapetus', 'Medium', true, false, 'Saturn');
INSERT INTO public.moon VALUES (9, 'Dione', 'Small', true, false, 'Saturn');
INSERT INTO public.moon VALUES (10, 'Miranda', 'Small', true, false, 'Uranus');
INSERT INTO public.moon VALUES (11, 'Ariel', 'Medium', true, false, 'Uranus');
INSERT INTO public.moon VALUES (12, 'Umbriel', 'Medium', true, false, 'Uranus');
INSERT INTO public.moon VALUES (13, 'Titania', 'Large', true, false, 'Uranus');
INSERT INTO public.moon VALUES (14, 'Triton', 'Large', true, false, 'Neptune');
INSERT INTO public.moon VALUES (15, 'Proteus', 'Small', true, false, 'Neptune');
INSERT INTO public.moon VALUES (16, 'Proxima b I', 'Small', true, false, 'Proxima Centauri b');
INSERT INTO public.moon VALUES (17, 'Betelgeuse I-A', 'Medium', true, false, 'Betelgeuse I');
INSERT INTO public.moon VALUES (18, 'Betelgeuse I-B', 'Small', true, false, 'Betelgeuse I');
INSERT INTO public.moon VALUES (19, 'Rigel I-A', 'Medium', true, false, 'Rigel I');
INSERT INTO public.moon VALUES (20, 'Rigel I-B', 'Small', true, false, 'Rigel I');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Small', true, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 'Medium', true, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 'Medium', true, true, 'Sun', NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 'Small', true, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Large', true, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Large', true, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Medium', true, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Medium', true, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 'Small', true, false, 'Proxima Centauri', NULL);
INSERT INTO public.planet VALUES (10, 'Sirius b', 'Small', true, false, 'Sirius', NULL);
INSERT INTO public.planet VALUES (11, 'Betelgeuse I', 'Large', true, false, 'Betelgeuse', NULL);
INSERT INTO public.planet VALUES (12, 'Betelgeuse II', 'Medium', true, false, 'Betelgeuse', NULL);
INSERT INTO public.planet VALUES (13, 'Rigel I', 'Large', true, false, 'Rigel', NULL);
INSERT INTO public.planet VALUES (14, 'Rigel II', 'Medium', true, false, 'Rigel', NULL);
INSERT INTO public.planet VALUES (15, 'Rigel III', 'Small', true, false, 'Rigel', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Medium', 8, true, true, 'Milky Way', NULL);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 'Medium', 0, true, false, 'Milky Way', NULL);
INSERT INTO public.star VALUES (3, 'Sirius', 'Large', 0, true, false, 'Milky Way', NULL);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'Small', 1, true, false, 'Milky Way', NULL);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 'Large', 0, true, false, 'Andromeda', NULL);
INSERT INTO public.star VALUES (6, 'Vega', 'Medium', 0, true, false, 'Andromeda', NULL);
INSERT INTO public.star VALUES (7, 'Rigel', 'Large', 0, true, false, 'Triangulum', NULL);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 9, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 15, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (galaxy_name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (planet_name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (star_name);


--
-- Name: moon fk_moon_around_planet_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_around_planet_name FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet fk_planet_around_star_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_around_star_name FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: star fk_star_in_galaxy_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_in_galaxy_name FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- PostgreSQL database dump complete
--

