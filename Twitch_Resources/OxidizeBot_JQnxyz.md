# OxidizeBot setup for "JQnxyz" channel

## Syntax
`!<Command>` executes commands
`?<Command>` gets custom help details for commands

## Command list

* play
	* Starts playing songs through the player.
* pause
	* Stops playing songs through the player.
* skip
	* Skips the current song.
* songs
	* Link to list of historical played songs.
* detach [true/false]
	* Returns state of player attachment if no parameter provided. Provide parameter "true" to detach player, "false" to re-attach.

## Setup instructions
Enter each line of the following list to add the functionality to your channel powered by [OxidizeBot](https://setbac.tv/).

```
!alias edit !play !song play
!alias edit !pause !song pause
!alias edit !skip !song skip
!alias edit !songs !song list
!alias edit !detach !admin settings player/detached {{rest}}


!command edit ?play {{name}} !song play; Starts playing songs through the player.
!command edit ?pause {{name}} !song pause; Stops playing songs through the player.
!command edit ?skip {{name}} !song skip; Skips the current song.
!command edit ?songs {{name}} !song list; Link to list of historical played songs.
!command edit ?detach {{name}} !detach [true/false]; Returns state of player attachment if no parameter provided. Provide parameter "true" to detach player, "false" to re-attach.

```