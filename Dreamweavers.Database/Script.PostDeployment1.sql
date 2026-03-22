/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

-- artisans db
SET IDENTITY_INSERT Artisans ON;

MERGE INTO Artisans AS target
USING (VALUES
    (1, 
     'Lang Dulay',
     'Lang Dulay was a renowned T’boli master weaver from Lake Sebu and a recipient of the Gawad Manlilikha ng Bayan (National Living Treasure) award. Known as one of the most respected dreamweavers, she began envisioning intricate T’nalak patterns in her dreams at age 12, which she later transformed into sacred woven designs. Throughout her life, she dedicated herself to preserving and passing on the art of T’nalak weaving to younger generations. She also founded the Lang Dulay Weaving Center, where her family continues her legacy after her passing in 2015.',
     'Lake Sebu',
     '/images/Lang_Dulay.jpg'
    ),

    (2,
     'Maria "Oyog" Todi',
     'Maria Oyog Todi is a T’boli artisan and cultural leader from Lake Sebu, dedicated to preserving her community’s traditions. She is the founder of the Lake Sebu School of Living Tradition (SLT), where she teaches young T’boli students through storytelling, dancing, and traditional arts. Guiding around 65 learners, she encourages pride in their identity and helps pass down cultural knowledge.',
     'Lake Sebu',
     '/images/Maria_Todi.jpg'
    ),

    (3,
     'Barbara Kibed Ofong',
     'Barbara Kibed Ofong is a T’boli master weaver from Lake Sebu, known for her expertise in creating T’nalak, a sacred handwoven cloth. As a dreamweaver, her designs are inspired by dreams and reflect the community’s spiritual beliefs. She has created over 90 intricate patterns and is recognized as a National Living Treasure (GAMABA awardee).',
     'Lake Sebu',
     '/images/Barbara_Ofong.jpg'
    )

) AS source (ArtisanID, ArtisanName, ArtisanBio, ArtisanLocation, ProfileImage)

ON target.ArtisanID = source.ArtisanID

WHEN MATCHED THEN
    UPDATE SET
        ArtisanName = source.ArtisanName,
        ArtisanBio = source.ArtisanBio,
        ArtisanLocation = source.ArtisanLocation,
        ProfileImage = source.ProfileImage

WHEN NOT MATCHED THEN
    INSERT (ArtisanID, ArtisanName, ArtisanBio, ArtisanLocation, ProfileImage)
    VALUES (source.ArtisanID, source.ArtisanName, source.ArtisanBio, source.ArtisanLocation, source.ProfileImage);

SET IDENTITY_INSERT Artisans OFF;


-- patterns db

MERGE INTO Patterns AS Target
USING (VALUES 
    ('Kafi (Frog)', 
     'Symbol of Life & Rain', 
     'In T’boli culture, the Kafi is a sacred herald of the rainy season. Its song signals the arrival of life-giving water to the abaca plantations of Lake Sebu. Weaving this pattern is a prayer for abundance and a tribute to the natural cycles that sustain the community.'),

    ('Sigul (Snake)', 
     'Symbol of Protection', 
     'Mirroring the zig-zag mountain paths of South Cotabato, the Sigul represents the protection of the ancestors. Historically, these textiles were worn by travelers and warriors to ward off malevolent spirits (Busao) during journeys through the deep highlands.'),

    ('Kleng (Crab)', 
     'Symbol of Family Unity', 
     'The Kleng is an intricate, interlocking design representing the inseparable ties of the T’boli family unit. It symbolizes resilience and the ability to navigate different worlds—moving between the lake and the land while remaining rooted in tradition.') 
) 
AS Source (PatternName, SpiritualMeaning, History)
ON Target.PatternName = Source.PatternName

WHEN MATCHED THEN
    UPDATE SET 
        SpiritualMeaning = Source.SpiritualMeaning,
        History = Source.History

WHEN NOT MATCHED BY TARGET THEN
    INSERT (PatternName, SpiritualMeaning, History)
    VALUES (Source.PatternName, Source.SpiritualMeaning, Source.History)

WHEN NOT MATCHED BY SOURCE THEN
    DELETE;


-- users db
SET IDENTITY_INSERT Users ON;

MERGE INTO Users AS target
USING (VALUES
    (1, 1, 'lang_dulay', 'TnalakMaster123', 'Admin'),      -- Lang Dulay (Admin/Legacy)
    (2, 2, 'maria_todi', 'SLT_LakeSebu', 'Dreamweaver'),   -- Maria Oyog Todi
    (3, 3, 'barbara_ofong', 'Dreamweaver90', 'Dreamweaver'),-- Barbara Kibed Ofong
    (4, NULL, 'test_admin', 'TestAdmin', 'Admin')      -- Test Admin account
) AS source (UserID, ArtisanID, Username, [Password], [Role])

ON target.UserID = source.UserID

WHEN MATCHED THEN
    UPDATE SET
        ArtisanID = source.ArtisanID,
        Username = source.Username,
        [Password] = source.Password,
        [Role] = source.[Role]

WHEN NOT MATCHED THEN
    INSERT (UserID, ArtisanID, Username, [Password], [Role])
    VALUES (source.UserID, source.ArtisanID, source.Username, source.Password, source.Role)

WHEN NOT MATCHED BY SOURCE THEN
    DELETE;

SET IDENTITY_INSERT Users OFF;

-- categories db
MERGE INTO Categories AS Target
USING (VALUES 
    (1, 'Cloth'), (2, 'Malong'), (3, 'Clothing'), (4, 'Bags'), (5, 'Home')
) AS Source (CategoryID, CategoryName)
ON Target.CategoryID = Source.CategoryID
WHEN NOT MATCHED THEN
    INSERT (CategoryName) VALUES (Source.CategoryName);

-- crafts db
MERGE INTO Crafts AS target
USING (VALUES
-- CLOTH (CategoryID 1) - Artisan 1 (Lang Dulay), Pattern 1 (Kafi)
(1, 1, 1, 'Bed Klagan Dark Red', 'Handwoven T’nalak in dark red.', 'https://www.tnalakhome.com/wp-content/uploads/2020/12/tinalak_traditional_print2.png'),
(1, 1, 1, 'Bed Duon Blata Dark Blue/Light Blue/Natural', 'Handwoven T’nalak in light and dark blue.', 'https://www.tnalakhome.com/wp-content/uploads/2020/12/tinalak_traditional_print4-.png'),
(1, 1, 1, 'Bed Duon Blata Dark Rust', 'Handwoven T’nalak in light and dark rust.', 'https://www.tnalakhome.com/wp-content/uploads/2020/12/tinalak_traditional_print6-.png'),

-- MALONG (CategoryID 2) - Artisan 2 (Maria Todi), Pattern 2 (Sigul)
(2, 2, 2, 'Handwoven Malong - Black and Gold', 'Traditional woven garment in black and gold.', 'https://narrastudio.com/cdn/shop/files/DSCF8477.jpg?width=750'),
(2, 2, 2, 'Handwoven Malong - Gold and Fuchsia', 'Traditional woven garment in gold and fuchsia.', 'https://narrastudio.com/cdn/shop/files/DSCF8527.jpg?width=750'),
(2, 2, 2, 'Handwoven Malong - Purple', 'Traditional woven garment in purple.', 'https://narrastudio.com/cdn/shop/files/DSCF8408.jpg?width=750'),

-- CLOTHING (CategoryID 3) - Artisan 3 (Barbara Ofong), Pattern 3 (Kleng)
(3, 3, 3, 'Heritage Poncho', 'Cotton T’nalak poncho from Cotabato with traditional Filipino patterns.', 'https://pinas-sadya.com/cdn/shop/files/Pinas_Sadya_0547_2.jpg?width=823'),
(3, 3, 3, 'Oldrose Top in Tnalak Cotton', 'Cotton T’nalak top in old rose with traditional Filipino patterns.', 'https://pinas-sadya.com/cdn/shop/files/012-8461.jpg?width=823'),

-- BAGS (CategoryID 4) - Artisan 2 (Maria Todi)
(2, 2, 4, 'Tnalak Tote Bag with Kalinga Straps', 'T’nalak tote bag with Kalinga-style straps.', 'https://pinas-sadya.com/cdn/shop/files/012-7582.jpg?width=823'),
(2, 2, 4, 'Manila Tote Bag with Black Tnalak', 'T’nalak tote bag inspired by Filipino traditions.', 'https://pinas-sadya.com/cdn/shop/files/012-7536.jpg?width=823'),

-- HOME (CategoryID 5) - Artisan 1 (Lang Dulay)
(1, 1, 5, 'Cushion River Design Pillowcase', 'T’nalak River Design cushion cover.', 'https://www.tnalakhome.com/wp-content/uploads/2020/12/CUSHION-RIVER-DESIGN.png'),
(1, 1, 5, 'Stool T’nalak Traditional Ikat Blue', 'T’nalak stool with Ikat pattern in blue.', 'https://www.tnalakhome.com/wp-content/uploads/2020/12/stool-tnalak-ikat-blue.png')

) AS source (ArtisanID, PatternID, CategoryID, CraftName, CraftDesc, Thumbnail)

ON target.CraftName = source.CraftName

WHEN MATCHED THEN
    UPDATE SET 
        ArtisanID = source.ArtisanID,
        PatternID = source.PatternID,
        CategoryID = source.CategoryID,
        CraftDesc = source.CraftDesc,
        Thumbnail = source.Thumbnail

WHEN NOT MATCHED THEN
    INSERT (ArtisanID, PatternID, CategoryID, CraftName, CraftDesc, Thumbnail)
    VALUES (source.ArtisanID, source.PatternID, source.CategoryID, source.CraftName, source.CraftDesc, source.Thumbnail);