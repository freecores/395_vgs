#include <system.h>
#include "gpu_pic.h"

#pragma CLOCK_FREQ 50000000						//required for accurate delay functionality
//#pragma DATA 0x2007, 0x3F3A						//Configuration bits to prevent having to configure in programmer

void main( void )
{
	//Configure port A
	adcon1 = 0x07;								//disable analog inputs
	trisa = 00000000b;
	//Configure port B
	trisb = 0x00;
	//Configure port C
	trisc = 10000000b;

	//Initialize port A
	porta = 0x00;
	//Initialize port B
	portb = 0x00;
	//Initialize port C
	portc = 0x00;

	//wait for GPU to get ready
	//START OF REAL PROGRAM--------------------------------------------

	char i = 0;
	char j = 0;

	delay_s(3);
		
	//Endless loop
	while( 1 )
	{	
		//initalize graphics to original settings
		Bitmap neogeo;
			neogeo.address = 0x00012C00;
			neogeo.lines = 0x00F0;
			neogeo.width = 0x0000;
		
		Bitmap black;
			black.address = 0x0001C200;
			black.lines = 0x00F0;
			black.width = 0x00A0;

		Sprite near_future;
			near_future.image.address = 0x00025800;
			near_future.image.lines = 0x000B;
			near_future.image.width = 0x00A0;
			near_future.position.x = 0;
			near_future.position.y = 63;
			near_future.alpha = 0;
	
		Sprite eye_anim;
			eye_anim.image.address = 0x00026CA0;
			eye_anim.image.lines = 0x001B;
			eye_anim.image.width = 0x001F;
			eye_anim.position.x = 14;
			eye_anim.position.y = 135;
			eye_anim.alpha = 0;
		
		Sprite eye_mask;
			eye_mask.image.address = 0x0001C200;
			eye_mask.image.lines = 0x001B;
			eye_mask.image.width = 0x001F;
			eye_mask.position.x = 14;
			eye_mask.position.y = 135;
			eye_mask.alpha = 0;
				
		Sprite compass;
			compass.image.address = 0x00029A40;
			compass.image.lines = 0x0006;
			compass.image.width = 0x002D;
			compass.position.x = 51;
			compass.position.y = 134;
			compass.alpha = 0;
	
		Sprite lines;
			lines.image.address = 0x00029E00;
			lines.image.lines = 0x001A;
			lines.image.width = 0x004F;
			lines.position.x = 73;
			lines.position.y = 76;
			lines.alpha = 0;
	
		Sprite bars;
			bars.image.address = 0x0002AE94;
			bars.image.lines = 15;
			bars.image.width = 0x002F;
			bars.position.x = 10;
			bars.position.y = 81;
			bars.alpha = 0;

		Sprite outline;
			outline.image.address = 0x00027D80;
			outline.image.lines = 46;
			outline.image.width = 43;
			outline.position.x = 27;
			outline.position.y = 130;
			outline.alpha = 1;
			
		//scroll neo geo logo
		for (i = 0; i < 160; i++)
		{
			drawtobackground(neogeo);
			delay_ms(10);
			neogeo.width += 1;
		}
		delay_s(3);
		//fade in introduction text
		drawtobackground(black);
		delay_s(2);
		drawsprite(near_future);
		delay_ms(255);
		near_future.image.address = 0X00025EE0;
		drawtobackground(black);
		drawsprite(near_future);
		delay_ms(255);
		near_future.image.address = 0X000265C0;
		drawtobackground(black);
		drawsprite(near_future);
		delay_s(2);
		//black screen - dramatic pause
		drawtobackground(black);
		delay_s(2);
		//draw eye open animation
		for (i = 0; i < 5; i++)
		{
			drawsprite(eye_mask);
			drawsprite(eye_anim);
			eye_anim.image.address += 0x00000020;
			delay_ms(100);
		}
		//draw and animate compass
		j = 30;
		for ( i = 0; i < 5; i++)//slow down
		{
			drawsprite(compass);//1
			compass.image.address += 0x0000002E;
			delay_ms(j);
			drawsprite(compass);//2
			compass.image.address += 0x0000002E;
			delay_ms(j);
			drawsprite(compass);//3
			compass.image.address -= 0x0000005C;	
			delay_ms(j);
			j+= 15;
		}
		j=20;
		for ( i = 0; i < 5; i++)//reverse
		{
			compass.image.address += 0x0000005C;
			drawsprite(compass);//3
			compass.image.address -= 0x0000002E;
			delay_ms(j);
			drawsprite(compass);//2
			compass.image.address -= 0x0000002E;
			delay_ms(j);
			drawsprite(compass);//1
			delay_ms(j);
			j+= 15;
		}
		j=150;
		for ( i = 0; i < 3; i++)//speed up
		{
			drawsprite(compass);//1
			compass.image.address += 0x0000002E;
			delay_ms(j);
			drawsprite(compass);//2
			compass.image.address += 0x0000002E;
			delay_ms(j);
			drawsprite(compass);//3
			compass.image.address -= 0x0000005C;	
			delay_ms(j);
			j-= 60;
		}
		drawsprite (lines);
		drawsprite (bars);
	
		j=10;
		for ( i = 0; i < 2; i++)//slow down
		{
			drawsprite(compass);
			compass.image.address += 0x0000002E;
			delay_ms(j);
			drawsprite(compass);//2
			compass.image.address += 0x0000002E;
			delay_ms(j);
			drawsprite(compass);//3
			compass.image.address -= 0x0000005C;	
			delay_ms(j);
			j+= 40;
		}

		lines.image.address = 0x00029E50;
		lines.image.width = 0x004B;
		bars.image.address += 0x00000960;
		bars.image.width = 0x0035;
		drawsprite (lines);
		drawsprite (bars);
		
		drawsprite(compass);
		compass.image.address += 0x0000002E;
		delay_ms(j);
		drawsprite(compass);//2
		compass.image.address += 0x0000002E;
		delay_ms(j);
		drawsprite(compass);//3
		compass.image.address -= 0x0000005C;	
		delay_ms(j);
		j+= 40;

		lines.image.address = 0x0002AE40;
		lines.image.width = 0x0053;
		bars.image.address += 0x0000960;
		drawsprite (lines);
		drawsprite (bars);
	
		drawsprite(compass);
		compass.image.address += 0x0000002E;
		delay_ms(j);
		drawsprite(compass);//2
		compass.image.address += 0x0000002E;
		delay_ms(j);
		drawsprite(compass);//3
		compass.image.address -= 0x0000005C;	
		delay_ms(j);
	
		lines.image.address = 0x0002BE80;
		bars.image.address += 0x00000961;
		bars.image.width = 0x0036;
		drawsprite (lines);
		drawsprite (bars);
		delay_ms(200);

		lines.image.address = 0x0002CEC0;
		lines.image.lines = 32;
		lines.image.width = 84;
		lines.position.x = 72;
		lines.position.y = 75;
		bars.image.address += 0x00000960;
		drawsprite (bars);	
		drawsprite (lines);
		delay_ms(50);
		bars.image.address = 0x000713E0;
		bars.image.lines = 21;
		bars.image.width = 62;
		bars.position.x = 4;
		bars.position.y = 80;
		drawsprite (bars);
		drawsprite (lines);
		
		//glitch stuff up
		for (i = 0; i < 50; i++)
		{
			bars.image.address = 0x000713E0;
			lines.image.address = 0x000821E0;
			drawsprite(bars);
			drawsprite (lines);
			delay_ms(5);
			bars.image.address = 0x000706C0;
			lines.image.address = 0x0002CEC0;
			drawsprite(bars);
			drawsprite (lines);
			delay_ms(5);			
		}	

		//draw overlay

		drawsprite (outline);		

		for (i = 0; i < 30; i++)
		{
			bars.image.address = 0x000713E0;
			lines.image.address = 0x000821E0;
			drawsprite(bars);
			drawsprite (lines);
			delay_ms(5);
			bars.image.address = 0x000706C0;
			lines.image.address = 0x0002CEC0;
			drawsprite(bars);
			drawsprite (lines);
			delay_ms(5);			
		}		

		//draw eye close animation with overlay
		eye_anim.image.address = 0x00026D20;
		for (i = 0; i < 5; i++)
		{
			drawsprite(eye_mask);			
			drawsprite(eye_anim);
			drawsprite(outline);
			eye_anim.image.address -= 0x00000020;
			delay_ms(50);
		}
		//draw eye open with overlay
		eye_anim.image.address = 0x00026CA0;
		for (i = 0; i < 5; i++)
		{
			drawsprite(eye_mask);
			drawsprite(eye_anim);
			drawsprite(outline);
			eye_anim.image.address += 0x00000020;
			delay_ms(50);
		}
	
		delay_ms(255);
		//draw rest of overlay
		drawsprite(eye_mask);
		outline.position.x = 24;
		outline.image.address = 0x00027DAB;
		outline.image.width = 46;
		drawsprite(outline);
		drawsprite(compass);
		delay_ms(200);
		outline.image.address = 0x00027DD9;
		outline.image.width = 60;
		drawsprite(outline);
		drawsprite(compass);
		//final halt
		delay_s(10);
	}
}
