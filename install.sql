CREATE DATABASE huracanstore CHARACTER SET utf8;
use huracanstore;

CREATE TABLE sitesettings (
    sitename TEXT,
    sitedesc TEXT,
    sitecolor TEXT,
    notification TEXT,
    homeabout TEXT,
    termsofservice TEXT,
    privacypolicy TEXT,
    cookiepolicy TEXT,
    guildid TEXT,
    themefile TEXT,
    globalcustomer TEXT,
    totalincome TEXT,
    loggingchannelid TEXT,
    firewallgg BOOLEAN,
    maintenance BOOLEAN,
    demotext TEXT,
    tawkto TEXT,
    email TEXT,
    twitter TEXT,
    discord TEXT,
    youtube TEXT,
    instagram TEXT,
    facebook TEXT,
    tiktok TEXT
);

CREATE TABLE navbar (
    name TEXT,
    link TEXT,
    uniqueid TEXT
);

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

CREATE TABLE faq (
    question TEXT,
    answer TEXT,
    uniqueid TEXT
);

CREATE TABLE changelogs (
    uniqueid TEXT,
    title TEXT,
    vers TEXT,
    content TEXT,
    datetime TEXT,
    productid TEXT
);

CREATE TABLE users (
    id TEXT,
    email TEXT,
    password TEXT,
    username TEXT,
    latestip TEXT,
    cart TEXT,
    discount INT,
    giftcard TEXT,
    note TEXT,
    client boolean,
    mailinglist boolean,
    mailendpoints TEXT
);

CREATE TABLE usingcompanies (
    uniqueid TEXT,
    name TEXT,
    link TEXT
);

CREATE TABLE products (
    uniqueid TEXT,
    name TEXT,
    link TEXT,
    description TEXT,
    credits TEXT,
    price TEXT,
    pricecrossout TEXT,
    gallery TEXT,
    pos INT,
    zipfilename TEXT,
    givenrole TEXT,
    hidden BOOLEAN,
    paused BOOLEAN,
    overallprofit TEXT,
    overallviews INT,
    linkeditems TEXT,
    featured BOOLEAN,
    subscription BOOLEAN,
    storetags TEXT,
    demolink TEXT,
    extension TEXT,
    tebexpackageid TEXT
);

CREATE TABLE owneditems (
    uniqueid TEXT,
    productid TEXT,
    userid TEXT,
    productname TEXT,
    datebought TEXT,
    price TEXT,
    receipt TEXT,
    licensekey text,
    authorizedip TEXT,
    disabled boolean,
    tebex boolean,
    admindisabled boolean,
    downloads INT
);

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

CREATE TABLE owneduploads (
    uniqueid TEXT,
    userid TEXT,
    name TEXT,
    datetime TEXT,
    price TEXT,
    filename TEXT,
    downloads INT
);

CREATE TABLE giftcards (
    uniqueid TEXT,
    name TEXT,
    amount TEXT,
    pos INT
);

CREATE TABLE ownedgiftcards (
    uniqueid TEXT,
    giftcardid TEXT,
    code TEXT,
    amount TEXT,
    purchaserid TEXT
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

CREATE TABLE storecategories (
    uniqueid TEXT,
    name TEXT,
    link TEXT,
    description TEXT,
    pos INT,
    hidden boolean,
    items TEXT
);

CREATE TABLE storetags (
    uniqueid TEXT,
    name TEXT
);

CREATE TABLE licenselogs (
    uniqueid TEXT,
    owneditemuid TEXT,
    ipaddress TEXT,
    status TEXT,
    datetime TEXT
);

CREATE TABLE team (
    uniqueid TEXT,
    name TEXT,
    pos INT,
    title TEXT,
    content TEXT
);

CREATE TABLE partners (
    uniqueid TEXT,
    pos INT,
    title TEXT,
    content TEXT,
    link TEXT
);

CREATE TABLE galleryimages (
    uniqueid TEXT,
    imagename TEXT
);

CREATE TABLE discounts (
    code TEXT,
    percent INT,
    roleids TEXT,
    uniqueid TEXT
);

CREATE TABLE pendingpurchases (
    uniqueid TEXT,
    userid TEXT,
    sessionid TEXT,
    paymenttype TEXT,
    leftover TEXT
);

CREATE TABLE receipts (
    uniqueid TEXT,
    buyerid TEXT,
    items TEXT,
    payment TEXT,
    datetime TEXT
);

CREATE TABLE reviews (
    uniqueid TEXT,
    userid TEXT,
    username TEXT,
    rating INT,
    itemname TEXT,
    itemuniqueid TEXT,
    content TEXT
);

CREATE TABLE custompages (
    uniqueid TEXT,
    title TEXT,
    link varchar(255),
    content TEXT
);

CREATE TABLE advertisements (
    uniqueid TEXT,
    name TEXT,
    link TEXT,
    filetype TEXT
);

CREATE TABLE invoices (
    uniqueid TEXT,
    userid TEXT,
    paid boolean,
    title TEXT,
    description TEXT,
    datetime TEXT,
    price TEXT
);

CREATE TABLE auditlogs (
    datetime TEXT,
    title TEXT,
    description TEXT,
    uniqueid TEXT
);

CREATE TABLE notifications (
    uniqueid TEXT,
    userid TEXT,
    content TEXT,
    datetime TEXT,
    hasbeenread boolean
);

CREATE TABLE apikeys (
    apikey TEXT,
    limited boolean,
    maxuses INT,
    uses INT,
    lastusedip TEXT,
    lastuseddate TEXT,
    userid TEXT,
    permissions TEXT
);

CREATE TABLE bannedusers (
    userid TEXT
);

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

ALTER DATABASE huracanstore CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE sitesettings CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE navbar CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE sitestyles CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE faq CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE users CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE products CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE owneditems CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE invoices CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE subscriptions CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE quotes CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE quoteitems CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE pendingpurchases CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE receipts CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE team CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE partners CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE galleryimages CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE discounts CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE reviews CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE custompages CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE auditlogs CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE notifications CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE apikeys CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE bannedusers CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE staff CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE docscategories CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE docsarticles CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE applications CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE appquestions CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE appresponses CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE usingcompanies CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE statistics CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;

INSERT INTO sitesettings (tawkto, themefile, sitename, sitedesc, sitecolor, notification, homeabout, termsofservice, privacypolicy, cookiepolicy, guildid, globalcustomer, totalincome, loggingchannelid, firewallgg, maintenance, demotext, email, twitter, discord, youtube, instagram, facebook, tiktok) VALUES ("none", "none.css", "My Webstore", "This is my new webstore!", "0390fc", "none", "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", "none", "none", "none", "none", "none", "0.00", "none", 1, 0, "Demo", "none", "none", "none", "none", "none", "none", "none");
INSERT INTO navbar (name, link, uniqueid) VALUES ("Home", "/", "gfdhwersdhjf");
INSERT INTO navbar (name, link, uniqueid) VALUES ("Shop", "/shop", "asdhfasd");
INSERT INTO navbar (name, link, uniqueid) VALUES ("Reviews", "/reviews", "touisdjbxc");
INSERT INTO navbar (name, link, uniqueid) VALUES ("Partners", "/partners", "gherqweiusdf");
INSERT INTO navbar (name, link, uniqueid) VALUES ("Gallery", "/gallery", "iudwshjvcjkhasdlk");
INSERT INTO navbar (name, link, uniqueid) VALUES ("Our Team", "/team", "iqwqyehgdsfhs");
INSERT INTO navbar (name, link, uniqueid) VALUES ("Discord", "/discord", "jklerthsdf");
INSERT INTO sitestyles (navbarlogo, currentprodsbtn, visitstorebtn, ourdiscordbtn, recentpurchases, shopsorting, navbaralignment, bgshoptoggle, footnavigation, footusefullinks, footourpartners, footlegal, statsproducts, statsclients, statspurchases, statsusers, statsreviews, statspartners, statsstaff, teampage, partnerspage, reviewspage, productgallery, productreviews, productcredits, giftcards) VALUES (0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO auditlogs (uniqueid, title, datetime, description) VALUES ("firstauditlog", "Setup Complete", "~ ~ ~", "Huracan Store by <a href='https://huracan.solutions' target='_blank' style='color: rgb(0, 153, 255) !important;'>Huracan Solutions</a> has been setup successfully!");
INSERT INTO staff (userid, altersitesettings, altersitestyling, createeditproducts, deleteproducts, managesubs, manageinvoices, managequotes, managestorecats, managestoretags, managegiftcards, managediscounts, managereviews, manageusers, manageowneditems, managebans, manageteam, managepartners, managedocs, managecustompages, manageclientcompanies, manageapikeys, manageads, viewstats, viewauditlogs) VALUES ("704094587836301392", true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true);
INSERT INTO staff (userid, altersitesettings, altersitestyling, createeditproducts, deleteproducts, managesubs, manageinvoices, managequotes, managestorecats, managestoretags, managegiftcards, managediscounts, managereviews, manageusers, manageowneditems, managebans, manageteam, managepartners, managedocs, managecustompages, manageclientcompanies, manageapikeys, manageads, viewstats, viewauditlogs) VALUES ("564243067360509956", true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true);