// Expects property `owner`,
// that will be called upon clicking a button.
menuId = layer_sequence_create("UI", x, y, seq_BuildMenu);
menu = layer_sequence_get_instance(menuId);
menu.owner = id;


function Action(name, price)
{
    owner.MenuAction(name);
    o_GameController.Money -= price;
    instance_destroy();
}