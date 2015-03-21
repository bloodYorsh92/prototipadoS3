package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import XXXNoScope360HeadShot.loader.XXXLoader;
	
	/**
	 * ...
	 * @author Yorsh
	 */
	public class villian extends Sprite 
	{
		private var skin:Sprite;
		
		public function villian() 
		{
			super();
			addEventListener(Event.ADDED_TO_STAGE, added);
		}
		
		private function added(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, added);
			var b:Class= XXXLoader.getAsset("villian");
			skin = new b();
			addChild(skin);
		}
		
	}

}