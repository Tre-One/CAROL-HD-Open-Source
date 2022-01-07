package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;


	public var iconScale:Float = 1;
	public var iconSize:Float;
	public var defualtIconScale:Float = 1;

	var pixelIcons:Array<String> = ["bf-pixel", "senpai", "senpai-angry", "spirit"];

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{

		super();
		//if(Config.betterIcons){
			loadGraphic(Paths.image('iconGridHD'), true, 500, 500);

			animation.add('bf', [0, 1, 0], 0, false, isPlayer);
			animation.add('bf-christmas', [0, 1, 0], 0, false, isPlayer);
			animation.add('bf-christmas-depressed', [0, 1, 0], 0, false, isPlayer);
			animation.add('bf-date', [0, 1, 0], 0, false, isPlayer);
			animation.add('bf-spooky', [0, 1, 0], 0, false, isPlayer);
			animation.add('bf-run', [0, 1, 0], 0, false, isPlayer);
			animation.add('bf-car', [0, 1, 0], 0, false, isPlayer);
			animation.add('bf-milf', [0, 1, 0], 0, false, isPlayer);
			animation.add('mom', [15, 16, 17], 0, false, isPlayer);
			animation.add('mom-car', [15, 16, 17], 0, false, isPlayer);
			animation.add('mom-car-horny', [18,19,20], 0, false, isPlayer);
			animation.add('spooky', [5, 6, 13], 0, false, isPlayer);
			animation.add('pico', [7, 8, 14], 0, false, isPlayer);
			animation.add('dad', [2, 3, 4], 0, false, isPlayer);
			animation.add('SHAKEYDAD', [2, 3, 4], 0, false, isPlayer);
			animation.add('monster', [10, 11, 12], 0, false, isPlayer);
			animation.add('monster-christmas', [10, 11, 12], 0, false, isPlayer);
			animation.add('gf', [9, 9, 9], 0, false, isPlayer);
			animation.add('sonic', [24, 25, 26], 0, false, isPlayer);
			animation.add('sonic-run', [24, 25, 26], 0, false, isPlayer);
			animation.add('super-sonic', [24, 25, 26], 0, false, isPlayer);
			animation.add('bf-sonic', [24, 25, 26], 0, false, isPlayer);
			animation.add('omochao', [27, 28, 27], 0, false, isPlayer);
			animation.add('gf-date', [9, 9, 9], 0, false, isPlayer);
			animation.add('gf-car', [9, 9, 9], 0, false, isPlayer);
			animation.add('parents-christmas', [21, 22, 23], 0, false, isPlayer);
			animation.add('carol', [27, 28, 27], 0, false, isPlayer);
			animation.add('hellchart-carol', [29, 30, 29], 0, false, isPlayer);
		
			antialiasing = true;
			updateHitbox();

			defualtIconScale = 0.25;
		//}
		
		antialiasing = !pixelIcons.contains(char);
		animation.play(char);
		scrollFactor.set();

		iconScale = defualtIconScale;
		iconSize = width;
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		setGraphicSize(Std.int(iconSize * iconScale));
		updateHitbox();

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}