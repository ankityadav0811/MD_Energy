pair_style  meam
pair_coeff * * library-Al.meam Al Al.meam Al
# Setup neighbor style
neighbor 0.5 bin
neigh_modify once no every 1 delay 0 check yes

# Setup minimization style
min_style	     cg
#min_modify	     dmax ${dmax} line quadratic

# Setup output
thermo		1000
thermo_style custom step temp pe press pxx pyy pzz pxy pxz pyz lx ly lz vol
thermo_modify norm no
