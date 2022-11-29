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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    name character varying(40) NOT NULL,
    constellation_id integer NOT NULL,
    number_of_stars integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    galaxy_type text,
    description text,
    age_in_millions_of_years numeric(10,6),
    size_in_lightyears_rounded integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(40) NOT NULL,
    moon_id integer NOT NULL,
    moon_size_in_km integer,
    distance_from_planet_in_million_km integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    planet_size_in_km integer,
    number_of_moons integer,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    star_type character varying(40),
    number_of_planets integer,
    size_in_millions_of_km integer,
    has_planet boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES ('Dave', 1, 3);
INSERT INTO public.constellation VALUES ('And', 2, 1);
INSERT INTO public.constellation VALUES ('Busters', 3, 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Stratus', 1, 'Elliptical', 'Glows green', 4123.567000, 10002);
INSERT INTO public.galaxy VALUES ('Firestorm', 2, 'Irregular', 'Looks like it is on fire', 7784.978400, 900020);
INSERT INTO public.galaxy VALUES ('Einstein', 3, 'Spiral', 'Very normal galaxy', 5243.423000, 999999);
INSERT INTO public.galaxy VALUES ('Hell', 4, 'Irregular', 'Moves chaotically and is in flux', 10.000000, 500000);
INSERT INTO public.galaxy VALUES ('Vague', 5, 'Spiral', 'Hard to see but seems normal', 7857.903000, 5000);
INSERT INTO public.galaxy VALUES ('Neptune', 6, 'Spiral', 'Looks like an ocean', 6666.200000, 5436356);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Death', 1, 200, 50, 1);
INSERT INTO public.moon VALUES ('Star', 2, 150, 41, 1);
INSERT INTO public.moon VALUES ('Thats no moon', 3, 149, 40, 1);
INSERT INTO public.moon VALUES ('Glym', 4, 1000, 35, 2);
INSERT INTO public.moon VALUES ('Huff', 5, 946, 30, 3);
INSERT INTO public.moon VALUES ('Puff', 6, 950, 27, 3);
INSERT INTO public.moon VALUES ('Tra', 7, 900, 20, 4);
INSERT INTO public.moon VALUES ('La', 8, 900, 20, 4);
INSERT INTO public.moon VALUES ('Andor', 9, 1000, 20, 5);
INSERT INTO public.moon VALUES ('A', 10, 500, 15, 6);
INSERT INTO public.moon VALUES ('B', 11, 500, 15, 6);
INSERT INTO public.moon VALUES ('C', 12, 500, 15, 6);
INSERT INTO public.moon VALUES ('D', 13, 25, 10, 6);
INSERT INTO public.moon VALUES ('E', 14, 25, 10, 6);
INSERT INTO public.moon VALUES ('F', 15, 25, 100, 6);
INSERT INTO public.moon VALUES ('G', 16, 2500, 1000, 6);
INSERT INTO public.moon VALUES ('Bloof', 17, 5002, 50, 7);
INSERT INTO public.moon VALUES ('Glif', 18, 10, 11, 8);
INSERT INTO public.moon VALUES ('Lift', 19, 1200, 16, 9);
INSERT INTO public.moon VALUES ('Wublub', 20, 1523, 10, 10);
INSERT INTO public.moon VALUES ('Hip', 21, 1231, 100, 11);
INSERT INTO public.moon VALUES ('Hop', 22, 1342, 94, 11);
INSERT INTO public.moon VALUES ('Zip', 23, 150, 1, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Bold', 1, 500, 3, false, 2);
INSERT INTO public.planet VALUES ('Nym', 2, 12000, 1, true, 2);
INSERT INTO public.planet VALUES ('The Gap', 3, 3000, 2, false, 2);
INSERT INTO public.planet VALUES ('Tron', 4, 8000, 2, true, 2);
INSERT INTO public.planet VALUES ('The Confusingly Named Endor', 5, 7590, 1, true, 3);
INSERT INTO public.planet VALUES ('Foth', 6, 49021, 7, true, 3);
INSERT INTO public.planet VALUES ('Haort', 7, 59382, 1, false, 5);
INSERT INTO public.planet VALUES ('Flaf', 8, 43535, 1, false, 6);
INSERT INTO public.planet VALUES ('Nigh', 9, 12900, 1, true, 6);
INSERT INTO public.planet VALUES ('Nug', 10, 9999, 1, false, 6);
INSERT INTO public.planet VALUES ('Glug', 11, 12000, 2, false, 6);
INSERT INTO public.planet VALUES ('Floof', 12, 28293, 1, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Delta-27', 1, 'Red Giant', 0, 4000, false, 2);
INSERT INTO public.star VALUES ('Terra', 2, 'Solar', 4, 3203, true, 1);
INSERT INTO public.star VALUES ('Iris', 3, 'Solar', 2, 5000, true, 1);
INSERT INTO public.star VALUES ('Beacon', 4, 'Neutron', 0, 987, false, 6);
INSERT INTO public.star VALUES ('Hope', 5, 'Blue Dwarf', 1, 4398, true, 5);
INSERT INTO public.star VALUES ('Maw', 6, 'Red Dwarf', 5, 1000, true, 4);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation unique_constellation_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT unique_constellation_id UNIQUE (constellation_id);


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

