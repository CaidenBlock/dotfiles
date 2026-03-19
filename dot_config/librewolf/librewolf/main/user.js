// Allow installing unsigned extensions
user_pref("xpinstall.signatures.required", false);

// Enable userChrome.css / userContent.css
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

// Disable the warn on about:config
user_pref("browser.aboutConfig.showWarning", false);

// Smooth scrolling
user_pref("general.smoothScroll", true);


// Settings Overides
// Allow DRM
user_pref("media.eme.enabled", true);
// Browser Privacy -> Tracking Protection -> Fix major site issues
user_pref("privacy.trackingprotection.allow_list.baseline.enabled", true);
// Delete cookies and site data when LibreWolf is closed 
user_pref("privacy.clearOnShutdown_v2.cookiesAndStorage", false);
