<?php
/**
 * Template Name: empresa
 *
 * The template for displaying pages with sidebar.
 *
 * @package Odin
 * @since 2.2.0
 */

get_header();
?>
	<main id="home" class="home" tabindex="-1" role="main">
		<?php for ($i=0; $i < 20; $i++) { 
			echo '<h1>empresa</h1>';
		}?>	
	</main>
<?php
get_footer();
