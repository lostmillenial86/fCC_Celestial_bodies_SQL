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
    galaxy_type character varying(30),
    description text,
    size_in_ly numeric(10,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_to_primary_planet_in_km numeric(6,2),
    moon_type character varying(30),
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_to_earth_in_au numeric(6,2),
    planet_type character varying(30),
    description text,
    star_id integer,
    is_spherical boolean,
    is_habitable boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_to_earth_in_ly numeric(6,2),
    star_type character varying(30),
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.system (
    system_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    star_id integer,
    planet_id integer,
    moon_id integer
);


ALTER TABLE public.system OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'spiral', NULL, 220000.00);
INSERT INTO public.galaxy VALUES (2, 'Black Eye', 'spiral', NULL, 52962.00);
INSERT INTO public.galaxy VALUES (3, 'Cigar', 'starburst', NULL, 37000.00);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic', 'dwarf', NULL, 14000.00);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', 'ring', NULL, 130000.00);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', 'home', NULL, 105700.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Io', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (2, 'Europa', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (3, 'Ganymede', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (4, 'Callisto', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (5, 'Titan', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Rhea', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (8, 'Iapetus', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (9, 'Mimas', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (11, 'Dione', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Tethys', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Phoebe', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (14, 'Amalthea', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (15, 'Triton', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (16, 'Charon', NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (17, 'Miranda', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (18, 'Oberon', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (19, 'Titania', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (20, 'Umbriel', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (21, 'Ariel', NULL, NULL, NULL, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, 'home', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, 'rocky', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, 'gas', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, 'gas', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, 'ice', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, 'ice', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, 'dwarf', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Ceres', NULL, 'dwarf', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Haumea', NULL, 'dwarf', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Rigel X', NULL, 'rock', NULL, 3, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, 'G2V', NULL, 6);
INSERT INTO public.star VALUES (2, 'Sirius', NULL, 'A1V', NULL, 6);
INSERT INTO public.star VALUES (3, 'Rigel', NULL, 'B8la', NULL, 6);
INSERT INTO public.star VALUES (4, 'Betelgeuse', NULL, 'M2lab', NULL, 6);
INSERT INTO public.star VALUES (5, 'Adhil', NULL, 'K0', NULL, 1);
INSERT INTO public.star VALUES (6, 'Almach', NULL, 'K3', NULL, 1);


--
-- Data for Name: system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.system VALUES (1, 'Home', 6, 1, 3, NULL);
INSERT INTO public.system VALUES (2, 'Pluto-Charon', 6, 1, 9, 16);
INSERT INTO public.system VALUES (3, 'Saturn-Titan', 6, 1, 6, 5);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: system system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_pkey PRIMARY KEY (system_id);


--
-- Name: system system_system_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_system_id_key UNIQUE (system_id);


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

