BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "items_in_a_meal" (
    "id" bigserial PRIMARY KEY,
    "mealIDId" bigint NOT NULL,
    "itemIDId" bigint NOT NULL,
    "quantity" double precision NOT NULL,
    "remarks" text NOT NULL,
    "calories" bigint NOT NULL,
    "tags" json NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "master_items" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "unit" text NOT NULL,
    "calories" double precision NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "meals" (
    "id" bigserial PRIMARY KEY,
    "datetimestamp" timestamp without time zone NOT NULL,
    "name" text NOT NULL,
    "remarks" text NOT NULL,
    "tag" json NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "items_in_a_meal"
    ADD CONSTRAINT "items_in_a_meal_fk_0"
    FOREIGN KEY("mealIDId")
    REFERENCES "meals"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "items_in_a_meal"
    ADD CONSTRAINT "items_in_a_meal_fk_1"
    FOREIGN KEY("itemIDId")
    REFERENCES "master_items"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR consumeal_tracker
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('consumeal_tracker', '20241108164457272', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241108164457272', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
