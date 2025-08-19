SRC=.
DST_DIR=/afs/cs.cmu.edu/user/jrast/www/courses/10701/
DST_CS=$(USER)@linux.gp.cs.cmu.edu:$(DST_DIR)
DST_AN=$(USER)@linux.andrew.cmu.edu:$(DST_DIR)

push: push-cs

push-cs: 
	rsync --rsync-path="aklog cs.cmu.edu && rsync" -av -r --delete-after $(SRC) $(DST_CS)

push-an: 
	rsync --rsync-path="aklog cs.cmu.edu && rsync" -av -r --delete-after $(SRC) $(DST_AN)
