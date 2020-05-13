<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'finalwork' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '~]4r8wHUV-8U:]_->Hp~1my7o7P=q:.]x!~188`7 i@R+z]_%Z=RRsrb51FB34^w' );
define( 'SECURE_AUTH_KEY',  'Yk?J^/3`Y}6.VL9 |?4:c~-G$zDV9WW5CAlQMQZYao33C`:vT_`*}{86X~9XJM^1' );
define( 'LOGGED_IN_KEY',    '%Zn{z1Z=/e^>sf2bQuJ:0y2+aT)5%l&X[xgD8w6_a*OjM.8Wfe:=_]dQ+CP7nO}l' );
define( 'NONCE_KEY',        'e:%qqfIUzEJ2K1KGf-4td(NBE-7-|1`s9-zI@^?oKP07dQ@[Y<>}DFz<n<u|rUX ' );
define( 'AUTH_SALT',        '=i.O`K9-;TKF98xxW7JtW`}?KW(hD;g6Pq+df~3o} O.DAA;(!E,A;<Jg0.W*=9S' );
define( 'SECURE_AUTH_SALT', 'Qm}Lp]WVC>tbr:<gCZ Ke,MQDEU>Pq^+`1e o]Owd%:lX#Bw0M#$gLNL5=vdYE8[' );
define( 'LOGGED_IN_SALT',   'LCQv@]%;*]M8SZHnpnedCpQYdy#OiA$S_Y1?`A0i=,1ME&wiz=4u:oBV^OAVKkc@' );
define( 'NONCE_SALT',       '~ >2MBBR9DNl})s0!C*]KRo@Irzy0[aa2sMo&X*.!44` GJcSSZ];? gBVuBx YN' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wdsfsdfsdsdfsdfp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
