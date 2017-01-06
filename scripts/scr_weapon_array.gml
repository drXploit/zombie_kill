///scr_weapon_array

/*
[i,0] = Name
[i,1] = Sprite index
[i,2] = Rate of fire
[i,3] = Ammo index
[i,4] = Muzzle offset (for bullet creation)
[i,5] = x offset (for gun placement)
[i,6] = y offset (for gun placement)
[i,7] = Ammo amount
[i,8] = Store image
[i,9] = Store price
[i,10] = Store quantity
[i,11] = Store description
[i,12] = Store name
[i,13] = UI image
*/

// Set up empty array
for (i = 0;i < global.weapons; i++)
{
    for (j = 0;j < 14; j++)
    {
        global.weapon_array[i,j] = 0;
    }
}


// [0] Survival Knife
global.weapon_array[0,0] = "Survival Knife"; // Name
global.weapon_array[0,1] = spr_knife; // Sprite index
global.weapon_array[0,2] = noone; // Rate of fire
global.weapon_array[0,3] = noone; //Ammo index
global.weapon_array[0,4] = noone; // Muzzle offset (for bullet creation)
global.weapon_array[0,5] = 0;  //x offset (for gun placement)
global.weapon_array[0,6] = -10; //y offset (for gun placement)
global.weapon_array[0,7] = noone; // Ammo amount
global.weapon_array[0,8] = noone; // Store image
global.weapon_array[0,9] = noone; // Store price
global.weapon_array[0,10] = noone; // Store quantity
global.weapon_array[0,11] = noone; // Store description
global.weapon_array[0,12] = noone; // Store name
global.weapon_array[0,13] = spr_ui_knife;

// [1] AK-47
global.weapon_array[1,0] = "AK-47"; // Name
global.weapon_array[1,1] = spr_machinegun; // Sprite index
global.weapon_array[1,2] = 7; // Rate of fire
global.weapon_array[1,3] = obj_machinegun_bullet; //Ammo index
global.weapon_array[1,4] = 47; // Muzzle offset (for bullet creation)
global.weapon_array[1,5] = 0;  //x offset (for gun placement)
global.weapon_array[1,6] = -15; //y offset (for gun placement)
global.weapon_array[1,7] = 50; // Ammo amount
global.weapon_array[1,8] = spr_store_bullets; // Store image
global.weapon_array[1,9] = 20; // Store price
global.weapon_array[1,10] = 50; // Store quantity
global.weapon_array[1,11] = "Speed: Fast#Damage: Medium"; // Store description
global.weapon_array[1,12] = "AK-47 Rounds"; // Store name
global.weapon_array[1,13] = spr_ui_ak47;

// [2] Bazooka
global.weapon_array[2,0] = "Bazooka"; // Name
global.weapon_array[2,1] = spr_bazooka; // Sprite index
global.weapon_array[2,2] = 90; // Rate of fire
global.weapon_array[2,3] = obj_bazooka_bullet; //Ammo index
global.weapon_array[2,4] = 40; // Muzzle offset (for bullet creation)
global.weapon_array[2,5] = 0;  //x offset (for gun placement)
global.weapon_array[2,6] = -15; //y offset (for gun placement)
global.weapon_array[2,7] = 5; // Ammo amount
global.weapon_array[2,8] = spr_store_missiles; // Store image
global.weapon_array[2,9] = 35; // Store price
global.weapon_array[2,10] = 10; // Store quantity
global.weapon_array[2,11] = "Speed: Slow#Damage: High"; // Store description
global.weapon_array[2,12] = "Bazooka Missiles"; // Store name
global.weapon_array[2,13] = spr_ui_bazooka;

// [3] Handgun
global.weapon_array[3,0] = "Handgun"; // Name
global.weapon_array[3,1] = spr_handgun; // Sprite index
global.weapon_array[3,2] = 20; // Rate of fire
global.weapon_array[3,3] = obj_handgun_bullet; //Ammo index
global.weapon_array[3,4] = 45; // Muzzle offset (for bullet creation)
global.weapon_array[3,5] = 0;  //x offset (for gun placement)
global.weapon_array[3,6] = -30; //y offset (for gun placement)
global.weapon_array[3,7] = 17; // Ammo amount
global.weapon_array[3,8] = spr_store_handgun_bullets; // Store image
global.weapon_array[3,9] = 45; // Store price
global.weapon_array[3,10] = 17; // Store quantity
global.weapon_array[3,11] = "Speed: Slow/Med#Damage: Med"; // Store description
global.weapon_array[3,12] = "Handgun Rounds"; // Store name
global.weapon_array[3,13] = spr_ui_handgun;

// [4] Shotgun
global.weapon_array[4,0] = "Shotgun"; // Name
global.weapon_array[4,1] = spr_shotgun; // Sprite index
global.weapon_array[4,2] = 30; // Rate of fire
global.weapon_array[4,3] = obj_shotgun_blast; //Ammo index
global.weapon_array[4,4] = 45; // Muzzle offset (for bullet creation)
global.weapon_array[4,5] = 0;  //x offset (for gun placement)
global.weapon_array[4,6] = -25; //y offset (for gun placement)
global.weapon_array[4,7] = 50; // Ammo amount
global.weapon_array[4,8] = spr_store_handgun_bullets; // Store image
global.weapon_array[4,9] = 75; // Store price
global.weapon_array[4,10] = 25; // Store quantity
global.weapon_array[4,11] = "Speed: Slow/Med#Damage: High"; // Store description
global.weapon_array[4,12] = "Shotgun Shells"; // Store name
global.weapon_array[4,13] = spr_ui_shotgun;


