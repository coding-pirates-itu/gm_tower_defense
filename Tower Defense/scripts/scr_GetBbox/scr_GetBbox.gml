/// @desc Determine the bounding box of the given icon in the given sequence
/// @param {struct} sequence Sequence instance
/// @param {Asset} iconAsset Icon type to look for
/// @return {struct} Bounding box
function GetBbox(sequence, iconAsset)
{
    var tracks = sequence.activeTracks;
    var count  = array_length(tracks);
    var seqX = layer_sequence_get_x(sequence.elementID);
    var seqY = layer_sequence_get_y(sequence.elementID);

    for (var i = 0; i < count; i++)
    {
        var t = tracks[i];

        if (t.spriteIndex == iconAsset)
        {
            return {
                left   : seqX + t.posx,
                top    : seqY + t.posy,
                right  : seqX + t.posx + sprite_get_width(iconAsset),
                bottom : seqY + t.posy + sprite_get_height(iconAsset)
            };
        }
    }

    return undefined;
}