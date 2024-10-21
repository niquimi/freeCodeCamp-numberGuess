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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1729520324888', 0, NULL);
INSERT INTO public.users VALUES (3, 'user_1729520324887', 0, NULL);
INSERT INTO public.users VALUES (4, 'user_1729520416739', 0, NULL);
INSERT INTO public.users VALUES (5, 'user_1729520416738', 0, NULL);
INSERT INTO public.users VALUES (6, 'user_1729520483518', 0, NULL);
INSERT INTO public.users VALUES (7, 'user_1729520483517', 0, NULL);
INSERT INTO public.users VALUES (8, 'user_1729520794893', 0, NULL);
INSERT INTO public.users VALUES (9, 'user_1729520794892', 0, NULL);
INSERT INTO public.users VALUES (10, 'user_1729521421687', 0, NULL);
INSERT INTO public.users VALUES (11, 'user_1729521421686', 0, NULL);
INSERT INTO public.users VALUES (12, 'user_1729521450148', 0, NULL);
INSERT INTO public.users VALUES (13, 'user_1729521450147', 0, NULL);
INSERT INTO public.users VALUES (14, 'user_1729522131136', 0, NULL);
INSERT INTO public.users VALUES (15, 'user_1729522131135', 0, NULL);
INSERT INTO public.users VALUES (16, 'user_1729522435041', 0, NULL);
INSERT INTO public.users VALUES (17, 'user_1729522435040', 0, NULL);
INSERT INTO public.users VALUES (1, 'niquimi', 2, 3);
INSERT INTO public.users VALUES (19, 'user_1729523246534', 2, 0);
INSERT INTO public.users VALUES (95, 'user_1729525115021', 2, 901);
INSERT INTO public.users VALUES (18, 'user_1729523246535', 5, 0);
INSERT INTO public.users VALUES (41, 'user_1729523875411', 2, 0);
INSERT INTO public.users VALUES (21, 'user_1729523427534', 2, 443);
INSERT INTO public.users VALUES (40, 'user_1729523875412', 5, 0);
INSERT INTO public.users VALUES (20, 'user_1729523427535', 5, 56);
INSERT INTO public.users VALUES (94, 'user_1729525115022', 5, 17);
INSERT INTO public.users VALUES (22, '', 1, 0);
INSERT INTO public.users VALUES (43, 'user_1729524004745', 2, 0);
INSERT INTO public.users VALUES (81, 'user_1729524917380', 2, 678);
INSERT INTO public.users VALUES (42, 'user_1729524004746', 5, 0);
INSERT INTO public.users VALUES (107, 'user_1729525126172', 2, 256);
INSERT INTO public.users VALUES (65, 'user_1729524603412', 2, NULL);
INSERT INTO public.users VALUES (45, 'user_1729524006388', 2, 0);
INSERT INTO public.users VALUES (80, 'user_1729524917381', 5, 146);
INSERT INTO public.users VALUES (44, 'user_1729524006389', 5, 0);
INSERT INTO public.users VALUES (64, 'user_1729524603413', 5, NULL);
INSERT INTO public.users VALUES (114, 'user_1729525150625', 5, 513);
INSERT INTO public.users VALUES (47, 'user_1729524047555', 2, 0);
INSERT INTO public.users VALUES (46, 'user_1729524047556', 5, 0);
INSERT INTO public.users VALUES (67, 'user_1729524673581', 2, 527);
INSERT INTO public.users VALUES (37, 'user_1729523579966', 2, 0);
INSERT INTO public.users VALUES (83, 'user_1729525035383', 2, 511);
INSERT INTO public.users VALUES (36, 'user_1729523579967', 5, 0);
INSERT INTO public.users VALUES (49, 'user_1729524215909', 2, NULL);
INSERT INTO public.users VALUES (66, 'user_1729524673582', 5, 369);
INSERT INTO public.users VALUES (39, 'user_1729523828040', 2, 0);
INSERT INTO public.users VALUES (48, 'user_1729524215910', 5, NULL);
INSERT INTO public.users VALUES (97, 'user_1729525116689', 2, 762);
INSERT INTO public.users VALUES (38, 'user_1729523828041', 5, 0);
INSERT INTO public.users VALUES (106, 'user_1729525126173', 5, 157);
INSERT INTO public.users VALUES (82, 'user_1729525035384', 5, 109);
INSERT INTO public.users VALUES (69, 'user_1729524722559', 2, 787);
INSERT INTO public.users VALUES (68, 'user_1729524722560', 5, 222);
INSERT INTO public.users VALUES (96, 'user_1729525116690', 5, 223);
INSERT INTO public.users VALUES (71, 'user_1729524732159', 2, 783);
INSERT INTO public.users VALUES (85, 'user_1729525095884', 2, 8);
INSERT INTO public.users VALUES (70, 'user_1729524732160', 5, 24);
INSERT INTO public.users VALUES (126, 'user_1729525161608', 5, 220);
INSERT INTO public.users VALUES (84, 'user_1729525095885', 5, 236);
INSERT INTO public.users VALUES (73, 'user_1729524734275', 2, 21);
INSERT INTO public.users VALUES (72, 'user_1729524734276', 5, 338);
INSERT INTO public.users VALUES (99, 'user_1729525118431', 2, 163);
INSERT INTO public.users VALUES (87, 'user_1729525101611', 2, 762);
INSERT INTO public.users VALUES (75, 'user_1729524742159', 2, 607);
INSERT INTO public.users VALUES (109, 'user_1729525128100', 2, 378);
INSERT INTO public.users VALUES (86, 'user_1729525101612', 5, 24);
INSERT INTO public.users VALUES (74, 'user_1729524742160', 5, 153);
INSERT INTO public.users VALUES (98, 'user_1729525118432', 5, 143);
INSERT INTO public.users VALUES (77, 'user_1729524771494', 2, 718);
INSERT INTO public.users VALUES (123, 'user_1729525157642', 2, 829);
INSERT INTO public.users VALUES (76, 'user_1729524771495', 5, 319);
INSERT INTO public.users VALUES (89, 'user_1729525103477', 2, 452);
INSERT INTO public.users VALUES (117, 'user_1729525152337', 2, 95);
INSERT INTO public.users VALUES (79, 'user_1729524833550', 2, 384);
INSERT INTO public.users VALUES (88, 'user_1729525103478', 5, 108);
INSERT INTO public.users VALUES (78, 'user_1729524833551', 5, 38);
INSERT INTO public.users VALUES (108, 'user_1729525128101', 5, 287);
INSERT INTO public.users VALUES (101, 'user_1729525120381', 2, 719);
INSERT INTO public.users VALUES (91, 'user_1729525105044', 2, 211);
INSERT INTO public.users VALUES (100, 'user_1729525120382', 5, 212);
INSERT INTO public.users VALUES (90, 'user_1729525105045', 5, 323);
INSERT INTO public.users VALUES (130, 'user_1729525222341', 5, 64);
INSERT INTO public.users VALUES (93, 'user_1729525106917', 2, 942);
INSERT INTO public.users VALUES (116, 'user_1729525152338', 5, 123);
INSERT INTO public.users VALUES (92, 'user_1729525106918', 5, 98);
INSERT INTO public.users VALUES (103, 'user_1729525122186', 2, 818);
INSERT INTO public.users VALUES (111, 'user_1729525147095', 2, 530);
INSERT INTO public.users VALUES (122, 'user_1729525157643', 5, 561);
INSERT INTO public.users VALUES (110, 'user_1729525147096', 5, 213);
INSERT INTO public.users VALUES (102, 'user_1729525122187', 5, 164);
INSERT INTO public.users VALUES (105, 'user_1729525124097', 2, 911);
INSERT INTO public.users VALUES (104, 'user_1729525124098', 5, 426);
INSERT INTO public.users VALUES (113, 'user_1729525148893', 2, 233);
INSERT INTO public.users VALUES (119, 'user_1729525154388', 2, 127);
INSERT INTO public.users VALUES (112, 'user_1729525148894', 5, 317);
INSERT INTO public.users VALUES (118, 'user_1729525154389', 5, 230);
INSERT INTO public.users VALUES (135, 'user_1729525568710', 2, 551);
INSERT INTO public.users VALUES (115, 'user_1729525150624', 2, 74);
INSERT INTO public.users VALUES (125, 'user_1729525159552', 2, 179);
INSERT INTO public.users VALUES (129, 'user_1729525167734', 2, 901);
INSERT INTO public.users VALUES (121, 'user_1729525155943', 2, 539);
INSERT INTO public.users VALUES (124, 'user_1729525159553', 5, 75);
INSERT INTO public.users VALUES (120, 'user_1729525155944', 5, 191);
INSERT INTO public.users VALUES (133, 'user_1729525519883', 1, 161);
INSERT INTO public.users VALUES (128, 'user_1729525167735', 5, 84);
INSERT INTO public.users VALUES (139, 'user_1729527164230', 2, 512);
INSERT INTO public.users VALUES (127, 'user_1729525161607', 2, 105);
INSERT INTO public.users VALUES (137, 'user_1729527117670', 3, 724);
INSERT INTO public.users VALUES (132, 'user_1729525519884', 4, 672);
INSERT INTO public.users VALUES (131, 'user_1729525222340', 2, 379);
INSERT INTO public.users VALUES (134, 'user_1729525568711', 5, 323);
INSERT INTO public.users VALUES (141, 'user_1729527241730', 2, 343);
INSERT INTO public.users VALUES (136, 'user_1729527117669', 2, 604);
INSERT INTO public.users VALUES (140, 'user_1729527241731', 5, 290);
INSERT INTO public.users VALUES (138, 'user_1729527164231', 5, 135);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 141, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

