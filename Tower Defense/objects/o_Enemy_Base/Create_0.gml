hp = Lives;

function TakeDamage(damage)
{
    hp -= damage;
    if (hp <= 0)
    {
        o_GameController.Money += Prize;
        instance_destroy();
    }
}