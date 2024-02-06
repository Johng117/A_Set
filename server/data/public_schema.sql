DROP TABLE IF EXISTS public.users CASCADE;

CREATE TABLE IF NOT EXISTS public.users (
    user_id int UNIQUE GENERATED ALWAYS AS IDENTITY,
    first_name text,
    last_name text,
    email text UNIQUE NOT NULL,
    passwd text NOT NULL,
    is_admin boolean DEFAULT false,
    created_at timestamp NOT NULL DEFAULT NOW(),
    updated_at timestamp,
    CONSTRAINT users_pkey PRIMARY KEY(user_id),
)
TABLESPACE pg_default;