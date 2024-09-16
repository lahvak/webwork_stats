# SVGDiagrams.pl

sub _init_SVGDiagrams {

 #Possibly add initialization code here
 #sub routine is not required, but prevents the macro from being re-loaded

}


sub BinaryTree {
    my $label1 = shift;
    my $root = 20;
    my $branch1 = 20;
    my $branch1end = $root + $branch1;
    my $pos1 = shift;
    my $neg1 = shift;
    my $label1width = shift;
    my $label1mid = $branch1end + $label1width/2;
    my $label1end = $branch1end + $label1width;
    my $branch2 = 20;
    my $branch2end = $label1end + $branch2;
    my $label2 = shift;
    my $pos2 = shift;
    my $neg2 = shift;
    my $label2width = shift;
    my $label2mid = $branch2end + $label2width/2;
    my $label2end = $branch2end + $label2width;

    my $diagram = "
<div style='position:relative;height:220px;padding:0;margin:0;'>
<div style='position:absolute;width:100%;height:auto;top:0;left:0;padding:0;margin:0;'>
<svg xmlns = 'http://www.w3.org/2000/svg' width='520px' height='220px' overflow='auto' viewBox='0 0 520 220'>
    <path d='M $root 130 l $branch1 -50' stroke='black'/>
    <path d='M $branch1end 80 h $label1width' stroke-dasharray='4' stroke='black'/>
    <path d='M $label1end 80 l $branch2 -25' stroke='black'/>
    <path d='M $label1end 80 l $branch2 25' stroke='black'/>
    <path d='M $branch2end 55 h $label2width' stroke-dasharray='4' stroke='black'/>
    <path d='M $branch2end 105 h $label2width' stroke-dasharray='4' stroke='black'/>
    <path d='M $root 130 l $branch1 50' stroke='black'/>
    <path d='M $branch1end 180 h $label1width' stroke-dasharray='4' stroke='black'/>
    <path d='M $label1end 180 l $branch2 -25' stroke='black'/>
    <path d='M $label1end 180 l $branch2 25' stroke='black'/>
    <path d='M $branch2end 155 h $label2width' stroke-dasharray='4' stroke='black'/>
    <path d='M $branch2end 205 h $label2width' stroke-dasharray='4' stroke='black'/>
    <text x='$label1mid' y='10' font-size='14' text-anchor='middle' stroke='blue'>$label1</text>
    <text x='$label2mid' y='10' font-size='14' text-anchor='middle' stroke='blue'>$label2</text>
</svg>
</div>
    <div style='position:absolute;left:${branch1end}px;top:50px;right:0;padding:0;margin:0'>
            $pos1 " . NAMED_ANS_RULE("first_yes",5) . "
    </div>
    <div style='position:absolute;left:${branch2end}px;top:25px;right:0;padding:0;margin:0'>
        $pos2 " . NAMED_ANS_RULE("positive_given_yes",5) . "
    </div>
    <div style='position:absolute;left:${branch2end}px;top:75px;right:0;padding:0;margin:0'>
        $neg2 " . NAMED_ANS_RULE("negative_given_yes",5) . "
    </div>
    <div style='position:absolute;left:${branch1end}px;top:150px;right:0;padding:0;margin:0'>
            $neg1 " . NAMED_ANS_RULE("first_no",5) . "
    </div>
    <div style='position:absolute;left:${branch2end}px;top:125px;right:0;padding:0;margin:0'>
        $pos2 " . NAMED_ANS_RULE("positive_given_no",5) . "
    </div>
    <div style='position:absolute;left:${branch2end}px;top:175px;right:0;padding:0;margin:0'>
        $neg2 " . NAMED_ANS_RULE("negative_given_no",5) . "
    </div>
    <div style='position:absolute;left:${label2end}px;top:40px;right:0;padding:0;margin:0'>
        &nbsp;" . NAMED_ANS_RULE("positive_and_yes",8) . "
    </div>
    <div style='position:absolute;left:${label2end}px;top:90px;right:0;padding:0;margin:0'>
        &nbsp;" . NAMED_ANS_RULE("negative_and_yes",8) . "
    </div>
    <div style='position:absolute;left:${label2end}px;top:140px;right:0;padding:0;margin:0'>
        &nbsp;" . NAMED_ANS_RULE("positive_and_no",8) . "
    </div>
    <div style='position:absolute;left:${label2end}px;top:190px;right:0;padding:0;margin:0'>
        &nbsp;" . NAMED_ANS_RULE("negative_and_no",8) . "
    </div>
</div>";

    return $diagram;
}

sub VennDiagram {
    my $leftlabel = shift;
    my $rightlabel = shift;

    return "
<div style='position:relative;height:200px;padding:0;margin:0;'>
<div style='position:absolute;width:100%;height:auto;top:0;left:0;padding:0;margin:0;'>
<svg xmlns = 'http://www.w3.org/2000/svg' width='520px' height='200px' overflow='auto' viewBox='0 0 520 200'>
    <ellipse cx='170' cy='95' rx='150' ry='75' fill='transparent' stroke='#000000'/>
    <ellipse cx='350' cy='95' rx='150' ry='75' fill='transparent' stroke='#000000'/>
    <text x='70' y='30' font-size='12' text-anchor='end'>$leftlabel</text>
    <text x='450' y='30' font-size='12' text-anchor='start'>$rightlabel</text>
</svg>
</div>
<div style='position:absolute;left:100px;top:80px;right:0;padding:0;margin:0'>
" . NAMED_ANS_RULE('left_area',5) . "
        </div>
<div style='position:absolute;left:220px;top:80px;right:0;padding:0;margin:0'>
" . NAMED_ANS_RULE('intersection',5) . "
        </div>
<div style='position:absolute;left:350px;top:80px;right:0;padding:0;margin:0'>
" . NAMED_ANS_RULE('right_area',5) . "
</div>
</div>";
}
