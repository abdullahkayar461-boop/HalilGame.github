package;

import haxe.io.Bytes;
import haxe.io.Path;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

#if disable_preloader_assets
@:dox(hide) class ManifestResources {
	public static var preloadLibraries:Array<Dynamic>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;

	public static function init (config:Dynamic):Void {
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
	}
}
#else
@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

			if(!StringTools.endsWith (rootPath, "/")) {

				rootPath += "/";

			}

		}

		if (rootPath == null) {

			#if (ios || tvos || webassembly)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif (console || sys)
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		
		#end

		var data, manifest, library, bundle;

		data = '{"name":null,"assets":"aoy4:pathy27:assets%2Fimages%2Fbitik.pngy4:sizei3506197y4:typey5:IMAGEy2:idR1y7:preloadtgoR0y35:assets%2Fimages%2Fdovulmuspenny.pngR2i3010454R3R4R5R7R6tgoR0y27:assets%2Fimages%2Fhalil.pngR2i1155131R3R4R5R8R6tgoR0y34:assets%2Fimages%2Fnormal_penny.pngR2i393875R3R4R5R9R6tgoR0y26:assets%2Fimages%2Fsopa.pngR2i1340731R3R4R5R10R6tgoR0y28:assets%2Fimages%2Fyumruk.pngR2i17629R3R4R5R11R6tgoR2i32023R3y5:SOUNDR5y27:assets%2Fsounds%2Ffahhh.MP3y9:pathGroupaR13hR6tgoR2i50205R3R12R5y34:assets%2Fsounds%2Fpiciminpici1.MP3R14aR15hR6tgoR2i15096R3R12R5y29:assets%2Fsounds%2Fsopases.MP3R14aR16hR6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

	}


}

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_bitik_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dovulmuspenny_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_halil_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_normal_penny_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_sopa_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_yumruk_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_fahhh_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_piciminpici1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_sopases_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:image("assets/images/bitik.png") @:noCompletion #if display private #end class __ASSET__assets_images_bitik_png extends lime.graphics.Image {}
@:keep @:image("assets/images/dovulmuspenny.png") @:noCompletion #if display private #end class __ASSET__assets_images_dovulmuspenny_png extends lime.graphics.Image {}
@:keep @:image("assets/images/halil.png") @:noCompletion #if display private #end class __ASSET__assets_images_halil_png extends lime.graphics.Image {}
@:keep @:image("assets/images/normal_penny.png") @:noCompletion #if display private #end class __ASSET__assets_images_normal_penny_png extends lime.graphics.Image {}
@:keep @:image("assets/images/sopa.png") @:noCompletion #if display private #end class __ASSET__assets_images_sopa_png extends lime.graphics.Image {}
@:keep @:image("assets/images/yumruk.png") @:noCompletion #if display private #end class __ASSET__assets_images_yumruk_png extends lime.graphics.Image {}
@:keep @:file("assets/sounds/fahhh.MP3") @:noCompletion #if display private #end class __ASSET__assets_sounds_fahhh_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/piciminpici1.MP3") @:noCompletion #if display private #end class __ASSET__assets_sounds_piciminpici1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/sopases.MP3") @:noCompletion #if display private #end class __ASSET__assets_sounds_sopases_mp3 extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else



#end

#if (openfl && !flash)

#if html5

#else

#end

#end
#end

#end