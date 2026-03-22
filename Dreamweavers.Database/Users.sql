CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    ArtisanID INT NULL, 
    Username NVARCHAR(50) UNIQUE NOT NULL,
    Password NVARCHAR(255) NOT NULL,
    [Role] NVARCHAR(20) DEFAULT 'Dreamweaver',
    CONSTRAINT CHK_UserRole CHECK ([Role] IN ('Admin', 'Dreamweaver')),
    CONSTRAINT FK_Users_Artisans FOREIGN KEY (ArtisanID) 
        REFERENCES Artisans(ArtisanID) ON DELETE SET NULL
);