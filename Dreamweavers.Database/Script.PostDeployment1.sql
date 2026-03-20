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

SET IDENTITY_INSERT Artisans ON;

MERGE INTO Artisans AS target
USING (VALUES
    (1, 
     'Lang Dulay',
     'Lang Dulay was a renowned T’boli master weaver from Lake Sebu and a recipient of the Gawad Manlilikha ng Bayan (National Living Treasure) award. Known as one of the most respected dreamweavers, she began envisioning intricate T’nalak patterns in her dreams at age 12, which she later transformed into sacred woven designs. Throughout her life, she dedicated herself to preserving and passing on the art of T’nalak weaving to younger generations. She also founded the Lang Dulay Weaving Center, where her family continues her legacy after her passing in 2015.',
     'Lake Sebu',
     'https://www.wheninmanila.com/wp-content/uploads/2015/05/Lang_dulay2.jpg'
    ),

    (2,
     'Maria "Oyog" Todi',
     'Maria Oyog Todi is a T’boli artisan and cultural leader from Lake Sebu, dedicated to preserving her community’s traditions. She is the founder of the Lake Sebu School of Living Tradition (SLT), where she teaches young T’boli students through storytelling, dancing, and traditional arts. Guiding around 65 learners, she encourages pride in their identity and helps pass down cultural knowledge.',
     'Lake Sebu',
     'https://cdn.prod.website-files.com/5e182252b1025a15c98521cb/62a7ead97cbe7fd428f6afc2__MG_0138.jpg'
    ),

    (3,
     'Barbara Kibed Ofong',
     'Barbara Kibed Ofong is a T’boli master weaver from Lake Sebu, known for her expertise in creating T’nalak, a sacred handwoven cloth. As a dreamweaver, her designs are inspired by dreams and reflect the community’s spiritual beliefs. She has created over 90 intricate patterns and is recognized as a National Living Treasure (GAMABA awardee).',
     'Lake Sebu',
     'https://outoftownblog.com/wp-content/uploads/2025/03/Barbara-Ofoing-showing-her-creations-700x933.jpg'
    )

) AS source (ArtisanID, ArtisanName, ArtisanBio, ArtisanLocation, ProfileImageURL)

ON target.ArtisanID = source.ArtisanID

WHEN MATCHED THEN
    UPDATE SET
        ArtisanName = source.ArtisanName,
        ArtisanBio = source.ArtisanBio,
        ArtisanLocation = source.ArtisanLocation,
        ProfileImageURL = source.ProfileImageURL

WHEN NOT MATCHED THEN
    INSERT (ArtisanID, ArtisanName, ArtisanBio, ArtisanLocation, ProfileImageURL)
    VALUES (source.ArtisanID, source.ArtisanName, source.ArtisanBio, source.ArtisanLocation, source.ProfileImageURL);

SET IDENTITY_INSERT Artisans OFF;