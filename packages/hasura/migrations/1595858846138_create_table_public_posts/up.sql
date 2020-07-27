CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."post"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "user_id" uuid NOT NULL, "title" varchar NOT NULL, "body" text NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("user_id") REFERENCES "public"."user"("id") ON UPDATE restrict ON DELETE restrict);
