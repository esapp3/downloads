float x = 30;
float y = 420;
float w = 65;
float h = 50;
float rand = random(6, 12);

int num = 90;
float xArray[] = new float[num];
float yArray[] = new float[num];

float changeX =0;
float changeY =0;

void setup() {
      size(500, 500, P3D);
     //background(0, 0, 102);  
}

void draw() {
       background(0, 0, 102);
       noStroke();
        
       //camera
        fill(114, 114, 119);
        rect(x, y, w, h);
        
        
        //more camera
        fill(200, 200, 200);
        ellipse(62, 445, 40, 40);
        
        fill(0, 0, 0);
        ellipse(62, 445, 27, 27);
        
        fill(200, 168, 17);
        rect(85, 425, 8, 8);
        
        //text
        fill(255, 255, 255);
        textSize(12);
        text("Take A Picture!", 25, 410);
       
        phoneLines(mouseX, mouseY);
        
        if (keyPressed) {
            if(key == 'p' || key == 'P' || key == 'c' || key == 'C') {
                fill(255, 255, 255);
                lights();
                save("picture.png");
                System.out.println("picture taken!");
                System.out.println("check sketch >> show sketch folder");
                flash();
            }
        }
           
}

void flash() {
    int i = 0;
    fill(255, 215, 68);
    ellipse(62, 445, changeX, changeY);
    while(i<5500){
        changeX += 10;
        changeY += 10;
        i += 10;
    }
    
}

void phoneLines(float x, float y) {
    
      int trail = frameCount % num;
      xArray[trail] = x;
      yArray[trail] = y;
      
      for (int i = 0; i < num; i++) {
          int fin = (trail +1 + i) % num;
          if(mousePressed) {
              fill(255, 255, 255);
          }
          else {
              fill(255,255,255, 85);
          } 
          ellipse(xArray[fin], yArray[fin], i/2, i/2);
      }
      
    }


