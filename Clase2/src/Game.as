package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import XXXNoScope360HeadShot.inputs.XXXKeyboard;
	
	/**
	 * ...
	 * @author Yorsh
	 */
	public class Game extends Sprite 
	{
		private var hero:Hero;
		private var vilano:villian;
		
		
		public function Game() 
		{
			super();
			addEventListener(Event.ADDED_TO_STAGE, added);
		}
		
		private function added(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, added);
			hero = new Hero();
			addChild(hero);
			vilano = new villian();
			addChild(vilano);
			
			XXXKeyboard.init(stage);
			stage.addEventListener(Event.ENTER_FRAME, onLoop);
			
		}
		
		private function onLoop(e:Event):void 
		{
			hero.update();
		}
		
		
		
	}

}