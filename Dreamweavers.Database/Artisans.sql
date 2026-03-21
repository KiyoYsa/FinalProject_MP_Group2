CREATE TABLE Artisans (
    ArtisanID INT PRIMARY KEY IDENTITY(1,1),
    ArtisanName NVARCHAR(100) NOT NULL,
    ArtisanBio NVARCHAR(MAX),
    ArtisanLocation NVARCHAR(100) DEFAULT 'Lake Sebu',
    ProfileImage NVARCHAR(255),
    DateJoined DATETIME DEFAULT GETDATE()
);