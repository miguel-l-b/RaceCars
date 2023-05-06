USE cotuca;

CREATE TABLE Brand (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  country char(2) NOT NULL
);

CREATE TABLE RaceCar (
  id INT AUTO_INCREMENT PRIMARY KEY,
  brandId INT NOT NULL,
  name VARCHAR(30) NOT NULL,
  year INT NOT NULL,
  color CHAR(6) NOT NULL,
  price INT NOT NULL
);

ALTER TABLE RaceCar
  ADD CONSTRAINT fk_brand FOREIGN KEY (brandId)
    REFERENCES Brand(id);
