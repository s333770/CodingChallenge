float[] values; 

int i=0;
int j=0;
void setup(){
  fullScreen();
  //size(800,800);
  values=new float[width];
  for(int i=0; i<values.length; i++){
    values[i]=random(height); 
  }
   //values=sort(values);
   
  //for(int i=0; i<values.length;i++){
    //for(int j=0; j<values.length-i-1; j++){
   
  //}
 //}
  
}

void draw(){
  background(0);
  //Do this once
  
    if(i<values.length){
      for(int j=0; j<values.length-i-1; j++){
         float a=values[j];
          float b=values[j+1];
    if(a>b){
      swap(values,j,j+1);
    }
      }
    }
    else{
    println("finished");
    noLoop();
    }
    i++;
    

  for(int i=0; i<values.length; i++){
    stroke(255);
    line(i,height, i, height-values[i]);
  }
}

void swap(float[] arr, int a, int b){
  float temp=arr[a]; 
  arr[a]=arr[b];
  arr[b]=temp;
}
