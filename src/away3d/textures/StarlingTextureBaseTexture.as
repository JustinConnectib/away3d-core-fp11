package away3d.textures {
	import away3d.textures.Texture2DBase;
	import flash.display3D.Context3D;
	import flash.display3D.textures.TextureBase;
	import starling.textures.Texture;
	
	//  http://forum.starling-framework.org/topic/starling-texture-in-away3d
	public class StarlingTexture2DBase extends Texture2DBase
	{
	 
	   /**A reference to a Starling texture previously created*/
	   private var mStarlingTexture:Texture;
		
	   public function getStarlingTexture(): Texture {
			return mStarlingTexture;
	   }
	   /**
		* CONSTRUCTOR
		* */
	   public function StarlingTexture2DBase( starlingTexture: starling.textures.Texture )
	   {
			//Set the starling texture base
			mStarlingTexture = starlingTexture;
	 
			super();
	   }
		

	   override protected function createTexture(context:Context3D):TextureBase
	   {
			return mStarlingTexture.base;
	   }
	 
	   override protected function uploadContent(texture:TextureBase):void
	   {
		//Left blank intentionally
	   }
	}

}
