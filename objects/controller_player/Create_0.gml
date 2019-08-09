enum pState {
	idle, //0
	run, //1
	jump, //2
	fall, //3
	dash_low, //4
	dash_mid, //5
	dash_high //6
};

enum collisionType {
	none, //Do nothing
	block //Regular ground
}

collisionID = "";

//Block-type collision
collisionBlock = ds_list_create();
ds_list_add(collisionBlock, "obj_block");
ds_list_add(collisionBlock, "enemyShelledNewt");