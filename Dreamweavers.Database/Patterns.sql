CREATE TABLE Patterns (
    PatternID INT PRIMARY KEY IDENTITY(1,1),
    PatternName NVARCHAR(100) NOT NULL,
    SpiritualMeaning NVARCHAR(MAX),
    History NVARCHAR(MAX)
);