package  {
	
	import flash.display.MovieClip;
	
	
	public class Tower2 extends Tower1 {
		
		
		public function Tower2(x:Number, y:Number) {
			super(x,y);
			soundShot = new SoundAK74;
			bulletSpeed = 50;
			reloadTime = 55;
			disorder = 0.01
			//parent::Tower1();
		}
	}
	
}
