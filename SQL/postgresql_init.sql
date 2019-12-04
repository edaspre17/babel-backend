DROP SCHEMA IF EXISTS esope CASCADE;
CREATE SCHEMA esope;

CREATE TABLE esope.users(
    name varchar(55) NOT NULL,
    surname varchar(55) NOT NULL,
    birthday timestamp NULL,
    image varchar(255) NULL,
    note varchar(1023) NULL,
    archived boolean NOT NULL default FALSE,
    inserts_date timestamp NOT NULL default now(),
    -- IT concerns
    user_level integer NOT NULL CHECK(user_level >= 0 AND user_level <= 4),
    version integer NOT NULL default 0,
    id_user serial primary key
);
CREATE TABLE esope.game_sessions(
    date timestamp NOT NULL default now(),
    guardian_comment varchar(1023) NULL,
    prof_comment varchar(1023) NULL,
    -- Game logic
    step_one integer NOT NULL CHECK (step_one >= 0 AND step_one <= 2),
    step_two integer NOT NULL CHECK (step_two >= 0 AND step_two <= 2),
    step_three integer NOT NULL CHECK (step_three >= 0 AND step_three <= 2),
    -- IT concerns
    finished_state integer NOT NULL CHECK (finished_state >= 0 AND finished_state <= 3),
    version integer NOT NULL default 0,    
    id_game serial primary key,
    id_prof integer NOT NULL references esope.users(id_user)
);
CREATE TABLE esope.categories(
    name varchar(55) NOT NULL,
    description varchar(255) NULL,
    -- IT concerns
    id_cat serial primary key
);
CREATE TABLE esope.selected_categories(
    sorting integer NOT NULL,
    status boolean NOT NULL,
    -- IT concerns
    id_category integer NOT NULL references esope.categories(id_cat),
    id_game integer NOT NULL references esope.game_sessions(id_game),
    primary key (id_category, id_game)
);
CREATE TABLE esope.pictures(
    description varchar(1023) NULL,
    -- IT concerns
    path varchar(1023) NULL UNIQUE,
    id_pic serial primary key,
    id_category integer NOT NULL references esope.categories(id_cat)
);
CREATE TABLE esope.selected_pictures(
    note varchar(1023) NULL,
    child_tag boolean NULL,
    do_like boolean NULL,
    is_happy boolean NULL,
    is_autonomous boolean NULL,
    priority integer NULL,
    would_like boolean NULL,
    -- Game progression
    step_one_done boolean NOT NULL,
    step_two_done boolean NOT NULL,
    step_three_done boolean NOT NULL,
    -- IT concerns
    id_pic integer NOT NULL references esope.pictures(id_pic),
    id_game integer NOT NULL references esope.game_sessions(id_game), 
    version integer NOT NULL default 0,
    primary key (id_pic, id_game)
);
CREATE TABLE esope.guardians_to_children(
    id_user_child integer NOT NULL references esope.users(id_user),
    id_user_guard integer NOT NULL references esope.users(id_user),
    primary key (id_user_child, id_user_guard)
);
CREATE TABLE esope.professionals_to_children(
    id_user_child integer NOT NULL references esope.users(id_user),
    id_user_prof integer NOT NULL references esope.users(id_user),
    start_care_date timestamp NOT NULL default now(),
    primary key (id_user_child, id_user_prof)
);