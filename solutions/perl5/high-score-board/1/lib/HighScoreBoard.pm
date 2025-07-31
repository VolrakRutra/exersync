package HighScoreBoard;

use v5.38;

our %Scores;

sub set_player_scores (%new_scores) {
    foreach my $key (keys %new_scores)
    {
        my $value = $new_scores{$key};
        $Scores{$key} = $value;
    }
}

sub get_player_score ($player) {
    return $Scores{$player}
}

sub increase_player_scores (%additional_scores) {
    foreach my $key (keys %additional_scores)
    {
        my $value = $additional_scores{$key};
        $Scores{$key} = $Scores{$key} + $value;
    }
}

sub sort_players_by_name {
    return (sort {lc $a cmp lc $b} keys %Scores)
}

sub sort_players_by_score {
return (sort { $Scores{$b} <=> $Scores{$a} } keys %Scores)
}

sub delete_player ($player) {
delete($Scores{$player});
}
