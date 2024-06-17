import prisma from "./prisma.js";
import "dotenv/config";

const seed = () => {

}

seed()
	.then(async () => {
		await prisma.$disconnect();
	})