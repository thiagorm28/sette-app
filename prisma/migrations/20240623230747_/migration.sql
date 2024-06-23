-- CreateTable
CREATE TABLE "Exercise" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "video_url" TEXT NOT NULL,

    CONSTRAINT "Exercise_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Protocol" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Protocol_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ExercisesOnProtocols" (
    "exerciseId" SERIAL NOT NULL,
    "protocolId" INTEGER NOT NULL,
    "order" INTEGER NOT NULL,

    CONSTRAINT "ExercisesOnProtocols_pkey" PRIMARY KEY ("exerciseId")
);

-- AddForeignKey
ALTER TABLE "ExercisesOnProtocols" ADD CONSTRAINT "ExercisesOnProtocols_exerciseId_fkey" FOREIGN KEY ("exerciseId") REFERENCES "Exercise"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ExercisesOnProtocols" ADD CONSTRAINT "ExercisesOnProtocols_protocolId_fkey" FOREIGN KEY ("protocolId") REFERENCES "Protocol"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
