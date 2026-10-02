/// @description Insert description here
// You can write your code in this editor
if(text == "You can enter other places, open chests to get weapons or potions"){//used to tell which npc you spoke too since the text you get will be different
	draw_sprite_ext(spr_text_box,0,x,y,2,1,0,c_white,1);//changes the x scale of the textbox if ite needs to be bigger
	draw_text(x+515,y+175,text)
	draw_text(x+630,y+200,text2)//second line of text
	draw_text(x+515,y+220,text4);
}else{
	draw_sprite(spr_text_box, 0, x,y);
	draw_set_color(c_white);
	draw_text(x+280,y+165,text)
	draw_text(x+280,y+185,text2)//second line of text
	draw_text(x+260,y+205,text3);
	draw_text(x+280,y+225,text4);
}



