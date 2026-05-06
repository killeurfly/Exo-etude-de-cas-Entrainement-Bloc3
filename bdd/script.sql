CREATE TABLE client (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    phone VARCHAR(20),
    password VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE appointment (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    time TIME NOT NULL,
    status VARCHAR(20) NOT NULL,
    service VARCHAR(100),
    client_id BIGINT,
    FOREIGN KEY (client_id) REFERENCES client(id)
);

CREATE TABLE loyalty_transaction (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    points INT NOT NULL,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    description VARCHAR(255),
    client_id BIGINT,
    FOREIGN KEY (client_id) REFERENCES client(id)
);
