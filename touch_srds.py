"""Update modified timestamps on all .srd files in llPrep to right now,
so they sort above the .bak files in PowerBuilder's import dialog."""
import os, pathlib

llprep = pathlib.Path(r'C:\Database\Catch22 Unload\Migration\Powerbuilder\llPrep')

srds = sorted(llprep.glob('*.srd'))
for f in srds:
    f.touch()          # sets atime and mtime to now

print(f"Touched {len(srds)} .srd files — all now have today's timestamp.")
