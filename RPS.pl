#!/usr/bin/perl

#use strict;
#use warnings;


#it doens't work without this so I am just gonna leave it here
my $p1 = 1;
my $p2 = 1;
#Printing out the menu
print "Time to play Rock, Paper, Scissors\n\n";
while($p1 != "Q" or $p1 != "q"){
	print "\tR or r (Rock)\n";
	print "\tP or p (Paper)\n";
	print "\tS or s (Scissors)\n";
	print "\tQ or q (Quit)\n\n";
	print "Enter your choice: ";
	my $p1 = <>;
	chomp($p1);
	
	print "\n";

	#randomizing the choice of CPU player
	my $temp2 = int(rand(3));
	if($temp2 == 0){
		$p2 = "R";
	}elsif($temp2 == 1){
		$p2 = "P";
	}else{
		$p2 = "S";
	}

	eval_winner($p1,$p2);

}
#this is where you determine the winner
sub eval_winner{	
	#taking in the arguments
	my $p1 = $_[0];
        my $p2 = $_[1];
	
	### Testing Purposes ###
	#print "P1: $p1\n";
	#print "P2: $p2\n";
	
	#determine winner
	if($p1 eq 'R' || $p1 eq 'r'){
		if($p2 eq "R"){
			print "There was a Tie, both chose Rock\n";
			return 0;
		}
		elsif($p2 eq "P"){
			print "You lose, Paper covers Rock\n";
			return 2;
		}
		elsif($p2 eq "S"){
			print "You win, Rock smashes Scissors\n";
			return 1;
		}
	}
	elsif($p1 eq "P" || $p1 eq "p"){
		if($p2 eq "P"){
                        print "There was a Tie, both chose Paper\n";
                        return 0;
                }
                elsif($p2 eq "S"){
                        print "You lose, Scissors cuts Paper\n";
                        return 2;
                }
                elsif($p2 eq "R"){
                        print "You win, Paper covers Rock\n";
                        return 1;
                }
	}
	elsif($p1 eq "S" || $p1 eq "s"){
		if($p2 eq "S"){
                        print "There was a Tie, both chose Scissors\n";
                        return 0;
                }
                elsif($p2 eq "R"){
                        print "You lose, Rock smashes Scissors\n";
                        return 2;
                }
                elsif($p2 eq "P"){
                        print "You win, Scissors cuts Paper\n";
                        return 1;
                }

	}
	elsif($p1 eq "Q" || $p1 eq "q"){
		print "You entered Q, bye\n";
		last;
	}
	else{
		print "Please enter a valid option\n";
	}

}	
