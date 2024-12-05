ALTER TABLE users RENAME COLUMN userid TO id;
ALTER TABLE users ADD password TEXT;
ALTER TABLE sitesettings ADD themefile TEXT;
ALTER TABLE sitesettings ADD tawkto TEXT;
ALTER TABLE products ADD featured boolean;
ALTER TABLE products ADD subscription boolean;
ALTER TABLE products ADD pricecrossout TEXT;
ALTER TABLE products ADD extension TEXT;
ALTER TABLE products ADD tebexpackageid TEXT;
ALTER TABLE owneditems ADD tebex boolean;
DROP TABLE staff;
CREATE TABLE staff (
    userid TEXT,
    altersitesettings BOOLEAN,
    altersitestyling BOOLEAN,
    createeditproducts BOOLEAN,
    deleteproducts BOOLEAN,
    managesubs BOOLEAN,
    manageinvoices BOOLEAN,
    managequotes BOOLEAN,
    managestorecats BOOLEAN,
    managestoretags BOOLEAN,
    managegiftcards BOOLEAN,
    managediscounts BOOLEAN,
    managereviews BOOLEAN,
    manageusers BOOLEAN,
    manageowneditems BOOLEAN,
    managebans BOOLEAN,
    manageteam BOOLEAN,
    managepartners BOOLEAN,
    managedocs BOOLEAN,
    managecustompages BOOLEAN,
    manageclientcompanies BOOLEAN,
    manageapikeys BOOLEAN,
    manageads BOOLEAN,
    viewstats BOOLEAN,
    viewauditlogs BOOLEAN
);
INSERT INTO staff (userid, altersitesettings, altersitestyling, createeditproducts, deleteproducts, managesubs, manageinvoices, managequotes, managestorecats, managestoretags, managegiftcards, managediscounts, managereviews, manageusers, manageowneditems, managebans, manageteam, managepartners, managedocs, managecustompages, manageclientcompanies, manageapikeys, manageads, viewstats, viewauditlogs) VALUES ("704094587836301392", true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true);
INSERT INTO staff (userid, altersitesettings, altersitestyling, createeditproducts, deleteproducts, managesubs, manageinvoices, managequotes, managestorecats, managestoretags, managegiftcards, managediscounts, managereviews, manageusers, manageowneditems, managebans, manageteam, managepartners, managedocs, managecustompages, manageclientcompanies, manageapikeys, manageads, viewstats, viewauditlogs) VALUES ("564243067360509956", true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true);
DROP TABLE sitestyles;
CREATE TABLE sitestyles (
    navbarlogo INT,
    statsproducts INT,
    statsclients INT,
    statspurchases INT,
    statsusers INT,
    statsreviews INT,
    statspartners INT,
    statsstaff INT,
    currentprodsbtn INT,
    visitstorebtn INT,
    ourdiscordbtn INT,
    recentpurchases INT,
    shopsorting INT,
    navbaralignment INT,
    bgshoptoggle INT,
    footnavigation INT,
    footusefullinks INT,
    footourpartners INT,
    footlegal INT,
    teampage INT,
    partnerspage INT,
    reviewspage INT,
    productgallery INT,
    productreviews INT,
    productcredits INT,
    giftcards INT
);
CREATE TABLE usingcompanies (
    uniqueid TEXT,
    name TEXT,
    link TEXT
);
CREATE TABLE subscriptions (
    uniqueid TEXT,
    userid TEXT,
    productid TEXT,
    owneditemid TEXT,
    invoiceid TEXT,
    price TEXT,
    nextduedate TEXT
);
ALTER TABLE subscriptions CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
CREATE TABLE quotes (
    uniqueid TEXT,
    userid TEXT,
    name TEXT,
    description TEXT,
    datetime TEXT
);
CREATE TABLE quoteitems (
    uniqueid TEXT,
    quoteid TEXT,
    name TEXT,
    description TEXT,
    price TEXT
);
ALTER TABLE quotes CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE quoteitems CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
CREATE TABLE IF NOT EXISTS docscategories (
    uniqueid TEXT,
    name TEXT,
    link TEXT,
    description TEXT,
    pos INT
);
CREATE TABLE IF NOT EXISTS docsarticles (
    uniqueid TEXT,
    catid TEXT,
    title TEXT,
    link TEXT,
    content TEXT,
    discordroleid TEXT,
    pos INT
);
ALTER TABLE sitestyles CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
INSERT INTO sitestyles (navbarlogo, currentprodsbtn, visitstorebtn, ourdiscordbtn, recentpurchases, shopsorting, navbaralignment, bgshoptoggle, footnavigation, footusefullinks, footourpartners, footlegal, statsproducts, statsclients, statspurchases, statsusers, statsreviews, statspartners, statsstaff, teampage, partnerspage, reviewspage, productgallery, productreviews, productcredits, giftcards) VALUES (0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
ALTER TABLE docscategories CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE docsarticles CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE usingcompanies CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
CREATE TABLE applications (
    id TEXT,
    name TEXT,
    closed BOOLEAN
);

CREATE TABLE appquestions (
    id TEXT,
    appid TEXT,
    content TEXT,
    type INT,
    dropdownitems TEXT
);

CREATE TABLE appresponses (
    id TEXT,
    appid TEXT,
    user TEXT,
    responses TEXT,
    status TEXT
);
CREATE TABLE statistics (
    type TEXT,
    jan INT,
    feb INT,
    mar INT,
    apr INT,
    may INT,
    jun INT,
    jul INT,
    aug INT,
    sep INT,
    oct INT,
    nov INT,
    dece INT
);
INSERT INTO statistics (type, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dece) VALUES ('customers', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO statistics (type, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dece) VALUES ('autojoin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO statistics (type, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dece) VALUES ('homepagevisits', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO statistics (type, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dece) VALUES ('newusers', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO statistics (type, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dece) VALUES ('sales', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO statistics (type, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dece) VALUES ('income', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
ALTER TABLE statistics CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE applications CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE appquestions CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE appresponses CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;