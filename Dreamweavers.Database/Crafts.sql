CREATE TABLE Crafts (
    CraftID INT PRIMARY KEY IDENTITY(1,1),
    ArtisanID INT,
    PatternID INT,
    CategoryID INT,
    CraftName NVARCHAR(150) NOT NULL,
    CraftDesc NVARCHAR(MAX),
    Thumbnail NVARCHAR(255),
    CreatedAt DATETIME DEFAULT GETDATE(),  
    CONSTRAINT FK_Crafts_Artisans FOREIGN KEY (ArtisanID) 
        REFERENCES Artisans(ArtisanID) ON DELETE SET NULL,
    CONSTRAINT FK_Crafts_Patterns FOREIGN KEY (PatternID) 
        REFERENCES Patterns(PatternID) ON DELETE SET NULL,
    CONSTRAINT FK_Crafts_Categories FOREIGN KEY (CategoryID) 
        REFERENCES Categories(CategoryID) ON DELETE SET NULL
);