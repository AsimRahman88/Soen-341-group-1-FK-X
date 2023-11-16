USE soen341;

# Adding Missing properties to Property
Alter TABLE Property
ADD COLUMN Bedrooms INT,
ADD COLUMN Bathrooms INT,
ADD COLUMN City TEXT,
ADD COLUMN Size_SqFt DECIMAL,
ADD COLUMN IsAvailable BIT;

# Adding New Table Offer for Offer Management
Create TABLE Offer (
	Id INT auto_increment primary key,
    Price DECIMAL,
    PropertyId INT,
    ClientId INT
);

Alter TABLE Offer
ADD Constraint fk_offer_property FOREIGN KEY (PropertyId) References Property(Id),
ADD Constraint fk_offer_client FOREIGN KEY (ClientId) References Client(Id);