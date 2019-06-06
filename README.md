# myFinalProject
# CartersPingPong, Allow players to play a single player ping pong game

   My project is a single player ping pong game. To start, the player can click anywhere on the screen and cause the ball to spawn. The player can also spawn multiple balls in their game, if they would like to. They can also move their paddle up or down if they would like to make the game easier or more challenging. when the ball finally passes the player, they will recieve their final score. if they would like, they can click again and 

### Difficulties or opportunities you encountered along the way.

   The toughest part was probably getting the ball to bounce off the walls and the paddles. At first I wasn't sure how to get it to work, but eventually I figured out that the ball just had to move in the opposite direction, until is bounced off the boarders, or the paddle. 

### Most interesting piece of your code and explanation for what it does.

```Java
if (x>1180 && y<mb1L) {
      xspeed+=velocity;
      yspeed+=velocity;
      xspeed*=-1;
      count++;
    } else if (x<25 && y<mb2L) {
      xspeed+=velocity;
      yspeed+=velocity;
      xspeed*=-1;
      count++;
    } else if(y>=yPos2-20 && y<=yPos2+10 && x>=xPos2 && x<=xPos2+200){
      xspeed+=velocity;
      yspeed+=velocity;
      yspeed*=-1;
    }else if(y<=yPos1+50 && y>=yPos1-10 && x>=xPos1 && x<=xPos1+1200){
      xspeed+=velocity;
      yspeed+=velocity;
      yspeed*=-1;
      count++;
    }else if(y>mb1L && y>mb2L){
      text("     YOU LOSE \n YOUR SCORE: " + count, 600, 350);
    }
```
   This is the code that I struggled with for the longs=est time. This code makes it so that any time the ball bounces off the boarder, a point is awarded, and the ball bounces in a different direction. It also allows for the player to make the ball bounce when the paddle hits the ball. However, the player does not get a point when there paddle hist the ball. It also checke whether or not the player has lost yet, and when they lose it will display "YOU LOSE" and their score.

## Built With
 [Processing](https://processing.org/) - The IDE used

## Authors
*Carter Everts

## Acknowledgments
* Hat tip to anyone whose code was used, especially CodeRepo

