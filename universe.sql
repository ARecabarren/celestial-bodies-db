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
-- Name: astronomer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomer (
    astronomer_id integer NOT NULL,
    name character varying(100) NOT NULL,
    nationality character varying(50),
    birth_date date,
    email character varying(100)
);


ALTER TABLE public.astronomer OWNER TO freecodecamp;

--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomer_astronomer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomer_astronomer_id_seq OWNER TO freecodecamp;

--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomer_astronomer_id_seq OWNED BY public.astronomer.astronomer_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type character varying(50),
    distance_light_years double precision,
    size_km_squared bigint,
    number_of_stars integer,
    description text
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
    name character varying(100) NOT NULL,
    is_inhabited boolean,
    distance_from_planet integer,
    diameter_km numeric,
    orbital_period_days numeric,
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
    name character varying(100) NOT NULL,
    has_water boolean,
    distance_from_star integer,
    orbital_period numeric,
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
    name character varying(100) NOT NULL,
    brightness double precision,
    mass_kg double precision,
    is_planetary_system boolean,
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
-- Name: astronomer astronomer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer ALTER COLUMN astronomer_id SET DEFAULT nextval('public.astronomer_astronomer_id_seq'::regclass);


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
-- Data for Name: astronomer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomer VALUES (1, 'Alan Smith', 'American', '1980-05-15', 'alan.smith@example.com');
INSERT INTO public.astronomer VALUES (2, 'Maria Rodriguez', 'Spanish', '1992-08-23', 'maria.rodriguez@example.com');
INSERT INTO public.astronomer VALUES (3, 'Hiroshi Tanaka', 'Japanese', '1975-03-10', 'hiroshi.tanaka@example.com');
INSERT INTO public.astronomer VALUES (4, 'Elena Petrov', 'Russian', '1988-12-05', 'elena.petrov@example.com');
INSERT INTO public.astronomer VALUES (5, 'Sophie Dubois', 'French', '1983-06-30', 'sophie.dubois@example.com');
INSERT INTO public.astronomer VALUES (6, 'Raj Patel', 'Indian', '1990-11-18', 'raj.patel@example.com');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 100, 2000000, 200000000, 'Our home galaxy.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 200, 1500000, 300000000, 'Closest spiral galaxy to the Milky Way.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Irregular', 150, 1000000, 50000000, 'Small galaxy near Andromeda.');
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Elliptical', 500, 3000000, 100000000, 'Contains a supermassive black hole.');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral', 700, 2500000, 80000000, 'Distinctive hat-shaped galaxy.');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Spiral', 450, 1800000, 150000000, 'Known for its spiral arms and interacting with a smaller galaxy.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (121, 'Io', false, 422, 3637, 1.77, 4);
INSERT INTO public.moon VALUES (122, 'Europa', false, 671, 3121, 3.55, 4);
INSERT INTO public.moon VALUES (123, 'Ganymede', false, 1070, 5262, 7.15, 4);
INSERT INTO public.moon VALUES (124, 'Callisto', false, 1882, 4800, 16.69, 4);
INSERT INTO public.moon VALUES (125, 'Phoebe', false, 12952, 220, 550.48, 5);
INSERT INTO public.moon VALUES (126, 'Dione', false, 377, 1123, 2.74, 44);
INSERT INTO public.moon VALUES (127, 'Rhea', false, 527, 1527, 4.52, 44);
INSERT INTO public.moon VALUES (128, 'Enceladus', false, 238, 504, 1.37, 43);
INSERT INTO public.moon VALUES (129, 'Hyperion', false, 1481, 270, 21.28, 42);
INSERT INTO public.moon VALUES (130, 'Charon', false, 19300, 1207, 6.39, 45);
INSERT INTO public.moon VALUES (131, 'Triton', false, 355, 2706, 5.88, 2);
INSERT INTO public.moon VALUES (132, 'Miranda', false, 129, 472, 1.41, 2);
INSERT INTO public.moon VALUES (133, 'Ariel', false, 190, 1158, 2.52, 2);
INSERT INTO public.moon VALUES (134, 'Umbriel', false, 266, 1169, 4.14, 47);
INSERT INTO public.moon VALUES (135, 'Titania', false, 436, 1577, 8.71, 45);
INSERT INTO public.moon VALUES (136, 'Oberon', false, 583, 1523, 13.46, 42);
INSERT INTO public.moon VALUES (137, 'Phobos', false, 9, 22.2, 0.3, 2);
INSERT INTO public.moon VALUES (138, 'Deimos', false, 23, 12.4, 1.26, 2);
INSERT INTO public.moon VALUES (139, 'Lapetus', false, 3561, 1470, 79.33, 3);
INSERT INTO public.moon VALUES (140, 'Ganymed', false, 430, 5262, 7.15, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 150, 365.25, 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, 228, 687, 1);
INSERT INTO public.planet VALUES (3, 'Neptune', true, 4495, 60190, 2);
INSERT INTO public.planet VALUES (4, 'Venus', false, 108, 225, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 778, 4331, 3);
INSERT INTO public.planet VALUES (42, 'Mercury', false, 58, 88, 1);
INSERT INTO public.planet VALUES (43, 'Uranus', true, 2871, 30660, 9);
INSERT INTO public.planet VALUES (44, 'Pluto', false, 5906, 90553, 18);
INSERT INTO public.planet VALUES (45, 'Kepler-186f', true, 491, 129, 19);
INSERT INTO public.planet VALUES (46, 'HD 209458 b', false, 150, 3.5, 20);
INSERT INTO public.planet VALUES (47, 'Gliese 581g', false, 20, 37, 21);
INSERT INTO public.planet VALUES (49, 'HD 209458 c', true, 150, 4.6, 21);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri A', 1.5, 2.2e+30, true, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 70000, 1.2e+31, false, 2);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 0.001, 2.4e+29, true, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 25, 2.3e+30, true, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri B', 1.4, 2.1e+30, false, 1);
INSERT INTO public.star VALUES (6, 'Antares', 12000, 1.6e+31, true, 2);
INSERT INTO public.star VALUES (7, 'VY Canis Majoris', 600000, 3e+32, true, 3);
INSERT INTO public.star VALUES (8, 'Alpha Centauri C', 1.1, 1.8e+30, false, 1);
INSERT INTO public.star VALUES (20, 'Vega', 40, 2.4e+30, true, 3);
INSERT INTO public.star VALUES (21, 'Arcturus', 170, 2.2e+31, true, 4);
INSERT INTO public.star VALUES (22, 'Aldebaran', 440, 1.7e+31, true, 5);
INSERT INTO public.star VALUES (23, 'Pollux', 32, 1.9e+30, true, 3);
INSERT INTO public.star VALUES (24, 'Deneb', 20000, 1.9e+31, true, 3);
INSERT INTO public.star VALUES (25, 'Rigel', 55000, 2.5e+31, true, 2);
INSERT INTO public.star VALUES (9, 'Betelgeuse A', 100000, 2.3e+31, true, 2);
INSERT INTO public.star VALUES (19, 'Betelgeuse B', 100000, 2.3e+31, true, 2);
INSERT INTO public.star VALUES (28, 'Betelgeuse C', 100000, 2.3e+31, true, 2);
INSERT INTO public.star VALUES (26, 'VY Canis Majoris B', 600000, 3e+32, true, 3);
INSERT INTO public.star VALUES (18, 'Alpha Centauri H', 1.1, 1.8e+30, false, 1);
INSERT INTO public.star VALUES (27, 'Alpha Centauri O', 1.1, 1.8e+30, false, 1);


--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomer_astronomer_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 140, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 49, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 28, true);


--
-- Name: astronomer astronomer_email_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_email_key UNIQUE (email);


--
-- Name: astronomer astronomer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_pkey PRIMARY KEY (astronomer_id);


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
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

