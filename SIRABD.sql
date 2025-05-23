PGDMP                 	    	    y            BD    13.4    13.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    BD    DATABASE     `   CREATE DATABASE "BD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "BD";
                postgres    false            �            1259    16398    asignaturas    TABLE     �   CREATE TABLE public.asignaturas (
    cod_asignatura character varying(7) NOT NULL,
    nombre text,
    cupos integer,
    creditos integer
);
    DROP TABLE public.asignaturas;
       public         heap    postgres    false            �            1259    16404    estudiantes    TABLE     �   CREATE TABLE public.estudiantes (
    cod_estudiante integer NOT NULL,
    nombre text,
    programa_academico text,
    creditos integer
);
    DROP TABLE public.estudiantes;
       public         heap    postgres    false            �            1259    16410 
   matriculas    TABLE     �   CREATE TABLE public.matriculas (
    codigo_de_estudiante integer NOT NULL,
    codigo_de_asignatura character varying NOT NULL
);
    DROP TABLE public.matriculas;
       public         heap    postgres    false            �          0    16398    asignaturas 
   TABLE DATA           N   COPY public.asignaturas (cod_asignatura, nombre, cupos, creditos) FROM stdin;
    public          postgres    false    200   m       �          0    16404    estudiantes 
   TABLE DATA           [   COPY public.estudiantes (cod_estudiante, nombre, programa_academico, creditos) FROM stdin;
    public          postgres    false    201   c       �          0    16410 
   matriculas 
   TABLE DATA           P   COPY public.matriculas (codigo_de_estudiante, codigo_de_asignatura) FROM stdin;
    public          postgres    false    202          ,           2606    16417    asignaturas asignaturas_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.asignaturas
    ADD CONSTRAINT asignaturas_pkey PRIMARY KEY (cod_asignatura);
 F   ALTER TABLE ONLY public.asignaturas DROP CONSTRAINT asignaturas_pkey;
       public            postgres    false    200            .           2606    16419    estudiantes estudiantes_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_pkey PRIMARY KEY (cod_estudiante);
 F   ALTER TABLE ONLY public.estudiantes DROP CONSTRAINT estudiantes_pkey;
       public            postgres    false    201            0           2606    16421    matriculas matriculas_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.matriculas
    ADD CONSTRAINT matriculas_pkey PRIMARY KEY (codigo_de_estudiante, codigo_de_asignatura);
 D   ALTER TABLE ONLY public.matriculas DROP CONSTRAINT matriculas_pkey;
       public            postgres    false    202    202            1           2606    16422    matriculas fk_matriculas    FK CONSTRAINT     �   ALTER TABLE ONLY public.matriculas
    ADD CONSTRAINT fk_matriculas FOREIGN KEY (codigo_de_asignatura) REFERENCES public.asignaturas(cod_asignatura);
 B   ALTER TABLE ONLY public.matriculas DROP CONSTRAINT fk_matriculas;
       public          postgres    false    200    2860    202            2           2606    16427    matriculas fkmatriculas    FK CONSTRAINT     �   ALTER TABLE ONLY public.matriculas
    ADD CONSTRAINT fkmatriculas FOREIGN KEY (codigo_de_estudiante) REFERENCES public.estudiantes(cod_estudiante);
 A   ALTER TABLE ONLY public.matriculas DROP CONSTRAINT fkmatriculas;
       public          postgres    false    2862    201    202            �   �   x�]�Mn� �����"/���,��<�R/�#T=R.V ]T]��fF�uQJ�;NT�|�Gb�0���;��X��9g�ҥ�s'�0��
���fi�4X8K���>N(���Էe��'g����
U;B�5�0�y`�Y�86W�m갷��6h������;����
F1����h��`]U+s�r6gy��ri��6x}���.{��k��"Lh��]�?l/B�@�U%      �   �   x�}��
1D��+���abJ9A��f���Jr6~�	��Y���\��Z�NOb�)')U��C��P|�:�=p9�k,s��(��G�9�v<�xOSL��!Y�FY�j4��jO�O�CM�7�El�(k;��[ݟ���y[i�߱N6      �   [   x�]���0�3�Cc2D7`�9���ǧ؎������T�i���Dx'Y��O�1[ɿfy��ܱ����t�=��6�������{е���'�     