//Nina Huczko
//Period 2
//23 January 2017
//This program imitates the way bacteria are attracted to a food source by drawing ellipses that follow that mouse.
Bacteria[] dots;
 void setup()   
 {     
   size(500,500);
   dots = new Bacteria[20];
   for(int i = 0; i < dots.length; i++){
     dots[i] = new Bacteria();
   }
 }   
 void draw()   
 {  
  background(0);
  for(int i = 0; i < dots.length; i++){
   dots[i].show();
   dots[i].moveBacteria();
  } 
 }  
 class Bacteria    
 {     
   int myX, myY, aX, aY;
   
   Bacteria()
   {
     myX = 250;
     myY = 250;
   }
   
   void show()
   {
     ellipse(myX, myY, 10, 10);
     fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
   }
   
   public void moveBacteria()
   {
     if(mouseX > myX){
       aX = 0;
     }
     if(mouseY > myY){
       aY = 0;
     }
     if(mouseX < myX){
       aX = 3;
     }
     if(mouseY < myY){
     aY = 3;
     }
     myX = myX + (int)(Math.random()*4)-aX;
     myY = myY + (int)(Math.random()*4)-aY;
     
     if(mousePressed == true)
     {
       myX = mouseX;
       myY = mouseY;
     }
   }  
 }  
