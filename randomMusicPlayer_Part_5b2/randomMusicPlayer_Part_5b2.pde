import ddf.minim.*;
Minim minim;
AudioPlayer song;
String[] songNames;
String nowPlaying, fileName, folderName, listName;
int index, rowLoc, ms;
color c1, c2;
float barLength, barHeight, songPos, wave1H, wave2H;
boolean started, fileSelectedYet, mc, paused, repeat, doExit;
ArrayList<String> songsPlayed = new ArrayList();
Button[] butt;

void setup(){
  surface.setLocation(0, 0);
  surface.setResizable(true);
  size(800, 600);
  windowRatio(800, 600);
  minim = new Minim(this);
  nowPlaying = "";
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  rectMode(CENTER);
  init();
}

void draw(){
  background(0);
  for(int i = 0; i < butt.length; i++){
    if(!fileSelectedYet && i == 0 || fileSelectedYet || i == 4){
    butt[i].update(i);
    butt[i].display(i);
    }
  }
  fill(255);
  if(!fileSelectedYet){
    textSize(rwidth/25);
    text("Lists must be in the same folder\nas the music on the list", rwidth/2, rheight/3);
  }else{
    fill(255);
    textSize(rwidth/25);
    text(songNames.length + " Songs in " + listName, rwidth/2, rheight / 4); 
    textSize(rwidth/23);
    text("NOW PLAYING: \n" + nowPlaying, rwidth/2, rheight/2.7);
    if(song != null){
      if(started && !song.isPlaying() && !paused){
        loadSong();
      }
      if(started){
        songBar();
        waveForm();
      }
      if(songNames.length == songsPlayed.size() && !song.isPlaying()){
        if(!repeat){
          fileSelectedYet = started = false;
        }
        songsPlayed.clear();
      }
    }
  }
}
