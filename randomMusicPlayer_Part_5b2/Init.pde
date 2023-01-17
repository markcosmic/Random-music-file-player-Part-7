void init(){
  started = false;
  barLength = rwidth/1.5;
  barHeight = rheight/15;
  wave1H = rheight/1.5;
  wave2H = rheight/1.15;
  rowLoc = int(rheight / 8.5);
  butt = new Button[5];
  c1 = color(0,175,0);
  c2 = color(0,255,0);
  butt[0] = new Button("image", false, "Select", rwidth/8, rowLoc, rwidth/6, rheight/9, c1, c2);
  c1 = color(0,200,200);
  c2 = color(0,255,200);
  butt[1] = new Button("rect", false, "Next", rwidth/3, rowLoc, rwidth/8, rheight/12, c1, c2);
  c1 = color(100,0,255);
  c2 = color(0,0,255);
  butt[2] = new Button("image", true, "pause", rwidth/2, rowLoc, rwidth/8, rheight/12, c1, c2);
  c1 = color(255,0,0);
  c2 = color(0,200,0);
  butt[3] = new Button("circle", true, "Off", int(rwidth*.75), rowLoc, rwidth/18, rwidth/18, c1, c2);
  c1 = color(175,0,0);
  c2 = color(255,200,0);
  butt[4] = new Button("rect", false, "Exit", int(rwidth * .85), rowLoc, rwidth/10, rheight/12, c1, c2);
}
