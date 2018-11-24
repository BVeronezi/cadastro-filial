-- Table: public.todo

-- DROP TABLE public.todo;

CREATE TABLE public.todo
(
    cnpj integer NOT NULL,
    "Razao_Nome" text COLLATE pg_catalog."default",
    "Tipope" text COLLATE pg_catalog."default",
    "Nome_Fantasia" text COLLATE pg_catalog."default",
    "Nome_resumido" text COLLATE pg_catalog."default",
    "InscEst" integer,
    "InscMun" integer,
    "Regime_Fiscal" text COLLATE pg_catalog."default",
    "Suframa" integer,
    "Cep" integer,
    "Logradouro" text COLLATE pg_catalog."default",
    "Endereco" text COLLATE pg_catalog."default",
    "Numero" integer,
    "Complemento" text COLLATE pg_catalog."default",
    "Pais" text COLLATE pg_catalog."default",
    "UF" text COLLATE pg_catalog."default",
    "Cidade" text COLLATE pg_catalog."default",
    "Telefone" integer,
    "Celular" integer,
    "Tel_comer" integer,
    "Email" text COLLATE pg_catalog."default",
    "Contato" text COLLATE pg_catalog."default",
    "Site_Empresa" text COLLATE pg_catalog."default",
    n_check integer,
    tama_loja text COLLATE pg_catalog."default",
    num_func integer,
    "RG" integer,
    "CPF" integer,
    "DataNascto" integer,
    "Sexo" text COLLATE pg_catalog."default",
    "Nome_Pai" text COLLATE pg_catalog."default",
    "Nome_Mae" text COLLATE pg_catalog."default",
    "Est_civil" text COLLATE pg_catalog."default",
    CONSTRAINT filial_pkey PRIMARY KEY (cnpj)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.todo
    OWNER to postgres;