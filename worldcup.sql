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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO postgres;

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
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO postgres;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO postgres;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO postgres;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.games VALUES (65, 2018, 'Final', 254, 255, 4, 2);
INSERT INTO public.games VALUES (66, 2018, 'Third Place', 256, 257, 2, 0);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 255, 257, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Semi-Final', 254, 256, 1, 0);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 255, 258, 3, 2);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 257, 259, 2, 0);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 256, 260, 2, 1);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 254, 261, 2, 0);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 257, 262, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 259, 263, 1, 0);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 256, 264, 3, 2);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 260, 265, 2, 0);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 255, 266, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 258, 267, 2, 1);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 261, 268, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 254, 269, 4, 3);
INSERT INTO public.games VALUES (81, 2014, 'Final', 270, 269, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Third Place', 271, 260, 3, 0);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 269, 271, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Semi-Final', 270, 260, 7, 1);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 271, 272, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 269, 256, 1, 0);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 260, 262, 2, 1);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 270, 254, 1, 0);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 260, 273, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 262, 261, 2, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 254, 274, 2, 0);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 270, 275, 2, 1);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 271, 265, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 272, 276, 2, 1);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 269, 263, 1, 0);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 256, 277, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.teams VALUES (254, 'France');
INSERT INTO public.teams VALUES (255, 'Croatia');
INSERT INTO public.teams VALUES (256, 'Belgium');
INSERT INTO public.teams VALUES (257, 'England');
INSERT INTO public.teams VALUES (258, 'Russia');
INSERT INTO public.teams VALUES (259, 'Sweden');
INSERT INTO public.teams VALUES (260, 'Brazil');
INSERT INTO public.teams VALUES (261, 'Uruguay');
INSERT INTO public.teams VALUES (262, 'Colombia');
INSERT INTO public.teams VALUES (263, 'Switzerland');
INSERT INTO public.teams VALUES (264, 'Japan');
INSERT INTO public.teams VALUES (265, 'Mexico');
INSERT INTO public.teams VALUES (266, 'Denmark');
INSERT INTO public.teams VALUES (267, 'Spain');
INSERT INTO public.teams VALUES (268, 'Portugal');
INSERT INTO public.teams VALUES (269, 'Argentina');
INSERT INTO public.teams VALUES (270, 'Germany');
INSERT INTO public.teams VALUES (271, 'Netherlands');
INSERT INTO public.teams VALUES (272, 'Costa Rica');
INSERT INTO public.teams VALUES (273, 'Chile');
INSERT INTO public.teams VALUES (274, 'Nigeria');
INSERT INTO public.teams VALUES (275, 'Algeria');
INSERT INTO public.teams VALUES (276, 'Greece');
INSERT INTO public.teams VALUES (277, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 277, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
