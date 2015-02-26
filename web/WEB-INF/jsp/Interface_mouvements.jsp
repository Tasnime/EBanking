<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Mouvements</title>

    <!-- Bootstrap Core CSS -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<script language="JavaScript">
  function processUser()
  {
    var parameters = location.search.substring(2).split("&");

    var temp = parameters[0].split("=");
    numCompte = unescape(temp[1]);
    temp = parameters[1].split("=");
    dateDebut = unescape(temp[1]);
    temp = parameters[2].split("=");
    dateFin = unescape(temp[1]);
    document.getElementById("numCompte").innerHTML = numCompte;
    document.getElementById("dateDebut").innerHTML = dateDebut;
    document.getElementById("dateFin").innerHTML = dateFin;
   
  }

function imprime_zone(obj) 
{
// Définie la zone à imprimer
var zi = document.getElementById(obj).innerHTML;
// Ouvre une nouvelle fenetre
var f = window.open("", "ZoneImpr", "height=500, width=600,toolbar=0, menubar=0, scrollbars=1, resizable=1,status=0, location=0, left=10, top=10");
// Définit le Style de la page
//////f.document.body.style.color = '#000000';
//////f.document.body.style.backgroundColor = '#FFFFFF';
//////f.document.body.style.padding = "10px";
// Ajoute les Données
//f.document.title = titre;
f.document.body.innerHTML += " " + zi + " ";
// Imprime et ferme la fenetre
f.window.print();
f.window.close();
return true;
}
</script>
		<link rel="stylesheet" type="text/css" href="DataTables-1.10.5/media/css/jquery.dataTables.css">
		<link rel="stylesheet" type="text/css" href="DataTables-1.10.5/media/css/jquery.dataTables_themeroller.css">
		

		<script type="text/javascript" language="javascript" src="DataTables-1.10.5/media/js/jquery.js"></script>
		<script type="text/javascript" language="javascript" src="DataTables-1.10.5/media/js/jquery.dataTables.min.js"></script>

		<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				$('#example').dataTable();
			} );
		</script>
</head>

<body onload="processUser()">

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand">Client</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                  </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
            
              
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                       
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="index.htm"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="comptes.htm"> Comptes</a>
                        </li>
                        <li>
                            <a href="Interface_demandeExtrait.jsp"> Mouvements</a>
                           
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"> Cartes<span class="fa arrow"></span></a>
							 <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Consulter</a>
                                </li>
                                <li>
                                    <a href="Cartes.htm">Demander</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"> Chéquiers</a>
                        </li>
                        <li>
                            <a href="#">Crédits</a>
                         
                            <!-- /.nav-second-level -->
                        </li>
                      
                        <li>
                            <a href="#">Statistiques</span></a>
                           
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Extrait de Compte</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
             <div id='extrait'> 
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <br/>
                            
                            <label><b><font color="navy">Numéro de compte : </font></b></label><span id="numCompte"></span><br/><br/>
                             <label><b><font color="navy">Devise : </font></b></label>TND<br/><br/>
   
                            
                            
                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="example">
                                    <thead>
                                        <tr>
                                            <th>Date opération</th>
                                            <th>Date valeur</th>
                                            <th>Opération</th>
                                            <th>Débit</th>
                                            <th>Crédit</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="mvm" items="${mouvements}">
                                        <tr class="odd gradeX">
                                          <td>
                        <c:out value="${mvm.getDateOp()}"></c:out>
                    </td>
                    <td>
                        <c:out value="${mvm.getDateVal()}"></c:out>
                    </td>
                    <td>
                        <c:out value="${mvm.getOperation()}"></c:out>
                    </td>
                      <td>
                        <c:out value="${mvm.getDebit()}"></c:out>
                    </td>
                      <td>
                        <c:out value="${mvm.getCredit()}"></c:out>
                    </td>
                                           
                                        </tr>
                                      
                                       </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                           
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
			
			
			<!-----------ici ------>
          
            <!-- /.row -->
         </div id='extrait'> 
<button type="reset" class="btn btn-default" onclick="imprime_zone('extrait');">Imprimer</button>
             </div>
                
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

 

</body>

</html>
