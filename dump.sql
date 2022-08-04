CREATE TABLE users (
	"id" SERIAL NOT NULL PRIMARY KEY,
	"userId" INTEGER NOT NULL REFERENCES users(id),
	"url" TEXT NOT NULL,
	"shortUrl" TEXT NOT NULL,
	"visitCount" INTEGER NOT NULL,
	"createdAt" DATE NOT NULL DEFAULT NOW()
);

CREATE TABLE urls (
	"id" SERIAL NOT NULL PRIMARY KEY,
	"name" TEXT NOT NULL,
	"email" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL,
	"linksCount" integer NOT NULL,
	"createdAt" DATE NOT NULL DEFAULT NOW()
);