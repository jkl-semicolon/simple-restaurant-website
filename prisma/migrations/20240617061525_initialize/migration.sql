-- CreateEnum
CREATE TYPE "Type" AS ENUM ('DRINKS', 'APPETIZERS', 'MAINS', 'RICE', 'NOODLES', 'DESSERTS', 'SOUPS');

-- CreateTable
CREATE TABLE "menu_items" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "type" "Type" NOT NULL,
    "price" INTEGER NOT NULL,
    "is_glutenfree" BOOLEAN NOT NULL DEFAULT false,
    "is_vegan" BOOLEAN NOT NULL DEFAULT false,
    "is_spicy" BOOLEAN NOT NULL DEFAULT false,
    "image_url" TEXT,

    CONSTRAINT "menu_items_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Admin" (
    "id" SERIAL NOT NULL,
    "username" VARCHAR(30) NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "Admin_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Info" (
    "id" SERIAL NOT NULL,
    "hours" TEXT NOT NULL,
    "days" TEXT NOT NULL,
    "message" TEXT,
    "address" TEXT NOT NULL,
    "phone" TEXT NOT NULL,

    CONSTRAINT "Info_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Admin_username_key" ON "Admin"("username");
