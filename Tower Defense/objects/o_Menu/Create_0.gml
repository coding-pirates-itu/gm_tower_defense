// Expects property `owner`,
// that will be called upon clicking a button.
function Action(name, price)
{
    if (o_GameController.Money >= price)
    {
        if (instance_exists(owner))
        {
            owner.MenuAction(name);
            o_GameController.Money -= price;
        }
        instance_destroy();
    }
}

menu = noone;