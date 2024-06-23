/*
  Warnings:

  - You are about to drop the column `video_url` on the `Exercise` table. All the data in the column will be lost.
  - Added the required column `videoUrl` to the `Exercise` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Exercise" DROP COLUMN "video_url",
ADD COLUMN     "videoUrl" TEXT NOT NULL;
