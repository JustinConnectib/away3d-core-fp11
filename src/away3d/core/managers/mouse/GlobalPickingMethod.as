package away3d.core.managers.mouse
{
	public class GlobalPickingMethod
	{
		public static const GPU:Mouse3DManager = new ShaderMouse3DManager();
		public static const CPU:Mouse3DManager = new RayMouse3DManager( false );
		public static const CPU_1:Mouse3DManager = new RayMouse3DManager( true );
	}
}