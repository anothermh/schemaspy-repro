--! Previous: -
--! Hash: sha1:d1512c588aa8faaedb7b363886fe6baed9c462ff

CREATE TABLE
  public.foobars (
    id uuid DEFAULT gen_random_uuid () NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    PRIMARY KEY (id)
  );

CREATE INDEX idx_foobars_created_at ON public.foobars (created_at timestamp_ops);

CREATE INDEX idx_foobars_updated_at ON public.foobars (updated_at timestamp_ops);
