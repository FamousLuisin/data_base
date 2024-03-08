CREATE DATABASE `data_base`;

CREATE TABLE data_base.users (
	id INT UNSIGNED auto_increment NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NULL,
	email varchar(255) NOT NULL,
	password_hash varchar(255) NOT NULL,
	CONSTRAINT users_pk PRIMARY KEY (id),
	CONSTRAINT users_un_email UNIQUE KEY (email),
	CONSTRAINT users_un_password_hash UNIQUE KEY (password_hash)
)

CREATE TABLE data_base.roles (
	id INT UNSIGNED auto_increment NOT NULL,
	name varchar(100) NOT NULL,
	CONSTRAINT roles_pk PRIMARY KEY (id)
)

CREATE TABLE data_base.users_roles (
	user_id INT UNSIGNED NOT NULL,
	role_id INT UNSIGNED NOT NULL,
	CONSTRAINT users_roles_pk PRIMARY KEY (user_id,role_id),
	CONSTRAINT users_roles_users_FK FOREIGN KEY (user_id) REFERENCES data_base.users(id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT users_roles_roles_FK FOREIGN KEY (role_id) REFERENCES data_base.roles(id) ON DELETE CASCADE ON UPDATE CASCADE
)

CREATE TABLE data_base.profiles (
	id INT UNSIGNED auto_increment NOT NULL,
	bio TEXT NULL,
	description TEXT NULL,
	user_id INT UNSIGNED NULL,
	CONSTRAINT profiles_pk PRIMARY KEY (id),
	CONSTRAINT profiles_un UNIQUE KEY (user_id),
	CONSTRAINT profiles_users_FK FOREIGN KEY (user_id) REFERENCES data_base.users(id) ON DELETE CASCADE ON UPDATE CASCADE
)

ALTER TABLE data_base.users ADD created_at DATETIME DEFAULT NOW() NOT NULL;
ALTER TABLE data_base.users ADD updated_at DATETIME DEFAULT now() on update now() NOT NULL;

ALTER TABLE data_base.users_roles ADD created_at DATETIME DEFAULT now() NOT NULL;
ALTER TABLE data_base.users_roles ADD updated_at DATETIME DEFAULT now() on update now() NOT NULL;

ALTER TABLE data_base.users ADD salary DECIMAL(15,2) NULL;

ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;