Password: 
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO gerardo_partida;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO gerardo_partida;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO gerardo_partida;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO gerardo_partida;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO gerardo_partida;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO gerardo_partida;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO gerardo_partida;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO gerardo_partida;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO gerardo_partida;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO gerardo_partida;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO gerardo_partida;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO gerardo_partida;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: books_author; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.books_author (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    last_name character varying(128)
);


ALTER TABLE public.books_author OWNER TO gerardo_partida;

--
-- Name: books_author_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.books_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_author_id_seq OWNER TO gerardo_partida;

--
-- Name: books_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.books_author_id_seq OWNED BY public.books_author.id;


--
-- Name: books_book; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.books_book (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    publish_year smallint,
    pages smallint,
    price numeric(6,2),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.books_book OWNER TO gerardo_partida;

--
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.books_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_book_id_seq OWNER TO gerardo_partida;

--
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books_book.id;


--
-- Name: books_booksauthors; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.books_booksauthors (
    id bigint NOT NULL,
    author_id bigint NOT NULL,
    book_id bigint NOT NULL
);


ALTER TABLE public.books_booksauthors OWNER TO gerardo_partida;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.books_booksauthors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksauthors_id_seq OWNER TO gerardo_partida;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.books_booksauthors_id_seq OWNED BY public.books_booksauthors.id;


--
-- Name: books_genre; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.books_genre (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    sub_genre character varying(128)
);


ALTER TABLE public.books_genre OWNER TO gerardo_partida;

--
-- Name: books_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.books_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_genre_id_seq OWNER TO gerardo_partida;

--
-- Name: books_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.books_genre_id_seq OWNED BY public.books_genre.id;


--
-- Name: books_publisher; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.books_publisher (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    publisher_country character varying(256),
    publisher_language character varying(256)
);


ALTER TABLE public.books_publisher OWNER TO gerardo_partida;

--
-- Name: books_publisher_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.books_publisher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_publisher_id_seq OWNER TO gerardo_partida;

--
-- Name: books_publisher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.books_publisher_id_seq OWNED BY public.books_publisher.id;


--
-- Name: books_store; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.books_store (
    id bigint NOT NULL,
    store_id smallint,
    name character varying(256) NOT NULL,
    store_city character varying(256),
    store_zip_code character varying(256)
);


ALTER TABLE public.books_store OWNER TO gerardo_partida;

--
-- Name: books_store_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.books_store_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_store_id_seq OWNER TO gerardo_partida;

--
-- Name: books_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.books_store_id_seq OWNED BY public.books_store.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO gerardo_partida;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO gerardo_partida;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO gerardo_partida;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO gerardo_partida;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO gerardo_partida;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO gerardo_partida;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO gerardo_partida;

--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO gerardo_partida;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_blacklistedtoken_id_seq OWNER TO gerardo_partida;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: gerardo_partida
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id integer,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO gerardo_partida;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: gerardo_partida
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_outstandingtoken_id_seq OWNER TO gerardo_partida;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gerardo_partida
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: books_author id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.books_author ALTER COLUMN id SET DEFAULT nextval('public.books_author_id_seq'::regclass);


--
-- Name: books_book id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.books_book ALTER COLUMN id SET DEFAULT nextval('public.books_book_id_seq'::regclass);


--
-- Name: books_booksauthors id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.books_booksauthors ALTER COLUMN id SET DEFAULT nextval('public.books_booksauthors_id_seq'::regclass);


--
-- Name: books_genre id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.books_genre ALTER COLUMN id SET DEFAULT nextval('public.books_genre_id_seq'::regclass);


--
-- Name: books_publisher id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.books_publisher ALTER COLUMN id SET DEFAULT nextval('public.books_publisher_id_seq'::regclass);


--
-- Name: books_store id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.books_store ALTER COLUMN id SET DEFAULT nextval('public.books_store_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add author	7	add_author
26	Can change author	7	change_author
27	Can delete author	7	delete_author
28	Can view author	7	view_author
29	Can add book	8	add_book
30	Can change book	8	change_book
31	Can delete book	8	delete_book
32	Can view book	8	view_book
33	Can add books authors	9	add_booksauthors
34	Can change books authors	9	change_booksauthors
35	Can delete books authors	9	delete_booksauthors
36	Can view books authors	9	view_booksauthors
37	Can add genre	10	add_genre
38	Can change genre	10	change_genre
39	Can delete genre	10	delete_genre
40	Can view genre	10	view_genre
41	Can add publisher	11	add_publisher
42	Can change publisher	11	change_publisher
43	Can delete publisher	11	delete_publisher
44	Can view publisher	11	view_publisher
45	Can add store	12	add_store
46	Can change store	12	change_store
47	Can delete store	12	delete_store
48	Can view store	12	view_store
49	Can add blacklisted token	13	add_blacklistedtoken
50	Can change blacklisted token	13	change_blacklistedtoken
51	Can delete blacklisted token	13	delete_blacklistedtoken
52	Can view blacklisted token	13	view_blacklistedtoken
53	Can add outstanding token	14	add_outstandingtoken
54	Can change outstanding token	14	change_outstandingtoken
55	Can delete outstanding token	14	delete_outstandingtoken
56	Can view outstanding token	14	view_outstandingtoken
57	Can add user	15	add_user
58	Can change user	15	change_user
59	Can delete user	15	delete_user
60	Can view user	15	view_user
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$VuZ8BiqUe1ZQnIt9w2Ng4p$VdLxhrhwBOqkIa2J59lOKjl8BX8/lSy7THoAHIyUjV8=	2022-04-12 16:34:14.559685+00	t	admin			admin@admin.com	t	t	2022-04-12 16:15:28.964943+00
2	pbkdf2_sha256$320000$SNPwnGYLLo5j0mlC7LzHLA$hnRmrHqRvfnHneO1ccVp6cdUzO7paUUt9Xanf2LKWjY=	\N	f	user1			nuevo1@nuevo.com	f	t	2022-04-12 18:17:44.890551+00
3	pbkdf2_sha256$320000$oYaRQA6roZmVktIkqaiXBu$cWMIvgafJpIXrJ/o7QMxoAYmV7459V3kwQOojrAbkXc=	\N	f	user2			nuevo2@nuevo.com	f	t	2022-04-12 18:35:01.936043+00
4	pbkdf2_sha256$320000$MEQg2zdK0KVji5HksQ7CvI$7zXVrdXB1mRelsNbIG5AkY45B3p+B9Z5OMcawPSEkWs=	\N	f	user3			nuevo3@nuevo.com	f	t	2022-04-12 20:50:07.841654+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: books_author; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.books_author (id, name, last_name) FROM stdin;
\.


--
-- Data for Name: books_book; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.books_book (id, name, publish_year, pages, price, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: books_booksauthors; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.books_booksauthors (id, author_id, book_id) FROM stdin;
\.


--
-- Data for Name: books_genre; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.books_genre (id, name, sub_genre) FROM stdin;
\.


--
-- Data for Name: books_publisher; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.books_publisher (id, name, publisher_country, publisher_language) FROM stdin;
\.


--
-- Data for Name: books_store; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.books_store (id, store_id, name, store_city, store_zip_code) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	books	author
8	books	book
9	books	booksauthors
10	books	genre
11	books	publisher
12	books	store
13	token_blacklist	blacklistedtoken
14	token_blacklist	outstandingtoken
15	users	user
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-04-12 15:32:37.253973+00
2	auth	0001_initial	2022-04-12 15:32:37.319517+00
3	admin	0001_initial	2022-04-12 15:32:37.338111+00
4	admin	0002_logentry_remove_auto_add	2022-04-12 15:32:37.344168+00
5	admin	0003_logentry_add_action_flag_choices	2022-04-12 15:32:37.349904+00
6	contenttypes	0002_remove_content_type_name	2022-04-12 15:32:37.361777+00
7	auth	0002_alter_permission_name_max_length	2022-04-12 15:32:37.368774+00
8	auth	0003_alter_user_email_max_length	2022-04-12 15:32:37.374869+00
9	auth	0004_alter_user_username_opts	2022-04-12 15:32:37.380496+00
10	auth	0005_alter_user_last_login_null	2022-04-12 15:32:37.386337+00
11	auth	0006_require_contenttypes_0002	2022-04-12 15:32:37.387939+00
12	auth	0007_alter_validators_add_error_messages	2022-04-12 15:32:37.393262+00
13	auth	0008_alter_user_username_max_length	2022-04-12 15:32:37.402766+00
14	auth	0009_alter_user_last_name_max_length	2022-04-12 15:32:37.409075+00
15	auth	0010_alter_group_name_max_length	2022-04-12 15:32:37.416152+00
16	auth	0011_update_proxy_permissions	2022-04-12 15:32:37.422814+00
17	auth	0012_alter_user_first_name_max_length	2022-04-12 15:32:37.428646+00
18	books	0001_initial	2022-04-12 15:32:37.450843+00
19	books	0002_genre_publisher_store_alter_booksauthors_author	2022-04-12 15:32:37.470207+00
20	books	0003_alter_book_pages_alter_book_publish_year	2022-04-12 15:32:37.476447+00
21	books	0004_alter_book_price	2022-04-12 15:32:37.48018+00
22	books	0005_alter_store_store_id	2022-04-12 15:32:37.482919+00
23	sessions	0001_initial	2022-04-12 15:32:37.494047+00
24	token_blacklist	0001_initial	2022-04-12 16:49:28.568714+00
25	token_blacklist	0002_outstandingtoken_jti_hex	2022-04-12 16:49:28.576325+00
26	token_blacklist	0003_auto_20171017_2007	2022-04-12 16:49:28.587321+00
27	token_blacklist	0004_auto_20171017_2013	2022-04-12 16:49:28.598134+00
28	token_blacklist	0005_remove_outstandingtoken_jti	2022-04-12 16:49:28.605566+00
29	token_blacklist	0006_auto_20171017_2113	2022-04-12 16:49:28.612566+00
30	token_blacklist	0007_auto_20171017_2214	2022-04-12 16:49:28.632921+00
31	token_blacklist	0008_migrate_to_bigautofield	2022-04-12 16:49:28.67803+00
32	token_blacklist	0010_fix_migrate_to_bigautofield	2022-04-12 16:49:28.69261+00
33	token_blacklist	0011_linearizes_history	2022-04-12 16:49:28.694822+00
34	token_blacklist	0012_alter_outstandingtoken_user	2022-04-12 16:49:28.70192+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
dt168atchb7x0xfv3dipeylqp6i4ut63	.eJxVjDsOwjAQBe_iGlnO-hdT0nMGa9fr4ACypTipEHeHSCmgfTPzXiLitpa49bzEmcVZDOL0uxGmR6474DvWW5Op1XWZSe6KPGiX18b5eTncv4OCvXxrcgw8GWuCs8YDaZ6SHj2ZpJhHYmczDBnQq-CAFaImCIp9SN7akIx4fwDpczfX:1neJT4:K6lFw9LWG-4cMSmgWbdX6YTjXPz5vCS0hkWK4NYApYk	2022-04-26 16:34:14.561571+00
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
1	2022-04-12 21:37:27.132331+00	10
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: gerardo_partida
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg2ODU4MSwiaWF0IjoxNjQ5NzgyMTgxLCJqdGkiOiI2N2ZlOWQwOWM4ZDI0ZDIzOTg3Yzk1NzlmYmNkMzExMyIsInVzZXJfaWQiOjF9.J0lINMRkWWkMMk1LA4A4hwDKucNALw5vBSQSD2xlGbc	2022-04-12 16:49:41.392018+00	2022-04-13 16:49:41+00	1	67fe9d09c8d24d23987c9579fbcd3113
2	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3NDExMiwiaWF0IjoxNjQ5Nzg3NzEyLCJqdGkiOiIzNmZjZGI0OWQzYTE0N2NlYmI5Nzc2YmM1Nzc5M2NkNyIsInVzZXJfaWQiOjF9.Yo-Wip2yrdIN4cs_KQnOtGIUDkI1wXz7A8lGwvGGhBk	2022-04-12 18:21:52.88716+00	2022-04-13 18:21:52+00	1	36fcdb49d3a147cebb9776bc57793cd7
3	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3NDk2MiwiaWF0IjoxNjQ5Nzg4NTYyLCJqdGkiOiJiZjY2YzhmYjg1OWU0NzJjOGUxMWNiMGZlNWEyZDcxZCIsInVzZXJfaWQiOjN9.2w1HDJf-Ii0wvQr-o7rrC1jCivk0HZpSEihLG75-00E	2022-04-12 18:36:02.757271+00	2022-04-13 18:36:02+00	3	bf66c8fb859e472c8e11cb0fe5a2d71d
4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3NTIyOCwiaWF0IjoxNjQ5Nzg4ODI4LCJqdGkiOiIwZmRmMzI3ZmY3ZTE0NTMxYTU0NWEzN2YyZDZhNTJmMCIsInVzZXJfaWQiOjN9.5xqUdEa0z9NoE-yptXcMxf-aG8GbOo5PZuphQkRgYZY	2022-04-12 18:40:28.718956+00	2022-04-13 18:40:28+00	3	0fdf327ff7e14531a545a37f2d6a52f0
5	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3NTMxNywiaWF0IjoxNjQ5Nzg4OTE3LCJqdGkiOiJhYzM4YTk3MGQ0ZGI0YTY1Yjk2NzI1Zjg3NTM1NzAzMyIsInVzZXJfaWQiOjN9.h1PYTPYcINjMoy04mFnA4dQtdseVZMItNdeVnznrItI	2022-04-12 18:41:57.589287+00	2022-04-13 18:41:57+00	3	ac38a970d4db4a65b96725f875357033
6	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3NTM0OSwiaWF0IjoxNjQ5Nzg4OTQ5LCJqdGkiOiJjOWY0YWEwOWZiYzk0YzEyOTYwNGVkOGI2OGE4ZGFjMSIsInVzZXJfaWQiOjJ9.zv9dMsUCFKqLJK_7xuRIFwkRJDZrrCTcEmVpSdV0hMM	2022-04-12 18:42:29.631655+00	2022-04-13 18:42:29+00	2	c9f4aa09fbc94c129604ed8b68a8dac1
7	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3NTY4MSwiaWF0IjoxNjQ5Nzg5MjgxLCJqdGkiOiI2YTRmMjZlMjhlYjg0YWI1OGNjYmFlYmFjNzVmMGZjNCIsInVzZXJfaWQiOjN9.e9-TBQmc81cOI0NeMhhn3eECME1_ZUAZmNcUrSt1gNw	2022-04-12 18:48:01.988431+00	2022-04-13 18:48:01+00	3	6a4f26e28eb84ab58ccbaebac75f0fc4
8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3NTgwNCwiaWF0IjoxNjQ5Nzg5NDA0LCJqdGkiOiI4OThjZmExM2UxMjc0NzJiYTE4NzQ2NWEzYzY1NDRlOSIsInVzZXJfaWQiOjN9.krXDeBXV8sZ8zH3d40B2mLxE8l8GYM_OzXxFb1q9Fiw	2022-04-12 18:50:04.503908+00	2022-04-13 18:50:04+00	3	898cfa13e127472ba187465a3c6544e9
9	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3NTg1MCwiaWF0IjoxNjQ5Nzg5NDUwLCJqdGkiOiI0MWNlY2RjMzZkZmI0OWU3YjVlY2ViMjZlYTc1MDliNCIsInVzZXJfaWQiOjJ9.EgIjrbhUAs2QbT1o6CEI1_Njca2uAXqDCdXSviZU5qw	2022-04-12 18:50:50.999361+00	2022-04-13 18:50:50+00	2	41cecdc36dfb49e7b5eceb26ea7509b4
10	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTc5MCwiaWF0IjoxNjQ5Nzk5MzkwLCJqdGkiOiIyOWE4MmM3NWM3NWI0Y2MxOWI5YTI0YTNiZDM2ZmRmYyIsInVzZXJfaWQiOjR9.LnhepdGqxdkmJ24aZ8urqMxfCEYUH7-q1CSojNyOvUs	2022-04-12 21:36:30.967139+00	2022-04-13 21:36:30+00	4	29a82c75c75b4cc19b9a24a3bd36fdfc
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: books_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.books_author_id_seq', 1, false);


--
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.books_book_id_seq', 1, false);


--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.books_booksauthors_id_seq', 1, false);


--
-- Name: books_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.books_genre_id_seq', 1, false);


--
-- Name: books_publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.books_publisher_id_seq', 1, false);


--
-- Name: books_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.books_store_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 34, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 1, true);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gerardo_partida
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 10, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: books_author books_author_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.books_author
    ADD CONSTRAINT books_author_pkey PRIMARY KEY (id);


--
-- Name: books_book books_book_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_pkey PRIMARY KEY (id);


--
-- Name: books_booksauthors books_booksauthors_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_pkey PRIMARY KEY (id);


--
-- Name: books_genre books_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.books_genre
    ADD CONSTRAINT books_genre_pkey PRIMARY KEY (id);


--
-- Name: books_publisher books_publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.books_publisher
    ADD CONSTRAINT books_publisher_pkey PRIMARY KEY (id);


--
-- Name: books_store books_store_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.books_store
    ADD CONSTRAINT books_store_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: books_booksauthors_author_id_799022ff; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX books_booksauthors_author_id_799022ff ON public.books_booksauthors USING btree (author_id);


--
-- Name: books_booksauthors_book_id_f6bd8a7e; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX books_booksauthors_book_id_f6bd8a7e ON public.books_booksauthors USING btree (book_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: gerardo_partida
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_author_id_799022ff_fk_books_author_id; Type: FK CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_author_id_799022ff_fk_books_author_id FOREIGN KEY (author_id) REFERENCES public.books_author(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_book_id_f6bd8a7e_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_book_id_f6bd8a7e_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: gerardo_partida
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

