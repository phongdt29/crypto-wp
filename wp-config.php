<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'crypto_wp' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', '127.0.0.1' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'o&$_08F5ev~q~Y#qG/Ttv]JZ`l!aw#JMaQ#c])j$/B6&E[Zlnzvfqr#$~f}0T2(K' );
define( 'SECURE_AUTH_KEY',   'O 9-;uu<I D.i(z_3rouVsqb?R9;P?8.%*tDz}aZ%or)yd^wN:ZIr.|v4tSr4e:]' );
define( 'LOGGED_IN_KEY',     'EEZncJ<yH|z6UU#W$Cy7H6xH>_acRJ@.}%SibG:m#%)oAsG80xe=Nxo%,|S1}Uj,' );
define( 'NONCE_KEY',         'jV|ieAZo{B2,$JE=pZ<&1t#9fr$2A&:DA/(!nq4&a!?Gu,6GGvH (so[y~dv*.r!' );
define( 'AUTH_SALT',         '|YB60c-dtN9S:+a=Q;A`X#{GNEe0J.&mgl{e];D76fI3~vlRY=1cZ3/%Jwl6X&V1' );
define( 'SECURE_AUTH_SALT',  't00,ptX6, hZz|6tC9>P.QAu}vX$b#Zyn aKaA5zIjmWid8e24a*Tq}gw8fiszpH' );
define( 'LOGGED_IN_SALT',    'KF4fC,idl$|N!8@?,jU5I#4J[Uw&O)p<1FLI5.7>UPy-VQ:MC1Ul6!m&nYIz!O8|' );
define( 'NONCE_SALT',        'BQf|d-)dqv/Y}sy;(CkJ+H<%~X;>16s>_kex}Bp[ ~Dt<2?O}K+`~2lCIGQOl$G`' );
define( 'WP_CACHE_KEY_SALT', 'aF^scbcXhAM+Ynoi8/C.1E|rnMYpBXRt]Ts 4wev.^sOp_.mD&<lF;f!)+l@hl(R' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
