<%-- 
    Document   : Pesquisa-produtos
    Created on : 15/04/2021, 01:32:23
    Author     : TI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>

	<title>Pagina de Pesquisa de Produtos 1.0</title>

	<link rel="stylesheet" type="text/css" href="css/Vendedor.css"/>
        <link rel="stylesheet" type="text/css" href="css/cadastro-produtos.css"/>
        <link rel="stylesheet" type="text/css" href="css/Aplicacao.css"/>

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>

<div class="aw-layout-loading  js-loading-overlay">
	<div class="aw-layout-loading__container">
		<span class="aw-balls-spinner">Carregando...</span>
	</div>
</div>

<div class="aw-layout-page">

	<nav class="navbar  navbar-fixed-top  navbar-default  js-sticky-reference" id="main-navbar">
	  <div class="container-fluid">

	    <div class="navbar-header">
	      <a class="navbar-brand  hidden-xs" href="#">
	        <img alt="AlgaWorks" src="assets/images/logo.png"/>
	      </a>

	      <ul class="nav  navbar-nav">
	        <li>
	          <a href="#" class="js-sidebar-toggle"><i class="fa  fa-bars"></i></a>
	        </li>
	      </ul>
	    </div>

	    <ul class="nav navbar-nav  navbar-right">
	    
	      <li>
	        <a href="#" class="js-search-modal-trigger-show"><i class="fa  fa-search"></i></a>
	      </li>
	      
	      <li class="dropdown">
	        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
	          <i class="fa  fa-envelope"></i> <span class="label  label-danger  aw-label-corner">48</span>
	        </a>
	                  
	        <ul class="dropdown-menu">
	          <li><a href="javascript:;">Item 1</a></li>
	          <li><a href="javascript:;">Item 2</a></li>
	        </ul>
	      </li>
	      
	      <li class="dropdown">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
	          <i class="fa  fa-user"></i>
	        </a>
	        
	        <ul class="dropdown-menu">
	          <li>
	            <div class="aw-logged-user">
	              <img src="https://api.adorable.io/avatars/80/joaodascouves" 
	                width="80" height="80" alt="João das Couves" class="aw-logged-user__picture" />
	              <span class="aw-logged-user__name">João das Couves</span>
	            </div>
	          </li>
	          <li role="separator" class="divider"></li>
	          <li><a href="#">Meu perfil</a></li>
	          <li><a href="#">Alterar senha</a></li>
	          <li><a href="#">Pagamentos</a></li>
	        </ul>
	      </li>
	      
	      <li>
	        <a href="#"><em class="fa  fa-sign-out"></em></a>
	      </li> 
	    </ul>

	  </div>
	</nav>

	<aside class="aw-layout-sidebar  js-sidebar">
		<div class="aw-layout-sidebar__content">

    <nav class="aw-menu  js-menu">
      <ul class="aw-menu__list">

        <li class="aw-menu__item">
          <a href="dashboard.html"><i class="fa  fa-fw  fa-home"></i><span>Dashboard</span></a>
        </li>

        <li class="aw-menu__item  is-active">
          <a href="#">
            <i class="fa  fa-fw  fa-file-text"></i><span>Cadastros</span>
            <i class="aw-menu__navigation-icon  fa"></i>
          </a>
      
          <ul class="aw-menu__list  aw-menu__list--sublist">
            <li class="aw-menu__item  aw-menu__item--link"><a href="cadastro-produto.html">Cadastro de produto</a></li>
            <li class="aw-menu__item  aw-menu__item--link  is-active"><a href="pesquisa-produtos.html">Pesquisa de produtos</a></li>
            <li class="aw-menu__item  aw-menu__item--link"><a href="tabela-sem-dados.html">Tabela sem dados</a></li>
          </ul>
        </li>

        <li class="aw-menu__item  is-expanded">
         

          
        </li>

      </ul>
    </nav>

		</div>
	</aside>

	<section class="aw-layout-content  js-content">


<div class="page-header">
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-10">
				<h1>
					Pesquisa de produtos
				</h1>
			</div>
			
			<div class="col-xs-2">
				<div class="aw-page-header-controls">
					<a class="btn btn-primary" href="cadastro-produto.html">
						<i class="fa  fa-plus-circle"></i> <span class="hidden-xs  hidden-sm">Novo produto</span>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">

	<div class="alert  alert-success  alert-dismissible" role="alert">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		<i class="fa  fa-check"></i> Os 8 produtos selecionados foram excluídos com sucesso!
	</div>

	<form method="get" class="form-vertical  js-form-loading">
		
		<div class="form-group">
			<label for="input-produto-nome">Nome</label>
			<input id="input-produto-nome" type="text" class="form-control">
		</div>

		<div class="row">
			<div class="col-sm-6">
				<div class="form-group">
					<label for="input-produto-preco">Preço unitário</label>
					
					<div class="form-inline">
						<input type="text" class="form-control  aw-form-control-inline-sm" placeholder="R$">
						<label class="aw-form-label-between">até</label>
						<input type="text" class="form-control  aw-form-control-inline-sm" placeholder="R$">
					</div>
				</div>
			</div>
			
			<div class="col-sm-6">
				<div class="form-group">
					<label for="input-produto-estoque">Estoque</label>
					
					<div class="form-inline">
						<input type="text" class="form-control  aw-form-control-inline-sm">
						<label class="aw-form-label-between">até</label>
						<input type="text" class="form-control  aw-form-control-inline-sm">
					</div>
				</div>
			</div>
		</div>
		
		<div class="form-group">
			<button class="btn  btn-primary" type="submit">
				Pesquisar
			</button>
		</div>

	</form>

	<div class="row  aw-datatable-toolbar">
		<div class="col-xs-8">
			<button class="btn btn-default  btn-sm">
				<i class="fa fa-trash"></i> <span class="visible-md-inline  visible-lg-inline">Excluir</span>
			</button>

			<div class="btn-group">
			  <button type="button" class="btn  btn-default  btn-sm  dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
			    <i class="fa  fa-arrow-circle-down  visible-md-inline  visible-lg-inline"></i> <span>Exportar</span>
			    <span class="caret"></span>
			  </button>
			  <ul class="dropdown-menu" role="menu">
			    <li><a href="#">Para arquivo Excel</a></li>
			    <li><a href="#">Para arquivo CSV</a></li>
			    <li><a href="#">Para arquivo XML</a></li>
			  </ul>
			</div>
			
			<div class="btn-group">
			  <button type="button" class="btn btn-default  btn-sm  dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
			    <span>Mais</span>
			    <span class="caret"></span>
			  </button>
			  <ul class="dropdown-menu" role="menu">
			    <li><a href="#">Ativar</a></li>
			    <li><a href="#">Desativar</a></li>
			  </ul>
			</div>
		</div>
		
		<div class="col-xs-4">
			<div class="btn-toolbar  pull-right" role="toolbar">
				<div class="btn-group" role="group">
					<button type="button" class="btn  btn-default  btn-sm"><i class="fa fa-th-large"></i></button>
					<button type="button" class="btn  btn-default  btn-sm  active"><i class="fa fa-bars"></i></button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="table-responsive">
		<table id="tabela-produtos" class="table  table-striped  table-bordered  table-hover  table-condensed  js-sticky-table">
			<thead class="aw-table-header-solid">
				<tr>
					<th class="aw-table-checkbox">
						<input type="checkbox">
					</th>
					<th>Nome</th>
					<th class="table-pesq-produto-col-preco">Preço unitário</th>
					<th class="table-pesq-produto-col-estoque">Estoque</th>
					<th class="table-pesq-produto-col-status">Status</th>
					<th class="table-pesq-produto-col-acoes">Ações</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td><a href="cadastro-produto.html">Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</a> <span class="label  label-danger">Sem estoque</span></td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="fa fa-check js-tooltip" data-placement="top" title="Ativo"></span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								<i class="fa  fa-pencil"></i>
							</button>
							
							<button class="btn  btn-default btn-xs">
								<i class="fa  fa-trash"></i>
							</button>
						</div>
						
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="fa  fa-ban  js-tooltip" data-placement="top" title="Inativo"></span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								<i class="fa  fa-pencil"></i>
							</button>
							
							<button class="btn  btn-default btn-xs">
								<i class="fa  fa-trash"></i>
							</button>
						</div>
					
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label label-success">Ativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								<i class="fa  fa-pencil"></i>
							</button>
							
							<button class="btn  btn-default btn-xs">
								<i class="fa  fa-trash"></i>
							</button>
						</div>
					
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label  label-danger">Inativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								Editar
							</button>
							
							<button class="btn  btn-default btn-xs">
								Excluir
							</button>
						</div>
						
					</td>
				</tr>




				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label  label-danger">Inativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								Editar
							</button>
							
							<button class="btn  btn-default btn-xs">
								Excluir
							</button>
						</div>
						
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label  label-danger">Inativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								Editar
							</button>
							
							<button class="btn  btn-default btn-xs">
								Excluir
							</button>
						</div>
						
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label  label-danger">Inativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								Editar
							</button>
							
							<button class="btn  btn-default btn-xs">
								Excluir
							</button>
						</div>
						
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label  label-danger">Inativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								Editar
							</button>
							
							<button class="btn  btn-default btn-xs">
								Excluir
							</button>
						</div>
						
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label  label-danger">Inativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								Editar
							</button>
							
							<button class="btn  btn-default btn-xs">
								Excluir
							</button>
						</div>
						
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label  label-danger">Inativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								Editar
							</button>
							
							<button class="btn  btn-default btn-xs">
								Excluir
							</button>
						</div>
						
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label  label-danger">Inativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								Editar
							</button>
							
							<button class="btn  btn-default btn-xs">
								Excluir
							</button>
						</div>
						
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label  label-danger">Inativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								Editar
							</button>
							
							<button class="btn  btn-default btn-xs">
								Excluir
							</button>
						</div>
						
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label  label-danger">Inativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								Editar
							</button>
							
							<button class="btn  btn-default btn-xs">
								Excluir
							</button>
						</div>
						
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label  label-danger">Inativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								Editar
							</button>
							
							<button class="btn  btn-default btn-xs">
								Excluir
							</button>
						</div>
						
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label  label-danger">Inativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								Editar
							</button>
							
							<button class="btn  btn-default btn-xs">
								Excluir
							</button>
						</div>
						
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label  label-danger">Inativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								Editar
							</button>
							
							<button class="btn  btn-default btn-xs">
								Excluir
							</button>
						</div>
						
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label  label-danger">Inativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								Editar
							</button>
							
							<button class="btn  btn-default btn-xs">
								Excluir
							</button>
						</div>
						
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label  label-danger">Inativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								Editar
							</button>
							
							<button class="btn  btn-default btn-xs">
								Excluir
							</button>
						</div>
						
					</td>
				</tr>
				<tr>
					<td class="aw-table-checkbox"><input type="checkbox"></td>
					<td>Blue Microphones Yeti Pro Usb & XLR - Microfone Condensador</td>
					<td class="table-pesq-produto-col-preco">R$1.699,00</td>
					<td class="table-pesq-produto-col-estoque">1</td>
					<td class="table-pesq-produto-col-status"><span class="label  label-danger">Inativo</span></td>
					<td class="table-pesq-produto-col-acoes">
					
						<div class="btn-group">
							<button class="btn  btn-default btn-xs">
								Editar
							</button>
							
							<button class="btn  btn-default btn-xs">
								Excluir
							</button>
						</div>
						
					</td>
				</tr>
			</tbody>
		</table>
	</div>
		
	<div class="row">
		<div class="col-xs-12  col-md-8  aw-text-xs-center  aw-text-md-left">
			<nav>
				<ul class="pagination  pagination-sm">
					<li><a href="#"><i class="fa  fa-angle-double-left"></i></a></li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#"><i class="fa  fa-angle-double-right"></i></a></li>
				</ul>
			</nav>
		</div>
		<div class="col-xs-12  col-md-4  aw-text-xs-center  aw-text-md-right">
			<span class="aw-pagination-info">
				102 produtos encontrados
			</span>
		</div>

	</div>
</div>

	</section>
	
	<footer class="aw-layout-footer  js-content">
		<div class="container-fluid">
			<span class="aw-footer-disclaimer">&copy; 2016 AlgaWorks. Todos os direitos reservados.</span>
		</div>
	</footer>

</div>

<div class="aw-search-modal  js-search-modal">
	<form action="#" class="aw-search-modal__form">
		<input class="aw-search-modal__input  js-search-modal-input" type="text" placeholder="O que você está procurando?"/>
		<div class="aw-search-modal__input-icon">
			<i class="glyphicon  glyphicon-search  js-search-modal-go"></i>
		</div>
	</form>
	
	<div class="aw-search-modal__controls">
		<i class="glyphicon glyphicon-remove  js-search-modal-close"></i>
	</div>
</div>

<script src="assets/javascripts/vendors.min.js"></script>
<script src="assets/javascripts/algaworks.min.js"></script>

</body>
</html>