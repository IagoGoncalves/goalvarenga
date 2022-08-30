<?php

function custom_metabox() {
   global $post;

//Dados
  $post_metabox = new Odin_Metabox(
   'conteudo-dados', // Slug/ID of the Metabox (Required)
   'INFORMAÇÕES', // Metabox name (Required)
   'dados', // Slug of Post Type (Optional)
   'normal', // Context (options: normal, advanced, or side) (Optional)
   'high' // Priority (options: high, core, default or low) (Optional)
 );
 $post_metabox->set_fields(
   array( 
     //LOCALIZAÇÃO
       array(
         'id'   => 'localizacao', // Required
         'label'=> __( 'LOCALIZAÇÃO', 'odin' ), // Required
         'type' => 'title', // Required
       ),
       array(
         'id'          => 'logradouro', // Required
         'label'       => __( 'Logradouro:', 'odin' ), // Required
         'type'        => 'select', // Required
         'default'    => 'Rua', // Optional               
         'options' => 
         array(
           'Rua' => 'Rua',
           'Avenida' => 'Avenida',
           'Praça' => 'Praça',
           'Bosque' => 'Bosque',
           'Alameda' => 'Alameda',
           'Estrada' => 'Estrada',
           'Rodovia' => 'Rodovia',
           'Travessa' => 'Travessa',
           '-' => '-',
         ),
       ),
       array(
         'id'          => 'endereco', // Obrigatório
         'label'       => __( 'Endereço:', 'odin' ), //Obrigatório
         'type'        => 'text', // Obrigatório
         'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
         'description' => __( 'Nome da rua, avenida, praça, etc, sem o número', 'odin' ), // Optional
       ),
       array(
         'id'          => 'numero', // Obrigatório
         'label'       => __( 'Número:', 'odin' ), // Obrigatório
         'type'        => 'text', // Obrigatório
         'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
         'description' => __( 'Número do estabelecimento', 'odin' ), // Optional
       ),
       array(
         'id'          => 'bairro', // Obrigatório
         'label'       => __( 'Bairro:', 'odin' ), // Obrigatório
         'type'        => 'text', // Obrigatório
         'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
         'description' => __( '', 'odin' ), // Optional
       ),
       array(
         'id'          => 'cidade', // Obrigatório
         'label'       => __( 'Cidade:', 'odin' ), // Obrigatório
         'type'        => 'text', // Obrigatório
         'default'     => 'Extrema', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
         'description' => __( '', 'odin' ), // Optional
       ),
       array(
         'id'          => 'estado', // Required
         'label'       => __( 'Estado:', 'odin' ), // Required
         'type'        => 'select', // Required
         'default'    => 'MG', // Optional
         'description' => __( '', 'odin' ), // Optional
         'options' => 
         array( // Required (id => title)
           'AC' => 'AC',
           'AL' => 'AL',
           'AM' => 'AM',
           'AP' => 'AP',
           'BA' => 'BA',
           'CE' => 'CE',
           'DF' => 'DF',
           'ES' => 'ES',
           'GO' => 'GO',
           'MA' => 'MA',
           'MG' => 'MG',
           'MS' => 'MS',
           'MT' => 'MT',
           'PA' => 'PA',
           'PB' => 'PB',
           'PE' => 'PE',
           'PI' => 'PI',
           'PR' => 'PR',
           'RJ' => 'RJ',
           'RN' => 'RN',
           'RO' => 'RO',
           'RR' => 'RR',
           'RS' => 'RS',
           'SC' => 'SC',
           'SE' => 'SE',
           'SP' => 'SP',
           'TO' => 'TO',
         ),
       ),
       array(
         'id'          => 'cep', // Obrigatório
         'label'       => __( 'CEP:', 'odin' ), // Obrigatório
         'type'        => 'text', // Obrigatório
         'default'     => '37640-000', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
         'description' => __( '', 'odin' ), // Optional
       ),

       array(
         'id'          => 'complemento', // Obrigatório
         'label'       => __( 'Complemento:', 'odin' ), // Obrigatório
         'type'        => 'text', // Obrigatório
         'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
         'description' => __( '', 'odin' ), // Optional
       ),

     array(
       'id'   => 'separator1', // Obrigatório
       'type' => 'separator' // Obrigatório
     ),  
     array(
       'id'          => 'telefone1', // Obrigatório
       'label'       => __( 'Telefone 1:', 'odin' ), // Obrigatório
       'type'        => 'text', // Obrigatório
       'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
       'description' => __( 'Digite o numero ex.: (xx) xxxx-xxxx', 'odin' ),
       'attributes'  => array( // Optional (html input elements)
         'type' => 'tel'
       )
     ),  
     array(
      'id'          => 'telefone2', // Obrigatório
      'label'       => __( 'Telefone 2:', 'odin' ), // Obrigatório
      'type'        => 'text', // Obrigatório
      'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
      'description' => __( 'Digite o numero ex.: (xx) xxxx-xxxx', 'odin' ),
      'attributes'  => array( // Optional (html input elements)
        'type' => 'tel'
      )
    ),  
     array(
      'id'          => 'email1', // Obrigatório
      'label'       => __( 'Email:', 'odin' ), // Obrigatório
      'type'        => 'text', // Obrigatório
      'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
      'attributes'  => array( // Optional (html input elements)
        'type' => 'email'
      )
    ),   
     array(
       'id'          => 'whatsapp', // Obrigatório
       'label'       => __( 'Whatsapp:', 'odin' ), // Obrigatório
       'type'        => 'text', // Obrigatório
       'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
       'description' => __( 'Digite o numero ex.: (xx) xxxx-xxxx', 'odin' ),
       'attributes'  => array( // Optional (html input elements)
         'type' => 'tel'
       )
     ),
     array(
       'id'          => 'whats-esocial', // Obrigatório
       'label'       => __( 'Whatsapp e-social:', 'odin' ), // Obrigatório
       'type'        => 'text', // Obrigatório
       'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
       'description' => __( 'Digite o numero ex.: (xx) xxxx-xxxx', 'odin' ),
       'attributes'  => array( // Optional (html input elements)
         'type' => 'tel'
       )
     ),  
     array(
       'id'          => 'facebook', // Required
       'label'       => __( 'Link do facebook', 'odin' ), // Required
       'type'        => 'input', // Required
       'attributes'  => array( // Optional (html input elements)
         'type' => 'url'
       )
     ),
     array(
       'id'          => 'instagram', // Required
       'label'       => __( 'Link do instagram', 'odin' ), // Required
       'type'        => 'input', // Required    
       'attributes'  => array( // Optional (html input elements)
         'type' => 'url'
       )
     ),   
     array(
      'id'          => 'youtube', // Required
      'label'       => __( 'Link do youtube', 'odin' ), // Required
      'type'        => 'input', // Required    
      'attributes'  => array( // Optional (html input elements)
        'type' => 'url'
      )
    ),    
   )
 );

//Banner
   $post_metabox = new Odin_Metabox(
      'conteudo-banner', // Slug/ID of the Metabox (Required)
      'Banner alternativo', // Metabox name (Required)
      'banner', // Slug of Post Type (Optional)
      'normal', // Context (options: normal, advanced, or side) (Optional)
      'high' // Priority (options: high, core, default or low) (Optional)
   );
   $post_metabox->set_fields(
      array( 
        array(
          'id'          => 'banner2', // Obrigatório
          'label'       => __( 'Banner versão mobile', 'odin' ), // Obrigatório
          'type'        => 'image', // Obrigatório
          'default'     => '', // Opcional (deve ser o id de uma imagem em mídia)
          'description' => __( 'Descrition Example', 'odin' ), // Opcional
        ), 
      )
   );
//Exemplo 'O que é' & 'Como Funciona?'
  $post_metabox = new Odin_Metabox(
      'pagina-padrao', // Slug/ID of the Metabox (Required)
      'Modelo Padrão', // Metabox name (Required)
      'page', // Slug of Post Type (Optional)
      'normal', // Context (options: normal, advanced, or side) (Optional)
      'high', // Priority (options: high, core, default or low) (Optional)
      'page-sidebar.php'
  );
  $post_metabox->set_fields(
    array(
      array(
        'id'          => 'oque', // Obrigatório
        'label'       => __( 'O que é', 'odin' ), // Obrigatório
        'type'        => 'textarea', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'como', // Obrigatório
        'label'       => __( 'Como Funciona?', 'odin' ), // Obrigatório
        'type'        => 'textarea', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ),
      array(
        'id'   => 'separator1', // Obrigatório
        'type' => 'separator' // Obrigatório
      ), 
      array(
        'id'          => 'decreto1', // Obrigatório
        'label'       => __( 'Decreto n°1', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
      ),
      array(
        'id'          => 'pdf1', // Obrigatório
        'label'       => __( 'Insira seu arquivo', 'odin' ), // Obrigatório
        'type'        => 'upload', // Obrigatório
        'description' => __( 'Apenas arquivos PDF', 'odin' ), // Optional
      ),
      array(
        'id'          => 'decreto2', // Obrigatório
        'label'       => __( 'Decreto n°2', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
      ),
      array(
        'id'          => 'pdf2', // Obrigatório
        'label'       => __( 'Insira seu arquivo', 'odin' ), // Obrigatório
        'type'        => 'upload', // Obrigatório
        'description' => __( 'Apenas arquivos PDF', 'odin' ), // Optional
      ),
      array(
        'id'   => 'separator2', // Obrigatório
        'type' => 'separator' // Obrigatório
      ), 
      array(
        'id'          => 'lei1', // Obrigatório
        'label'       => __( 'Lei n°1', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
      ),
      array(
        'id'          => 'pdf3', // Obrigatório
        'label'       => __( 'Insira seu arquivo', 'odin' ), // Obrigatório
        'type'        => 'upload', // Obrigatório
        'description' => __( 'Apenas arquivos PDF', 'odin' ), // Optional
      ),
      array(
        'id'          => 'lei2', // Obrigatório
        'label'       => __( 'Lei n°2', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
      ),
      array(
        'id'          => 'pdf4', // Obrigatório
        'label'       => __( 'Insira seu arquivo', 'odin' ), // Obrigatório
        'type'        => 'upload', // Obrigatório
        'description' => __( 'Apenas arquivos PDF', 'odin' ), // Optional
      ),
    )
  );
//Residuos -----------------------------
  $post_metabox = new Odin_Metabox(
    'rde', // Slug/ID of the Metabox (Required)
    'Residuos', // Metabox name (Required)
    'residuos', // Slug of Post Type (Optional)
    'normal', // Context (options: normal, advanced, or side) (Optional)
    'high' // Priority (options: high, core, default or low) (Optional)
  );
  $post_metabox->set_fields(
    array(
      array(
        'id'          => 'oque-rde', // Obrigatório
        'label'       => __( 'O que é', 'odin' ), // Obrigatório
        'type'        => 'textarea', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'como-rde', // Obrigatório
        'label'       => __( 'Como Funciona?', 'odin' ), // Obrigatório
        'type'        => 'textarea', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ),    
    )
  );
//Noticias'
  $post_metabox = new Odin_Metabox(
    'fonte-noticia', // Slug/ID of the Metabox (Required)
    'Fonte Noticias', // Metabox name (Required)
    'noticias', // Slug of Post Type (Optional)
    'normal', // Context (options: normal, advanced, or side) (Optional)
    'high' // Priority (options: high, core, default or low) (Optional)
  );
  $post_metabox->set_fields(
    array(
        array(
          'id'          => 'fonte', // Obrigatório
          'label'       => __( 'Insira a fonte', 'odin' ), // Obrigatório
          'type'        => 'text', // Obrigatório
        ),
    )
  );
//Caçambas'
  $post_metabox = new Odin_Metabox(
    'link-mapa', // Slug/ID of the Metabox (Required)
    'Link do mapa', // Metabox name (Required)
    'cacamba', // Slug of Post Type (Optional)
    'normal', // Context (options: normal, advanced, or side) (Optional)
    'high' // Priority (options: high, core, default or low) (Optional)
  );
  $post_metabox->set_fields(
    array(
        array(
          'id'          => 'link-coord', // Obrigatório
          'label'       => __( 'Insira o link', 'odin' ), // Obrigatório
          'type'        => 'input', // Required
          'description' => __( '', 'odin' ), // Optional
          'attributes'  => array( // Optional (html input elements)
              'type' => 'url'
          )
        ),
    )
  );
}
add_action( 'init', 'custom_metabox', 1 );

