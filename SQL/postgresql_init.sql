CREATE TABLE users(
    name varchar(55) NOT NULL,
    surname varchar(55) NOT NULL,
    pwd varchar(2055) NULL,
    imagepath varchar(255) NULL default '/default.png',
    note varchar(1023) NULL,
    archived boolean NOT NULL default FALSE,
    phone varchar(55) NULL,
    email varchar(55) NULL,
    job varchar(55) NULL, -- Professionals (user_level = 2)
    -- IT concerns
    inserts_date timestamp NOT NULL default now(),
    user_level integer NOT NULL CHECK(user_level >= 0 AND user_level <= 4),
    version integer NOT NULL default 0,
    id_user serial primary key
);
CREATE TABLE children(
    name varchar(55) NOT NULL,
    surname varchar(55) NOT NULL,
    birthday timestamp NOT NULL,
    lang varchar(55) NULL,
    hand varchar(55) NULL,
    school varchar(255) NULL,
    school_type varchar(55) NULL,
    school_lvl varchar(55) NULL,
    imagepath varchar(1023) NULL default '/default.png',
    note varchar(1023) NULL,
    archived boolean NOT NULL default FALSE,
    -- IT concerns
    version integer NOT NULL default 0,
    id_child serial primary key
);
CREATE TABLE children_contacts(
    id_user integer NOT NULL references users(id_user),
    id_child integer NOT NULL REFERENCES children(id_child),
    insert_date timestamp NOT NULL default now(),
    relation varchar(55) NOT NULL, 
    primary key (id_user, id_child)
);
CREATE TABLE professionals_to_children(
    id_care serial primary key,
    id_child integer NOT NULL references children(id_child),
    id_user_prof integer NOT NULL references users(id_user),
    start_care_date timestamp NOT NULL default now(),
    end_care_date timestamp NULL default NULL
);
CREATE TABLE handicaps(
    description varchar(1023) NOT NULL,
    id_handicap serial primary key
);
CREATE TABLE handicaps_to_children(
    comment varchar(55) null,
    id_child integer NOT NULL references children(id_child),
    id_handicap integer NOT NULL references handicaps(id_handicap),
    primary key (id_child, id_handicap)
);
CREATE TABLE mandates(
    instigator varchar(255) NOT NULL,
    demand varchar(1023) NOT NULL,
    -- IT concerns
    id_mandate serial primary key,
    id_child integer NOT NULL references children(id_child),
    insert_date timestamp NOT NULL default now()
);
CREATE TABLE game_sessions(
    startdate timestamp NOT NULL default now(),
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
    id_child integer NOT NULL references children(id_child),
    id_user_prof integer NOT NULL references users(id_user),
    mandate integer NOT NULL references mandates(id_mandate)
);
CREATE TABLE categories(
    name varchar(55) NOT NULL,
    description varchar(255) NULL,
    -- IT concerns
    id_cat serial primary key
);
CREATE TABLE selected_categories(
    sorting integer NOT NULL,
    status boolean NOT NULL,
    -- IT concerns
    id_category integer NOT NULL references categories(id_cat),
    id_game integer NOT NULL references game_sessions(id_game),
    primary key (id_category, id_game)
);
CREATE TABLE pictures(
    description varchar(1023) NULL,
    -- IT concerns
    path varchar(1023) NULL UNIQUE,
    id_pic serial primary key,
    id_category integer NOT NULL references categories(id_cat)
);
CREATE TABLE selected_pictures(
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
    id_pic integer NOT NULL references pictures(id_pic),
    id_game integer NOT NULL references game_sessions(id_game), 
    version integer NOT NULL default 0,
    primary key (id_pic, id_game)
);