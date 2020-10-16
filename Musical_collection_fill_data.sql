use [Musical Collection];
go

/*Performers*/
/*
INSERT INTO [Performers] ([Name])
VALUES ('Muse');

INSERT INTO [Performers] ([Name])
VALUES ('The Beatles');

INSERT INTO [Performers] ([Name])
VALUES ('Queen');

INSERT INTO [Performers] ([Name])
VALUES ('Rammstein');

INSERT INTO [Performers] ([Name])
VALUES ('Nirvana');

INSERT INTO [Performers] ([Name])
VALUES ('AC/DC');

INSERT INTO [Performers] ([Name])
VALUES ('Metallica');
*/
/*Songs*/
/*
INSERT INTO [Songs] ([Name], [Duration])
VALUES ('Uprising', '00:05:03');

INSERT INTO [Songs] ([Name], [Duration])
VALUES ('We Can Work It Out', '00:02:15');

INSERT INTO [Songs] ([Name], [Duration])
VALUES ('Bohemian Rhapsody', '00:05:55');

INSERT INTO [Songs] ([Name], [Duration])
VALUES ('Sonne', '00:04:32');

INSERT INTO [Songs] ([Name], [Duration])
VALUES ('Smells Like Teen Spirit', '00:05:01');

INSERT INTO [Songs] ([Name], [Duration])
VALUES ('Thunderstuck', '00:04:53');

INSERT INTO [Songs] ([Name], [Duration])
VALUES ('Nothing Else Matters', '00:06:28');
*/
/*Disks*/
/*
INSERT INTO [Disks] ([Name], [Date], [Review])
VALUES ('The Resistance', '2009-09-14', 'The Resistance is the fifth studio album by English rock band Muse. It was released on 14 September 2009 through the band own Helium-3 imprint as well as Warner Bros. Records. Produced by the band and mixed by Mark Stent,[3][4] the album was recorded from September 2008 to May 2009 at Studio Bellini in Lake Como, Italy. Musically, the record is similar to some of the band previous material, mixing orchestral elements with rock and electronic music. The album also saw the band craft a three-part, 15-minute long symphony piece titled "Exogenesis". Lyrically, it is a concept record, as well as continuation of the themes from their previous records, being influenced by politics and more oppressive subjects.');

INSERT INTO [Disks] ([Name], [Date], [Review])
VALUES ('Day Tripper', '1965-12-06', '"Day Tripper" is a song by the English rock band the Beatles that was released as a double A-side single with "We Can Work It Out" in December 1965. Written primarily by John Lennon, it was credited to the Lennon–McCartney partnership. Both songs were recorded during the sessions for the band Rubber Soul album. The single topped charts in Britain, Ireland, the Netherlands and Norway. In the United States, "Day Tripper" peaked at number five on the Billboard Hot 100 chart and "We Can Work It Out" held the top position.');

INSERT INTO [Disks] ([Name], [Date], [Review])
VALUES ('A Night At The Opera', '1975-10-31', 'A Night at the Opera is the fourth studio album by the British rock band Queen, released on 21 November 1975 by EMI Records in the United Kingdom and by Elektra Records in the United States. Produced by Roy Thomas Baker and Queen, it was reportedly the most expensive album ever recorded at the time of its release.[1] The album title is taken from the Marx Brothers film of the same name.');

INSERT INTO [Disks] ([Name], [Date], [Review])
VALUES ('Mutter', '2001-02-12', 'Mutter (English: "Mother") is the third album by German Neue Deutsche Harte band Rammstein. It was released on 2 April 2001 through Motor and Universal Music. The album cover image is a photograph of a dead fetus, which was taken by Daniel & Geo Fuchs. The album has yielded six singles which, to date, are the most released from any Rammstein album.');

INSERT INTO [Disks] ([Name], [Date], [Review])
VALUES ('Nevermind', '1991-09-10', 'Nevermind is the second studio album by American rock band Nirvana, released on September 24, 1991, by DGC Records. Produced by Butch Vig, it was Nirvana first release on the DGC and the first to feature drummer Dave Grohl. Characterized by its polished and cleaner sound, the album was a departure from the band rawer debut album Bleach. Nirvana recorded the album at Sound City Studios in Van Nuys, California, and Smart Studios in Madison, Wisconsin in May and June 1991 and it was mastered on the afternoon of August 2 at The Mastering Lab in Hollywood, California.');

INSERT INTO [Disks] ([Name], [Date], [Review])
VALUES ('The Razors Edge', '1990-09-10', 'The Razors Edge is the twelfth studio album by Australian hard rock band AC/DC released in September 1990. It was the band eleventh internationally released studio album and the twelfth to be released in Australia. It was a major comeback for the band, featuring the hits "Thunderstruck" and "Are You Ready", which reached #5 and #16 respectively on Billboard Mainstream Rock Tracks Chart, and "Moneytalks", which peaked at #23 on the Billboard Hot 100.[1] The album reached #2 on the US Billboard 200 and #4 in the UK, a smash commercial success that returned the band to the popularity of its glory years of the late 1970s and early 1980s. The album has been certified 5x platinum (5 million copies sold) in the US,[2] and was re-released in 2003 as part of the AC/DC Remasters series.');

INSERT INTO [Disks] ([Name], [Date], [Review])
VALUES ('Metallica', '1992-04-20', 'Metallica (commonly known as The Black Album) is the fifth studio album by American heavy metal band Metallica, released on August 12, 1991,[6] through Elektra Records. It was recorded in an eight-month span at One on One Recording Studios in Los Angeles. The recording of the album was troubled, however, and, during production, the band frequently came into conflict with their new producer, Bob Rock. The album marked a change in the band sound from the thrash metal style of the previous four albums to a slower and heavier one rooted in heavy metal.');
*/
/*Publishers*/
/*
INSERT INTO [Publishers] ([Name], [Country], [LegalAddress])
VALUES ('Warner Bros Records', 'United States', '3701 Warner Boulevard in Burbank California');

INSERT INTO [Publishers] ([Name], [Country], [LegalAddress])
VALUES ('Parlophone', 'United Kingdom', '43 Brook green London');

INSERT INTO [Publishers] ([Name], [Country], [LegalAddress])
VALUES ('Motor Music', 'Deutschland', 'Seelower str 5 10439 Berlin');

INSERT INTO [Publishers] ([Name], [Country], [LegalAddress])
VALUES ('DGC Records', 'United States1', '2220 Colorado Avenue Santa Monica California');

INSERT INTO [Publishers] ([Name], [Country], [LegalAddress])
VALUES ('ATCO Records', 'United States2', '1633 Broadway NY 10019');

INSERT INTO [Publishers] ([Name], [Country], [LegalAddress])
VALUES ('Electra Records', 'United States3', '1633 Broadway NY');
*/
/*Styles*/
/*
INSERT INTO [Styles] ([Name])
VALUES ('Art rock');

INSERT INTO [Styles] ([Name])
VALUES ('Folk rock');

INSERT INTO [Styles] ([Name])
VALUES ('Progressive rock');

INSERT INTO [Styles] ([Name])
VALUES ('Industrial metal');

INSERT INTO [Styles] ([Name])
VALUES ('Grunge');

INSERT INTO [Styles] ([Name])
VALUES ('Hard rock');

INSERT INTO [Styles] ([Name])
VALUES ('Rock ballad');
*/
/*DisksPublishers*/
/*
INSERT INTO [DisksPublishers] ([DiskId], [PublisherId])
VALUES (1, 1);

INSERT INTO [DisksPublishers] ([DiskId], [PublisherId])
VALUES (2, 2);

INSERT INTO [DisksPublishers] ([DiskId], [PublisherId])
VALUES (3, 12);

INSERT INTO [DisksPublishers] ([DiskId], [PublisherId])
VALUES (4, 3);

INSERT INTO [DisksPublishers] ([DiskId], [PublisherId])
VALUES (5, 10);

INSERT INTO [DisksPublishers] ([DiskId], [PublisherId])
VALUES (6, 11);

INSERT INTO [DisksPublishers] ([DiskId], [PublisherId])
VALUES (7, 12);
*/
/*DisksStyles*/
/*
INSERT INTO [DisksStyles] ([DiskId], [StyleId])
VALUES (1, 1);

INSERT INTO [DisksStyles] ([DiskId], [StyleId])
VALUES (2, 2);

INSERT INTO [DisksStyles] ([DiskId], [StyleId])
VALUES (3, 3);

INSERT INTO [DisksStyles] ([DiskId], [StyleId])
VALUES (4, 4);

INSERT INTO [DisksStyles] ([DiskId], [StyleId])
VALUES (5, 5);

INSERT INTO [DisksStyles] ([DiskId], [StyleId])
VALUES (6, 6);

INSERT INTO [DisksStyles] ([DiskId], [StyleId])
VALUES (7, 7);
*/
/*SongsStyles*/
/*
INSERT INTO [SongsStyles] ([SongId], [StyleId])
VALUES (2, 1);

INSERT INTO [SongsStyles] ([SongId], [StyleId])
VALUES (3, 2);

INSERT INTO [SongsStyles] ([SongId], [StyleId])
VALUES (4, 3);

INSERT INTO [SongsStyles] ([SongId], [StyleId])
VALUES (5, 4);

INSERT INTO [SongsStyles] ([SongId], [StyleId])
VALUES (6, 5);

INSERT INTO [SongsStyles] ([SongId], [StyleId])
VALUES (7, 6);

INSERT INTO [SongsStyles] ([SongId], [StyleId])
VALUES (8, 7);
*/
/*DisksSongs*/
/*
INSERT INTO [DisksSongs] ([DiskId], [SongId])
VALUES (1, 2);

INSERT INTO [DisksSongs] ([DiskId], [SongId])
VALUES (2, 3);

INSERT INTO [DisksSongs] ([DiskId], [SongId])
VALUES (3, 4);

INSERT INTO [DisksSongs] ([DiskId], [SongId])
VALUES (4, 5);

INSERT INTO [DisksSongs] ([DiskId], [SongId])
VALUES (5, 6);

INSERT INTO [DisksSongs] ([DiskId], [SongId])
VALUES (6, 7);

INSERT INTO [DisksSongs] ([DiskId], [SongId])
VALUES (7, 8);
*/
/*DisksPerformers*/
/*
INSERT INTO [DisksPerformers] ([DiskId], [PerformerId])
VALUES (1, 1);

INSERT INTO [DisksPerformers] ([DiskId], [PerformerId])
VALUES (2, 2);

INSERT INTO [DisksPerformers] ([DiskId], [PerformerId])
VALUES (3, 3);

INSERT INTO [DisksPerformers] ([DiskId], [PerformerId])
VALUES (4, 4);

INSERT INTO [DisksPerformers] ([DiskId], [PerformerId])
VALUES (5, 5);

INSERT INTO [DisksPerformers] ([DiskId], [PerformerId])
VALUES (6, 6);

INSERT INTO [DisksPerformers] ([DiskId], [PerformerId])
VALUES (7, 7);
*/
/*SongsPerformers*/
/*
INSERT INTO [SongsPerformers] ([SongId], [PerformerId])
VALUES (2, 1);

INSERT INTO [SongsPerformers] ([SongId], [PerformerId])
VALUES (3, 2);

INSERT INTO [SongsPerformers] ([SongId], [PerformerId])
VALUES (4, 3);

INSERT INTO [SongsPerformers] ([SongId], [PerformerId])
VALUES (5, 4);

INSERT INTO [SongsPerformers] ([SongId], [PerformerId])
VALUES (6, 5);

INSERT INTO [SongsPerformers] ([SongId], [PerformerId])
VALUES (7, 6);

INSERT INTO [SongsPerformers] ([SongId], [PerformerId])
VALUES (8, 7);
*/