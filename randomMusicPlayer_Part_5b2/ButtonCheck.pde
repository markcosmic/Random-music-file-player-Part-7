void buttCheck(int _i){
  switch(_i){
    case 0:
      if(song != null && song.isPlaying()){
        song.close();
      }
      fileSelectedYet = started = paused = false;
      nowPlaying = "";
      songsPlayed.clear();
      frameCount = -1;    
      selectInput("Lists must be in the same folder as the music on the list:",
                  "fileSelected", dataFile("..:*.txt"));
      break;
    case 1:
      started = true;
      paused = false;
      butt[2].label = "Pause"; 
      if(fileSelectedYet){
        loadSong();
      }
      break;
    case 2:
      if(nowPlaying != ""){
        if(song.isPlaying()){
          song.pause();
          paused = true;
          butt[_i].label = "Play";
        }else{
          song.play();
          paused =false;
          butt[_i].label = "Pause"; 
        }
      }
      break;
    case 3:
      repeat = !repeat;
      butt[_i].label = "Off";
      if(repeat){
        butt[_i].label = "On";      
      }
      break;
    case 4:
      butt[4].trigger = false;
      doExit = true;
  }
}
