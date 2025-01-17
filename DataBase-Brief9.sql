PGDMP         *                z           brief8    14.3    14.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24576    brief8    DATABASE     k   CREATE DATABASE brief8 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE brief8;
                postgres    false            �            1259    24610    category    TABLE     `   CREATE TABLE public.category (
    idcat integer NOT NULL,
    namecat character varying(30)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    24609    category_idcat_seq    SEQUENCE     �   CREATE SEQUENCE public.category_idcat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.category_idcat_seq;
       public          postgres    false    212                       0    0    category_idcat_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.category_idcat_seq OWNED BY public.category.idcat;
          public          postgres    false    211            �            1259    24617    task    TABLE     �  CREATE TABLE public.task (
    idtask integer NOT NULL,
    title character varying(40),
    description character varying(120),
    status character varying(30) NOT NULL,
    deadline date,
    idur integer,
    category character varying(20),
    CONSTRAINT ck_status CHECK ((((status)::text = 'To do'::text) OR ((status)::text = 'Doing'::text) OR ((status)::text = 'Done'::text)))
);
    DROP TABLE public.task;
       public         heap    postgres    false            �            1259    24616    task_idtask_seq    SEQUENCE     �   CREATE SEQUENCE public.task_idtask_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.task_idtask_seq;
       public          postgres    false    214            	           0    0    task_idtask_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.task_idtask_seq OWNED BY public.task.idtask;
          public          postgres    false    213            �            1259    24603    users    TABLE     �   CREATE TABLE public.users (
    iduser integer NOT NULL,
    lastname character varying(20),
    firstname character varying(20),
    username character varying(20),
    pwd character varying(20)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24602    users_iduser_seq    SEQUENCE     �   CREATE SEQUENCE public.users_iduser_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.users_iduser_seq;
       public          postgres    false    210            
           0    0    users_iduser_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.users_iduser_seq OWNED BY public.users.iduser;
          public          postgres    false    209            g           2604    24613    category idcat    DEFAULT     p   ALTER TABLE ONLY public.category ALTER COLUMN idcat SET DEFAULT nextval('public.category_idcat_seq'::regclass);
 =   ALTER TABLE public.category ALTER COLUMN idcat DROP DEFAULT;
       public          postgres    false    212    211    212            h           2604    24620    task idtask    DEFAULT     j   ALTER TABLE ONLY public.task ALTER COLUMN idtask SET DEFAULT nextval('public.task_idtask_seq'::regclass);
 :   ALTER TABLE public.task ALTER COLUMN idtask DROP DEFAULT;
       public          postgres    false    214    213    214            f           2604    24606    users iduser    DEFAULT     l   ALTER TABLE ONLY public.users ALTER COLUMN iduser SET DEFAULT nextval('public.users_iduser_seq'::regclass);
 ;   ALTER TABLE public.users ALTER COLUMN iduser DROP DEFAULT;
       public          postgres    false    210    209    210            �          0    24610    category 
   TABLE DATA           2   COPY public.category (idcat, namecat) FROM stdin;
    public          postgres    false    212   �                 0    24617    task 
   TABLE DATA           \   COPY public.task (idtask, title, description, status, deadline, idur, category) FROM stdin;
    public          postgres    false    214   �       �          0    24603    users 
   TABLE DATA           K   COPY public.users (iduser, lastname, firstname, username, pwd) FROM stdin;
    public          postgres    false    210   k                  0    0    category_idcat_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.category_idcat_seq', 6, true);
          public          postgres    false    211                       0    0    task_idtask_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.task_idtask_seq', 4, true);
          public          postgres    false    213                       0    0    users_iduser_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.users_iduser_seq', 6, true);
          public          postgres    false    209            m           2606    24615    category category_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (idcat);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    212            o           2606    24623    task task_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (idtask);
 8   ALTER TABLE ONLY public.task DROP CONSTRAINT task_pkey;
       public            postgres    false    214            k           2606    24608    users users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (iduser);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    210            p           2606    24624    task fk_task_users    FK CONSTRAINT     r   ALTER TABLE ONLY public.task
    ADD CONSTRAINT fk_task_users FOREIGN KEY (idur) REFERENCES public.users(iduser);
 <   ALTER TABLE ONLY public.task DROP CONSTRAINT fk_task_users;
       public          postgres    false    214    3179    210            �   C   x�3�(�O)M.�2��M,�N-��K�2�N�I-�2�.-(�/*�2�H�/�I�2������� .�         g   x�3��M���KWHTHI-�.�/PH,(��w�W��,.��R�9���t�t�L89]R�Rs��:�L�F ���&)g���9.�@a�>s]C�?d�1z\\\ �&1      �   [   x�3�LL����$����8c�@(75%5'7������?$c�Y��ƹU@2��IM���̩@f��)13���pfN"2	2!F��� E�*&     