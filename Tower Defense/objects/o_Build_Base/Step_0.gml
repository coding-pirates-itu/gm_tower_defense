if (anim_inst == noone)
{
    // Only here x and y are correct
    anim_id = layer_sequence_create("UI", x, y, sequence);
    anim_inst = layer_sequence_get_instance(anim_id);
}

if (!anim_inst.paused)
{
    var pos = anim_inst.headPosition;
    if (anim_inst.headDirection == seqdir_right && pos >= seq_stop ||
        anim_inst.headDirection == seqdir_left && pos <= seq_stop)
    {
        anim_inst.headPosition = seq_stop;
        anim_inst.headDirection = seqdir_right;
        layer_sequence_pause(anim_id);
    }
}