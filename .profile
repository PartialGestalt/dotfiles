#
# .profile for ady
#

#
# Step 1: figure out where we are
#
export OSNAME=`uname -s | tr '[A-Z]' '[a-z]'`
export MACH=`uname -m | tr '[A-Z]' '[a-z]'`
#export ARCH=`~/bin/arch_get`
export PROF_ARCH=$OSNAME-$MACH
export ARCHDIR=~/Arch/${PROF_ARCH}
export PROF_HOST=`hostname | awk -F. '{print $1}'`
if [ "$PROF_HOST" = "" ] ; then 
export PROF_HOST=`hostname`
fi

function do_startup
{
	# $1 argument is script to incorporate
	for bashdir in .bash .bash/$OSNAME .bash/$OSNAME/$PROF_HOST ; do
	if [ -f $bashdir/$1 ] ; then
		echo "	$bashdir/$1" 
		. $bashdir/$1
	fi
	done
}

#
# Step 2: Run startups for each sub-target
#
OLDDIR=`pwd`
cd ~
echo "Running platform startups..."
do_startup pre
do_startup vars
do_startup path
do_startup aliases
do_startup post
echo "...done"
cd $OLDDIR
if [ -x $ARCHDIR/bin/condense ] ; then
	export PATH=`echo $PATH | $ARCHDIR/bin/condense`
fi
