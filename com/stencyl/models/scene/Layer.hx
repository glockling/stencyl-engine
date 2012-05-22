package com.stencyl.models.scene;

import nme.display.Sprite;
import nme.geom.ColorTransform;

import nme.display.Bitmap;
import nme.display.BitmapData;

class Layer extends Sprite
{
	private var tiles:TileLayer;
	
	public var ID:Int;
	public var order:Int;
	public var color:Int;
	
	public var customDrawing:Bitmap;
	public var canvas:BitmapData;
	
	public function new(ID:Int, order:Int, tiles:TileLayer)
	{
		super();
		
		this.tiles = tiles;
		this.ID = ID;
		this.order = order;

		//scrollFactor.x = 0;
		//scrollFactor.y = 0;
		
		//alpha = 255;
		//color = 0x00ffffff;
		
		canvas = new BitmapData(Engine.screenWidth, Engine.screenHeight);
		customDrawing = new Bitmap(canvas);
		
		//addChild(customDrawing);
	}
}