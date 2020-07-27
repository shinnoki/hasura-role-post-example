CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."comment"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "post_id" uuid NOT NULL, "user_id" uuid, "body" text NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("post_id") REFERENCES "public"."post"("id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("user_id") REFERENCES "public"."user"("id") ON UPDATE restrict ON DELETE restrict);
