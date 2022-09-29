create table if not exists department (
	id SERIAL primary key,
	department_name VARCHAR(40) not null
);
create table if not exists worker (
	id SERIAL primary key,
	worker_name VARCHAR(40) not null,
	director INTEGER not null,
	department_id INTEGER references department(id)
);