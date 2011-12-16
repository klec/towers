package  {
	
	import flash.display.MovieClip;
	
	
	public class Bullet extends MovieClip {
		
		public var speedX:Number = 0;
		public var speedY:Number = 0;
		
		public function Bullet(x:Number, y:Number, alfa:Number, speed:Number) {
			speedX = Math.cos(alfa)*speed;
			speedY = Math.sin(alfa)*speed;
			this.x = x+speedX;
			this.y = y+speedY;
		}
		
		public function move(target:Tower1):Boolean {
			this.x +=speedX;
			this.y +=speedY;
			
			if ((this.x>320)||(this.x<0)||(this.y>480)||(this.y<0)){
				stage.removeChild(this);
				delete(this);
				return false;
			}
			if (checkHit(target)){
				stage.removeChild(this);
				delete(this);
				return false;
			}
			return true;
		}
		
		public function checkHit(target:Tower1):Boolean {
			if(target == null) return false;
			if (((Math.abs(target.x-x)<15)&&(Math.abs(target.y-y)<15))
			||  ((Math.abs(target.x-x-speedX/2)<15)&&(Math.abs(target.y-y-speedY/2)<15)))
				{
				target.getHit(speedX,speedY);
				return true;
			}
			
			return false;
		}
	}
	
}
