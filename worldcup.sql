--
-- PostgreSQL database dump
--

-- Dumped from database version 12.19 (Ubuntu 12.19-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.19 (Ubuntu 12.19-0ubuntu0.20.04.1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(100) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (143, 85, 86, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (144, 87, 88, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (145, 86, 88, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (146, 85, 87, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (147, 86, 89, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (148, 88, 90, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (149, 87, 91, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (150, 85, 92, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (151, 88, 93, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (152, 90, 94, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (153, 87, 95, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (154, 91, 96, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (155, 86, 97, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (156, 89, 98, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (157, 92, 99, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (158, 85, 100, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (159, 101, 100, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (160, 102, 91, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (161, 100, 102, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (162, 101, 91, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (163, 102, 103, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (164, 100, 87, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (165, 91, 93, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (166, 101, 85, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (167, 91, 104, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (168, 93, 92, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (169, 85, 105, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (170, 101, 106, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (171, 102, 96, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (172, 103, 107, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (173, 100, 94, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (174, 87, 108, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (85, 'France');
INSERT INTO public.teams VALUES (86, 'Croatia');
INSERT INTO public.teams VALUES (87, 'Belgium');
INSERT INTO public.teams VALUES (88, 'England');
INSERT INTO public.teams VALUES (89, 'Russia');
INSERT INTO public.teams VALUES (90, 'Sweden');
INSERT INTO public.teams VALUES (91, 'Brazil');
INSERT INTO public.teams VALUES (92, 'Uruguay');
INSERT INTO public.teams VALUES (93, 'Colombia');
INSERT INTO public.teams VALUES (94, 'Switzerland');
INSERT INTO public.teams VALUES (95, 'Japan');
INSERT INTO public.teams VALUES (96, 'Mexico');
INSERT INTO public.teams VALUES (97, 'Denmark');
INSERT INTO public.teams VALUES (98, 'Spain');
INSERT INTO public.teams VALUES (99, 'Portugal');
INSERT INTO public.teams VALUES (100, 'Argentina');
INSERT INTO public.teams VALUES (101, 'Germany');
INSERT INTO public.teams VALUES (102, 'Netherlands');
INSERT INTO public.teams VALUES (103, 'Costa Rica');
INSERT INTO public.teams VALUES (104, 'Chile');
INSERT INTO public.teams VALUES (105, 'Nigeria');
INSERT INTO public.teams VALUES (106, 'Algeria');
INSERT INTO public.teams VALUES (107, 'Greece');
INSERT INTO public.teams VALUES (108, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 174, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 108, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

