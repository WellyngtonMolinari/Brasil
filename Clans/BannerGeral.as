//aaaa

void onInit(CBlob@ this)
{
	this.Tag("builder always hit");
	this.getSprite().SetZ(-5.00f);
    this.server_setTeamNum(-1);
}

void onTick(CBlob@ this)
{
    if (isClient())
    {
        if (this.getTicksToDie() < 120)
        {
            if (this.exists("clanData"))
            {
                CSprite@ s = this.getSprite();
                s.ReloadSprite(this.get_string("clanData")+ ".png");
				s.SetZ(-5.00f);
                this.doTickScripts = false;
            }
        }
        else
        {
            this.doTickScripts = false;
        }
    }
}


bool canBePickedUp( CBlob@ this, CBlob@ byBlob )
{
    return false;
}