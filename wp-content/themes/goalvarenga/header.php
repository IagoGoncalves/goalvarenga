<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till #main div
 *
 * @package Odin
 * @since 2.2.0
 */
?><!DOCTYPE html>
<html class="no-js" <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="profile" href="http://gmpg.org/xfn/11" />
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
	<?php if ( ! get_option( 'site_icon' ) ) : ?>
		<link href="<?php echo get_template_directory_uri(); ?>/assets/images/favicon.ico" rel="shortcut icon" />
	<?php endif; ?>
	<?php wp_head(); ?>

	<script src="https://www.google.com/recaptcha/api.js"></script>
</head>

<body <?php body_class(); ?>>
	<header id="header" class="header" role="banner">
		<div id="menu" class="menu">
			<div id="main-navigation" class="main-navigation navbar navbar-default">					
				<a class="logo-principal" href="<?php echo esc_url( home_url( 'home' ) ); ?>" alt="GO Alvarenga" title="GO Alvarenga"><img  src="<?php echo get_template_directory_uri(); ?>/assets/images/logo1.png"/></a>
				
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-navigation">
					<span class="sr-only"><?php _e( 'Toggle navigation', 'odin' ); ?></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<nav class="collapse navbar-collapse navbar-main-navigation" role="navigation">
					<?php
						wp_nav_menu(
							array(
								'theme_location' => 'main-menu',
								'depth'          => 2,
								'container'      => false,
								'menu_class'     => 'nav navbar-nav',
								'fallback_cb'    => 'Odin_Bootstrap_Nav_Walker::fallback',
								'walker'         => new Odin_Bootstrap_Nav_Walker()
							)
						);
					?>
				</nav>
				<div class="icones alinhamento">
					<?php
						$args = array('post_type' => 'dados','posts_per_page' => 1);
							$var = new WP_Query($args);
							if($var->have_posts()):
								while($var->have_posts()):
									$var->the_post(); ?>
										<?php												
											$instagram =  get_post_meta( $post->ID,'instagram', true );
											$facebook =  get_post_meta( $post->ID,'facebook', true );
										?>
										<?php if ($instagram != '') { ?>	
											<a href="<?php echo $instagram ?>" class="rede-instagram" target="_blank">
												<svg width="23" height="23" viewBox="0 0 23 23" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd" clip-rule="evenodd" d="M6.75886 0.069C7.98518 0.0125454 8.37618 0 11.5 0C14.6238 0 15.0148 0.0135909 16.2401 0.069C17.4654 0.124409 18.3017 0.319909 19.0335 0.603227C19.7999 0.892818 20.4951 1.3455 21.0701 1.93095C21.6555 2.50491 22.1072 3.19909 22.3957 3.96645C22.6801 4.69827 22.8745 5.53464 22.931 6.75782C22.9875 7.98623 23 8.37723 23 11.5C23 14.6238 22.9864 15.0148 22.931 16.2411C22.8756 17.4643 22.6801 18.3007 22.3957 19.0325C22.1072 19.8 21.6548 20.4953 21.0701 21.0701C20.4951 21.6555 19.7999 22.1072 19.0335 22.3957C18.3017 22.6801 17.4654 22.8745 16.2422 22.931C15.0148 22.9875 14.6238 23 11.5 23C8.37618 23 7.98518 22.9864 6.75886 22.931C5.53568 22.8756 4.69932 22.6801 3.9675 22.3957C3.20005 22.1071 2.50472 21.6548 1.92991 21.0701C1.34485 20.4958 0.892102 19.8008 0.603227 19.0335C0.319909 18.3017 0.125455 17.4654 0.069 16.2422C0.0125454 15.0138 0 14.6228 0 11.5C0 8.37618 0.0135909 7.98518 0.069 6.75991C0.124409 5.53464 0.319909 4.69827 0.603227 3.96645C0.892528 3.19918 1.34562 2.50419 1.93095 1.92991C2.50495 1.34498 3.19958 0.892236 3.96645 0.603227C4.69827 0.319909 5.53568 0.125455 6.75886 0.069ZM16.147 2.139C14.9343 2.08359 14.5705 2.07209 11.5 2.07209C8.4295 2.07209 8.06568 2.08359 6.85295 2.139C5.73118 2.19023 5.12273 2.37736 4.71709 2.53523C4.18077 2.74432 3.79709 2.99209 3.39459 3.39459C3.01305 3.76578 2.71942 4.21766 2.53523 4.71709C2.37736 5.12273 2.19023 5.73118 2.139 6.85295C2.08359 8.06568 2.07209 8.4295 2.07209 11.5C2.07209 14.5705 2.08359 14.9343 2.139 16.147C2.19023 17.2688 2.37736 17.8773 2.53523 18.2829C2.71923 18.7816 3.013 19.2343 3.39459 19.6054C3.76573 19.987 4.21841 20.2808 4.71709 20.4648C5.12273 20.6226 5.73118 20.8098 6.85295 20.861C8.06568 20.9164 8.42845 20.9279 11.5 20.9279C14.5715 20.9279 14.9343 20.9164 16.147 20.861C17.2688 20.8098 17.8773 20.6226 18.2829 20.4648C18.8192 20.2557 19.2029 20.0079 19.6054 19.6054C19.987 19.2343 20.2808 18.7816 20.4648 18.2829C20.6226 17.8773 20.8098 17.2688 20.861 16.147C20.9164 14.9343 20.9279 14.5705 20.9279 11.5C20.9279 8.4295 20.9164 8.06568 20.861 6.85295C20.8098 5.73118 20.6226 5.12273 20.4648 4.71709C20.2557 4.18077 20.0079 3.79709 19.6054 3.39459C19.2342 3.01307 18.7823 2.71945 18.2829 2.53523C17.8773 2.37736 17.2688 2.19023 16.147 2.139ZM10.0311 15.0451C10.8515 15.3866 11.7649 15.4327 12.6154 15.1755C13.466 14.9184 14.2008 14.3739 14.6945 13.6351C15.1882 12.8963 15.4101 12.009 15.3222 11.1248C15.2344 10.2406 14.8423 9.41429 14.213 8.78704C13.8117 8.38609 13.3266 8.07908 12.7925 7.88811C12.2584 7.69714 11.6886 7.62697 11.1242 7.68264C10.5597 7.73832 10.0146 7.91846 9.52807 8.21009C9.04157 8.50172 8.62578 8.8976 8.31063 9.36921C7.99549 9.84082 7.78883 10.3764 7.70554 10.9375C7.62224 11.4986 7.66439 12.0711 7.82893 12.6139C7.99347 13.1568 8.27632 13.6564 8.65712 14.0768C9.03791 14.4971 9.50718 14.8279 10.0311 15.0451ZM7.32027 7.32027C7.86916 6.77138 8.52079 6.33598 9.23795 6.03892C9.95511 5.74187 10.7238 5.58897 11.5 5.58897C12.2762 5.58897 13.0449 5.74187 13.7621 6.03892C14.4792 6.33598 15.1308 6.77138 15.6797 7.32027C16.2286 7.86916 16.664 8.52079 16.9611 9.23795C17.2581 9.95511 17.411 10.7238 17.411 11.5C17.411 12.2762 17.2581 13.0449 16.9611 13.7621C16.664 14.4792 16.2286 15.1308 15.6797 15.6797C14.5712 16.7883 13.0677 17.411 11.5 17.411C9.9323 17.411 8.4288 16.7883 7.32027 15.6797C6.21174 14.5712 5.58897 13.0677 5.58897 11.5C5.58897 9.9323 6.21174 8.4288 7.32027 7.32027ZM18.722 6.46927C18.858 6.34096 18.9669 6.18667 19.0422 6.01552C19.1175 5.84437 19.1578 5.65985 19.1605 5.47288C19.1632 5.28591 19.1284 5.1003 19.0581 4.92703C18.9878 4.75376 18.8835 4.59635 18.7512 4.46413C18.619 4.33191 18.4616 4.22756 18.2883 4.15727C18.1151 4.08697 17.9294 4.05216 17.7425 4.05488C17.5555 4.05761 17.371 4.09782 17.1998 4.17314C17.0287 4.24845 16.8744 4.35735 16.7461 4.49336C16.4966 4.75789 16.3599 5.10926 16.3652 5.47288C16.3705 5.8365 16.5173 6.18374 16.7745 6.44088C17.0316 6.69803 17.3789 6.84483 17.7425 6.85013C18.1061 6.85543 18.4575 6.71881 18.722 6.46927Z" fill="white"/>
												</svg>
											</a>	
										<?php } else { ?>
											<span class="desabilitado"></span>
										<?php } ?>
										
										<?php if ($facebook != '') { ?>	
											<a href="<?php echo $facebook ?>" class="rede-facebook" target="_blank">
												<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path d="M21.0625 0.0625H0.9375C0.453516 0.0625 0.0625 0.453516 0.0625 0.9375V21.0625C0.0625 21.5465 0.453516 21.9375 0.9375 21.9375H21.0625C21.5465 21.9375 21.9375 21.5465 21.9375 21.0625V0.9375C21.9375 0.453516 21.5465 0.0625 21.0625 0.0625ZM20.1875 20.1875H15.1535V13.4664H17.9973L18.4238 10.166H15.1535V8.05781C15.1535 7.10078 15.4187 6.45 16.7887 6.45H18.5359V3.49688C18.2324 3.45586 17.1961 3.36563 15.9875 3.36563C13.4664 3.36563 11.741 4.90508 11.741 7.72969V10.1633H8.8918V13.4637H11.7438V20.1875H1.8125V1.8125H20.1875V20.1875Z" fill="white"/>
												</svg>
											</a>	
										<?php } else { ?>
											<span class="desabilitado"></span>
										<?php } ?>

										<?php
								endwhile;
							endif;
						wp_reset_postdata(); 
					?>
					<a href="https://api.whatsapp.com/send?phone=55<?php echo $whatsapp ?>&text=Olá, vim pelo site da GO Alvarenga" alt="<?php echo $whatsapp ?>" title="<?php echo $whatsapp ?>1" target="_blank" class="botao-whats alinhamento"></a>
				</div>
			</div>
		</div>
	</header>