<html>
<head>
    <title>Contact Us</title>
     <link rel="Stylesheet" type="text/css" href="ContactUs.css">
 
    
</head>
 <body>
    <div class="contact-title">
           <h1>Say hello</h1>
           <h2>We are always ready to serve you!</h2>
    </div>
       
     <div class="contact-form">
            
            <form id="contact-form" method="post" action="Contacct_msg.php">
               <input name="name" type="text" class="form-control" placeholder="Your Name" required><br>
                
               <input name="email" type="email" class="form-control" placeholder="Your Email" required><br>
                
                <textarea name="message" class="form-control" placeholder="Messege" rows="4" required></textarea><br>
                
                <input type="submit" class="form-control submit" value="SEND MESSAGE">
            </form>
    
        </div>    
    </body>
</html>