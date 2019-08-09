///@param {str} collisionID The ID of the object that was collided

ds_list_find_index(collisionBlock, collisionID);

switch(collisionID)
{
	case obj_block:
		return collisionType.block;
		break;
	case enemyShelledNewt:
		return collisionType.block;
		break;
	default:
		return collisionType.none;
		break;
}