<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
	   	        	 <div class="container">
	   	        	 	<a href="admin-dashboard.jsp" class="navbar-brand" style=" font-size: 34px; color: white; text-decoration: none;">Foody</a>
                             <button class="navbar-toggler" data-toggle="collapse" id="toggler-btn"  data-target="#navbarid">
                             	<span class="navbar-toggler-icon"></span>
                             </button>
                             
                              <div class="collapse navbar-collapse" id="navbarid">
                                   	 <ul class="navbar-nav text-center ml-auto">
	   	        	 	    	      
	   	        	 	    	       <li class="nav-item dropdown ">
                                           <button class="dropbtn2 ">Add Menu</button>
                                                 <div class="dropdown-menu dropdown-menu-left" id="myDropdown2"> 
                                                   <a class="dropdown-item "  href="add-breakfast-menu.jsp">BreakFast</a>  
                                                   <a class="dropdown-item" href="add-lunch-menu.jsp">Lunch</a>
                                                   <a class="dropdown-item "  href="add-dinner-menu.jsp">Dinner</a>
                                                 </div>
                                        </li>
                                       
	   	        	 	    	        <li class="nav-item dropdown ">
                                           <button class="dropbtn1">View Menu</button>
                                                 <div class="dropdown-menu dropdown-menu-left" id="myDropdown1"> 
                                                  <a class="dropdown-item "  href="view-breakfast.jsp">BreakFast</a>  
                                                   <a class="dropdown-item" href="view-lunch.jsp">Lunch</a>
                                                   <a class="dropdown-item "  href="view-dinner.jsp">Dinner</a>
                                                 </div>
                                        </li>
	   	        	 	    	    
                                        <li class="nav-item dropdown ">
                                           <button class="dropbtn" ><i class="fas fa-user-circle fa-fw"></i>  Account</button>
                                                 <div class="dropdown-menu dropdown-menu-left" id="myDropdown">
                                                      <a class="dropdown-item "  href="profile">Profile</a> 
                                                   <a class="dropdown-item "  href="changepassword.jsp">Change Password</a> 
                                                   <a class="dropdown-item" href="logout.jsp">Logout</a>  
                                                 </div>
                                        </li>
	   	        	 	             </ul>
                              </div>
	   	        	 	   
	   	        	 </div>
	   	        </nav> 
	   	        
 <script type="text/javascript">
	
	$('document').ready(function(){
          
           $('#toggler-btn').click(function(){
                
                 $('#navbarid').toggle();

           });
           
           $('.dropbtn').click(function(){
                 $('#myDropdown').toggle();
           });
           $('.dropbtn1').click(function(){
                 $('#myDropdown1').toggle();
           });
           $('.dropbtn2').click(function(){
               $('#myDropdown2').toggle();
         });
           $('.dropbtn3').click(function(){
               $('#myDropdown3').toggle();
         });

 
	});

</script>