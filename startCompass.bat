:: Batch Script to compass watch all Compass Directories
setlocal EnableDelayedExpansion
::Specifiy which locations to watch ONE location per line, no comments.
set file=C:\altiris\locations.txt
::Specifiy Ruby location
set rubyLocation=C:\Ruby200-x64\bin\
::Iterate watch locations
FOR /F %%i IN (%file%) DO (
  set watchLocation=%%i
	::Call watch and send it current watch location, and ruby location
	start watchDirectory.CMD %watchLocation%
)
