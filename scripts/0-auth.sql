CREATE TABLE users
(
  username VARCHAR(50)  NOT NULL,
  password VARCHAR(100) NOT NULL,
  enabled  SMALLINT      NOT NULL DEFAULT 1,
  PRIMARY KEY (username)
);

CREATE TABLE authorities
(
  username  VARCHAR(50) NOT NULL,
  authority VARCHAR(50) NOT NULL,
  FOREIGN KEY (username) REFERENCES users (username)
);

INSERT INTO users (username, password, enabled)
values ('Doctor',
        '$2a$12$YLLBO2pJqhZXZu254x087Obgi.8UV8PW3SUKgSDlc8i8vuePNsj4C',
        1),
       ('Admin',
        '$2a$12$4.sNYoBmLxBDpEJjUtkTLO/0HQbBd5HdTbco99RO7/368UqsEj126',
        1);

INSERT INTO authorities (username, authority)
values ('Admin', 'ROLE_ADMIN'),
       ('Admin', 'ROLE_DOCTOR'),
       ('Doctor', 'ROLE_DOCTOR');