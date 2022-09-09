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
//Home
  $post_metabox = new Odin_Metabox(
    'home', // Slug/ID of the Metabox (Required)
    'A empresa', // Metabox name (Required)
    'page', // Slug of Post Type (Optional)
    'normal', // Context (options: normal, advanced, or side) (Optional)
    'high', // Priority (options: high, core, default or low) (Optional)
    'page-home.php'
  );
  $post_metabox->set_fields(
    array(
      array(
        'id'          => 'descritivo-empresa', // Obrigatório
        'label'       => __( 'Descritivo da empresa', 'odin' ), // Obrigatório
        'type'        => 'textarea', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
          'id'          => 'construcao', // Obrigatório
          'label'       => __( 'Titulo Construção', 'odin' ), // Obrigatório
          'type'        => 'text', // Obrigatório
          'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
          'description' => __( '', 'odin' ), // Optional
      ), 
      array(
          'id'          => 'texto-construcao', // Obrigatório
          'label'       => __( 'Texto Construção', 'odin' ), // Obrigatório
          'type'        => 'textarea', // Obrigatório
          'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
          'description' => __( '', 'odin' ), // Optional
      ),  
      array(
          'id'   => 'separator1', // Obrigatório
          'type' => 'separator' // Obrigatório
      ), 
      array(
          'id'          => 'reparos', // Obrigatório
          'label'       => __( 'Titulo Reparos', 'odin' ), // Obrigatório
          'type'        => 'text', // Obrigatório
          'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
          'description' => __( '', 'odin' ), // Optional
      ), 
      array(
          'id'          => 'texto-reparos', // Obrigatório
          'label'       => __( 'Texto Reparos', 'odin' ), // Obrigatório
          'type'        => 'textarea', // Obrigatório
          'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
          'description' => __( '', 'odin' ), // Optional
      ),   
      array(
        'id'   => 'separator1', // Obrigatório
        'type' => 'separator' // Obrigatório
      ), 
      array(
          'id'          => 'projetos', // Obrigatório
          'label'       => __( 'Titulo Projetos', 'odin' ), // Obrigatório
          'type'        => 'text', // Obrigatório
          'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
          'description' => __( '', 'odin' ), // Optional
      ), 
      array(
          'id'          => 'texto-projetos', // Obrigatório
          'label'       => __( 'Texto Projetos', 'odin' ), // Obrigatório
          'type'        => 'textarea', // Obrigatório
          'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
          'description' => __( '', 'odin' ), // Optional
      ),      
      array(
        'id'          => 'imagem-fundo', // Required
        'label'       => __( 'Imagem do fundo', 'odin' ), // Required
        'type'        => 'image', // Required
        // 'default'     => '', // Optional (image attachment id)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'imagem-frente', // Required
        'label'       => __( 'Imagem da frente', 'odin' ), // Required
        'type'        => 'image', // Required
        // 'default'     => '', // Optional (image attachment id)
        'description' => __( '', 'odin' ), // Optional
      ), 
    )
  );
//Empresa
  $post_metabox = new Odin_Metabox(
    'empresa', // Slug/ID of the Metabox (Required)
    'Informativo', // Metabox name (Required)
    'page', // Slug of Post Type (Optional)
    'normal', // Context (options: normal, advanced, or side) (Optional)
    'high', // Priority (options: high, core, default or low) (Optional)
    'page-empresa.php'
  );
  $post_metabox->set_fields(
    array(
      array(
        'id'          => 'experiencia', // Obrigatório
        'label'       => __( 'Anos de experiência', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
        'default'     => 'Anos de experiência', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'experiencia-qtd', // Obrigatório
        'label'       => __( 'Quantidade de anos de experiência', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'projetos', // Obrigatório
        'label'       => __( 'Projetos realizados', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
        'default'     => 'Projetos realizados', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'projetos-qtd', // Obrigatório
        'label'       => __( 'Quantidade de Projetos realizados', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'licencas', // Obrigatório
        'label'       => __( 'Licenças de Arquitetura', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
        'default'     => 'Licenças de Arquitetura', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'licencas-qtd', // Obrigatório
        'label'       => __( 'Quantidade de licenças de arquitetura', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'clientes', // Obrigatório
        'label'       => __( 'Clientes satisfeitos', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
        'default'     => 'Clientes satisfeitos', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'clientes-qtd', // Obrigatório
        'label'       => __( 'Quantidade de clientes satisfeitos', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'box1-img', // Required
        'label'       => __( 'Imagem box 1', 'odin' ), // Required
        'type'        => 'image', // Required
        // 'default'     => '', // Optional (image attachment id)
        'description' => __( '', 'odin' ), // Optional
      ),
      array(
        'id'          => 'box1-title', // Obrigatório
        'label'       => __( 'Titulo box 1', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'box1-desc', // Obrigatório
        'label'       => __( 'Descritivo box 1', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'box2-img', // Required
        'label'       => __( 'Imagem box 2', 'odin' ), // Required
        'type'        => 'image', // Required
        // 'default'     => '', // Optional (image attachment id)
        'description' => __( '', 'odin' ), // Optional
      ),
      array(
        'id'          => 'box2-title', // Obrigatório
        'label'       => __( 'Titulo box 2', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'box2-desc', // Obrigatório
        'label'       => __( 'Descritivo box 2', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'box3-img', // Required
        'label'       => __( 'Imagem box 3', 'odin' ), // Required
        'type'        => 'image', // Required
        // 'default'     => '', // Optional (image attachment id)
        'description' => __( '', 'odin' ), // Optional
      ),
      array(
        'id'          => 'box3-title', // Obrigatório
        'label'       => __( 'Titulo box 3', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'box3-desc', // Obrigatório
        'label'       => __( 'Descritivo box 3', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'box4-img', // Required
        'label'       => __( 'Imagem box 4', 'odin' ), // Required
        'type'        => 'image', // Required
        // 'default'     => '', // Optional (image attachment id)
        'description' => __( '', 'odin' ), // Optional
      ),
      array(
        'id'          => 'box4-title', // Obrigatório
        'label'       => __( 'Titulo box 4', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
      array(
        'id'          => 'box4-desc', // Obrigatório
        'label'       => __( 'Descritivo box 4', 'odin' ), // Obrigatório
        'type'        => 'text', // Obrigatório
        'default'     => '', // Opcional (deve ser o id de uma imagem em mídias, separe os ids com virtula)
        'description' => __( '', 'odin' ), // Optional
      ), 
    )
  );
}
add_action( 'init', 'custom_metabox', 1 );

