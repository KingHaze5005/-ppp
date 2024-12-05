const chalk = require('chalk');
const config = require('../config.json');
const fs = require('node:fs');
module.exports = async function(con) {

    // Extra queries needed to fix new data types
    setTimeout(async function() {
        await con.query(`UPDATE users SET giftcard='none' WHERE giftcard IS NULL`, async (err, row) => {
            if(err) throw err;
        });
        await con.query(`SELECT * FROM statistics`, function(err, row) {
            if(err) throw err;
            if(row[0]) return;
            con.query(`INSERT INTO statistics (type, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dece) VALUES ('customers', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);`, function(err, row) { if(err) throw err; });
            con.query(`INSERT INTO statistics (type, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dece) VALUES ('autojoin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);`, function(err, row) { if(err) throw err; });
            con.query(`INSERT INTO statistics (type, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dece) VALUES ('homepagevisits', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);`, function(err, row) { if(err) throw err; });
            con.query(`INSERT INTO statistics (type, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dece) VALUES ('newusers', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);`, function(err, row) { if(err) throw err; });
            con.query(`INSERT INTO statistics (type, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dece) VALUES ('sales', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);`, function(err, row) { if(err) throw err; });
            con.query(`INSERT INTO statistics (type, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dece) VALUES ('income', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);`, function(err, row) { if(err) throw err; });
        });
        await con.query(`UPDATE products SET subscription=false, pricecrossout='none' WHERE subscription IS NULL`, async (err, row) => {
            if(err) throw err;
        });
        await con.query(`UPDATE sitestyles SET currentprodsbtn=1, visitstorebtn=1, ourdiscordbtn=1, recentpurchases=1, shopsorting=1, navbaralignment=1, bgshoptoggle=1, footnavigation=1, footusefullinks=1, footourpartners=1, footlegal=1 WHERE currentprodsbtn IS NULL`, async (err, row) => {
            if(err) throw err;
        });
        await con.query(`UPDATE sitestyles SET navbarlogo=0 WHERE navbarlogo IS NULL`, async (err, row) => {
            if(err) throw err;
        });
        await con.query(`UPDATE sitesettings SET tawkto="none" WHERE tawkto IS NULL`, async (err, row) => {
            if(err) throw err;
        });
        await con.query(`UPDATE products SET extension="none" WHERE extension IS NULL`, async (err, row) => {
            if(err) throw err;
        });
        await con.query(`DELETE FROM staff WHERE altersitesettings IS NULL`, async (err, row) => {
            if(err) throw err;
        });
        await con.query(`UPDATE products SET tebexpackageid="none" WHERE tebexpackageid IS NULL`, async (err, row) => {
            if(err) throw err;
        });
        await con.query(`UPDATE owneditems SET tebex=false WHERE tebex IS NULL`, async (err, row) => {
            if(err) throw err;
        });
    }, 5000);

    let madeAChange = false;
    let newConfig = config;
    // Main Settings
    if(typeof newConfig.domain == 'undefined') { newConfig.domain = "http://localhost:3000"; console.log(`${chalk.redBright('[Update Manager]')} Config domain Created...`); madeAChange = true; };
    if(typeof newConfig.port == 'undefined') { newConfig.port = 3000; console.log(`${chalk.redBright('[Update Manager]')} Config port Created...`); madeAChange = true; };
    if(typeof newConfig.licenseKey == 'undefined') { newConfig.licenseKey = "YOUR_LICENSE_KEY"; console.log(`${chalk.redBright('[Update Manager]')} Config licenseKey Created...`); madeAChange = true; };
    if(typeof newConfig.tebexSecret == 'undefined') { newConfig.tebexSecret = "YOUR_TEBEX_SECRET"; console.log(`${chalk.redBright('[Update Manager]')} Config tebexSecret Created...`); madeAChange = true; };
    if(typeof newConfig.debugMode == 'undefined') { newConfig.debugMode = false; console.log(`${chalk.redBright('[Update Manager]')} Config debugMode Created...`); madeAChange = true; };
    if(typeof newConfig.ownerIds == 'undefined') { newConfig.ownerIds = ["704094587836301392", "YOUR_USER_ID"]; console.log(`${chalk.redBright('[Update Manager]')} Config ownerIds Created...`); madeAChange = true; };
    if(typeof newConfig.importHyperzBans == 'undefined') { newConfig.importHyperzBans = true; console.log(`${chalk.redBright('[Update Manager]')} Config importHyperzBans Created...`); madeAChange = true; };
    // SQL Settings
    if(typeof newConfig.sql == 'undefined') { newConfig.sql = {}; console.log(`${chalk.redBright('[Update Manager]')} Config SQL Created...`); madeAChange = true; };
    if(typeof newConfig.sql.host == 'undefined') { newConfig.sql.host = "localhost"; console.log(`${chalk.redBright('[Update Manager]')} Config SQL host Created...`); madeAChange = true; };
    if(typeof newConfig.sql.user == 'undefined') { newConfig.sql.user = "root"; console.log(`${chalk.redBright('[Update Manager]')} Config SQL user Created...`); madeAChange = true; };
    if(typeof newConfig.sql.password == 'undefined') { newConfig.sql.password = ""; console.log(`${chalk.redBright('[Update Manager]')} Config SQL password Created...`); madeAChange = true; };
    if(typeof newConfig.sql.database == 'undefined') { newConfig.sql.database = "hyperzstore"; console.log(`${chalk.redBright('[Update Manager]')} Config SQL database Created...`); madeAChange = true; };
    // Discord Settings
    if(typeof newConfig.loginMethods == 'undefined') { newConfig.loginMethods = {}; console.log(`${chalk.redBright('[Update Manager]')} Config loginMethods Created...`); madeAChange = true; };
    if(typeof newConfig.loginMethods.regular == 'undefined') { newConfig.loginMethods.regular = {}; console.log(`${chalk.redBright('[Update Manager]')} Config loginMethods regular Created...`); madeAChange = true; };
    if(typeof newConfig.loginMethods.regular.enabled == 'undefined') { newConfig.loginMethods.regular.enabled = true; console.log(`${chalk.redBright('[Update Manager]')} Config loginMethods regular enabled Created...`); madeAChange = true; };
    if(typeof newConfig.loginMethods.discord == 'undefined') { newConfig.loginMethods.discord = {}; console.log(`${chalk.redBright('[Update Manager]')} Config loginMethods discord Created...`); madeAChange = true; };
    if(typeof newConfig.loginMethods.discord.enabled == 'undefined') { newConfig.loginMethods.discord.enabled = false; console.log(`${chalk.redBright('[Update Manager]')} Config loginMethods discord enabled Created...`); madeAChange = true; };
    if(typeof newConfig.loginMethods.discord.oauthId == 'undefined') { newConfig.loginMethods.discord.oauthId = "YOUR_CLIENT_ID"; console.log(`${chalk.redBright('[Update Manager]')} Config loginMethods discord oauthId Created...`); madeAChange = true; };
    if(typeof newConfig.loginMethods.discord.oauthToken == 'undefined') { newConfig.loginMethods.discord.oauthToken = "YOUR_CLIENT_SECRET"; console.log(`${chalk.redBright('[Update Manager]')} Config loginMethods discord oauthToken Created...`); madeAChange = true; };
    if(typeof newConfig.loginMethods.discord.botToken == 'undefined') { newConfig.loginMethods.discord.botToken = ""; console.log(`${chalk.redBright('[Update Manager]')} Config discord botToken Created...`); madeAChange = true; };
    // Payment Settings
    if(typeof newConfig.paymentSettings == 'undefined') { newConfig.paymentSettings = {}; console.log(`${chalk.redBright('[Update Manager]')} Config paymentSettings Created...`); madeAChange = true; };
    if(typeof newConfig.paymentSettings.useStripe == 'undefined') { newConfig.paymentSettings.useStripe = false; console.log(`${chalk.redBright('[Update Manager]')} Config paymentSettings useStripe Created...`); madeAChange = true; };
    if(typeof newConfig.paymentSettings.stripePublicKey == 'undefined') { newConfig.paymentSettings.stripePublicKey = "YOUR_STRIPE_PUBLIC_KEY"; console.log(`${chalk.redBright('[Update Manager]')} Config paymentSettings stripePublicKey Created...`); madeAChange = true; };
    if(typeof newConfig.paymentSettings.stripeSecretKey == 'undefined') { newConfig.paymentSettings.stripeSecretKey = "YOUR_STRIPE_SECRET_KEY"; console.log(`${chalk.redBright('[Update Manager]')} Config paymentSettings stripeSecretKey Created...`); madeAChange = true; };
    if(typeof newConfig.paymentSettings.usePaypal == 'undefined') { newConfig.paymentSettings.usePaypal = false; console.log(`${chalk.redBright('[Update Manager]')} Config paymentSettings usePaypal Created...`); madeAChange = true; };
    if(typeof newConfig.paymentSettings.paypalClientId == 'undefined') { newConfig.paymentSettings.paypalClientId = "YOUR_PAYPAL_CLIENT_ID"; console.log(`${chalk.redBright('[Update Manager]')} Config paymentSettings paypalClientId Created...`); madeAChange = true; };
    if(typeof newConfig.paymentSettings.paypalClientSecret == 'undefined') { newConfig.paymentSettings.paypalClientSecret = "YOUR_PAYPAL_CLIENT_SECRET"; console.log(`${chalk.redBright('[Update Manager]')} Config paymentSettings paypalClientSecret Created...`); madeAChange = true; };
    if(typeof newConfig.paymentSettings.currency == 'undefined') { newConfig.paymentSettings.currency = "usd"; console.log(`${chalk.redBright('[Update Manager]')} Config paymentSettings currency Created...`); madeAChange = true; };
    if(typeof newConfig.paymentSettings.currencySymbol == 'undefined') { newConfig.paymentSettings.currencySymbol = "$"; console.log(`${chalk.redBright('[Update Manager]')} Config paymentSettings currencySymbol Created...`); madeAChange = true; };
    // Email Settings
    let replaceHTML = "<div style='padding: 1em; word-break: break-word; word-wrap: break-word;'><img src='REPLACE_DOMAIN/assets/logo.png' width='125px' height='125px' style='text-align: center; margin-left: auto; margin-right: auto;'><h2 stype='padding-bottom: 8px; width: 70%; margin-left: auto; margin-right: auto; border-bottom: solid 2px black'>REPLACE_SITENAME</h2><hr><p style='text-align: start; font-weight: 600; padding-bottom: 10px; font-size: 1.1em;'>REPLACE_SUBJECT</p> <p style='text-align: start; padding-bottom: 1em;'>REPLACE_CONTENT</p><hr><a href='REPLACE_DOMAIN/account' style='padding: 1em;' target='_blank'>Change Communication Preferences</a></div>";
    if(typeof newConfig.emails == 'undefined') { newConfig.emails = {}; console.log(`${chalk.redBright('[Update Manager]')} Config emails Created...`); madeAChange = true; };
    if(typeof newConfig.emails.enabled == 'undefined') { 
        newConfig.emails.enabled = false; console.log(`${chalk.redBright('[Update Manager]')} Config emails enabled Created...`);
        madeAChange = true;
        if(typeof newConfig.emails.transporter == 'undefined') { newConfig.emails.transporter = {}; console.log(`${chalk.redBright('[Update Manager]')} Config emails transporter Created...`); };
        if(typeof newConfig.emails.transporter.service == 'undefined') { newConfig.emails.transporter.service = 'gmail'; console.log(`${chalk.redBright('[Update Manager]')} Config emails transporter service Created...`); };
        if(typeof newConfig.emails.transporter.auth == 'undefined') { newConfig.emails.transporter.auth = {}; console.log(`${chalk.redBright('[Update Manager]')} Config emails transporter auth Created...`); };
        if(typeof newConfig.emails.transporter.auth.user == 'undefined') { newConfig.emails.transporter.auth.user = 'example@gmail.com'; console.log(`${chalk.redBright('[Update Manager]')} Config emails transporter auth user Created...`); };
        if(typeof newConfig.emails.transporter.auth.pass == 'undefined') { newConfig.emails.transporter.auth.pass = '1234'; console.log(`${chalk.redBright('[Update Manager]')} Config emails transporter auth pass Created...`); };
        if(typeof newConfig.emails.options == 'undefined') { newConfig.emails.options = {}; console.log(`${chalk.redBright('[Update Manager]')} Config emails options Created...`); };
        if(typeof newConfig.emails.options.html == 'undefined') { newConfig.emails.options.html = replaceHTML; console.log(`${chalk.redBright('[Update Manager]')} Config emails options html Created...`); };
    };
    // Timezone Settings
    if(typeof newConfig.timeZone == 'undefined') { newConfig.timeZone = {}; console.log(`${chalk.redBright('[Update Manager]')} Config timeZone Created...`); madeAChange = true; };
    if(typeof newConfig.timeZone.tz == 'undefined') { newConfig.timeZone.tz = "EST"; console.log(`${chalk.redBright('[Update Manager]')} Config timeZone tz Created...`); madeAChange = true; };
    if(typeof newConfig.timeZone.format == 'undefined') { newConfig.timeZone.format = "MM-DD-YYYY hh:mm A"; console.log(`${chalk.redBright('[Update Manager]')} Config timeZone format Created...`); madeAChange = true; };
    // Redirect Settings
    if(typeof newConfig.redirects == 'undefined') { newConfig.redirects = []; console.log(`${chalk.redBright('[Update Manager]')} Config redirects Created...`); madeAChange = true; };
    // PUSH UPDATES TO CONFIG FILE
    if(madeAChange) {
        let updatedConfig = JSON.stringify(newConfig, null, 4) + '\n';
        fs.writeFileSync('./config.json', updatedConfig);
        console.log(chalk.yellowBright('Changes were made to your config file, please restart this product again.'))
        process.exit(1);
    } else {
        setTimeout(function() {
            console.log(`${chalk.redBright('[Update Manager]')} Configuration file is up to date!`)
        }, 2000);
    };

};

// Rejection Handler
process.on('unhandledRejection', (err) => { 
    if(err.toString().replaceAll(' ', '').includes('cachedDataRejected')) {
        console.log('-----------------------------------');
        console.log('License system was messed with or invalid NodeJS version...');
        console.log(chalk.red('Please read the ToS before continuing...'));
        console.log('-----------------------------------');
        process.exit(1);
    }
});