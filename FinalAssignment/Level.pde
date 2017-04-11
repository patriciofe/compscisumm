class Level
{
  Platform[] platformList; //                     platformList - list of all platforms in the game
  color bgColor;           //                          bgColor - colour of the background
  int startX, startY, checkpointX, checkpointY; //      startX - starting x-coordinate of character
                                                //      startY - starting y-coordinate
                                                // checkpointX - starting x-coordinate after reaching checkpoint
                                                // checkpointY - starting y-coordinate after reaching checkpoint
  
  Level (int startX, int startY, int checkpointX, int checkpointY, Platform[] platformList, color bgColor)
  {
    this.startX = startX;
    this.startY = startY;
    this.checkpointX = checkpointX;
    this.checkpointY = checkpointY;
    this.platformList = new Platform[platformList.length];
    for (int i = 0; i < platformList.length; i++)
    {
      this.platformList[i] = platformList[i];
    }
    this.bgColor = bgColor;
  }
  
  Level (int startX, int startY, Platform[] platformList, color bgColor) // Shorter constructor
  {
    this(startX, startY, startX, startY, platformList, bgColor);
  }
  
  void display ()  // Display all platforms in the level
  {
    background(bgColor);
    for (int i = 0; i < platformList.length; i++)
    {
      platformList[i].display();
    }
  }
  
  void start ()  // Resets character position and level scrolling
  {
    q.x = startX;
    q.y = startY;
    scrollFactor = 0;
  }
}