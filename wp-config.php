<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do banco de dados
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Configurações do banco de dados - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'goalvarenga' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'root' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', '' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '8XP(}y-_baosR|9_kiUv$q>@;2[P}|&rxdMXA`>sD;U7u#)3%E9TI8[blDE_TT{(');
define('SECURE_AUTH_KEY',  'D0>?4>e>{E[@|m7]P?o=zut^u;!+,8|tG60Ur=j:o)yjR+3EG=ba%I4jnf(emJxZ');
define('LOGGED_IN_KEY',    'G7/Ya8RzoJtkS0++T0X;FA{pm=Lx6n/nw|+4wtvyxb}buos62hX=Y?7r@9C4 $Ql');
define('NONCE_KEY',        'yC#`0])Bm9Hr~}iuV_KJj C#O8:d9{Zcpb;xjz+~doh0H<$=77r%.(<F? I`(6ut');
define('AUTH_SALT',        'gy;5Ts)EHx-F#>KR{,2ux:f1z]w7;{=jo?Gu4ZtsqEB-f(.$?O~/y~,mQ`yQA5.o');
define('SECURE_AUTH_SALT', '!0<-}OL>/aO;|zg^/Zp9p~a>QVokJ0Zv_l*URkrR=$ =~9KP7XZM-E_.I#(vxnsg');
define('LOGGED_IN_SALT',   '/9zDu[naAg_}ft!:+z)9Of~|d,Z3MAfCbmO,bo@c}ptSLQ`bh+~o|cE $~+$G}&R');
define('NONCE_SALT',       'kI=o^ B%+AA!7tbf:c?1_[2]DeCE,%kX4wKfugkUr~/!BS{~X4k1S.)IL$~$HD|F');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Adicione valores personalizados entre esta linha até "Isto é tudo". */



/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once ABSPATH . 'wp-settings.php';
