#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/dash/contracting/galois/Simbotic/ros/src/airsim_ros"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/dash/contracting/galois/Simbotic/ros/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/dash/contracting/galois/Simbotic/ros/install/lib/python2.7/dist-packages:/home/dash/contracting/galois/Simbotic/ros/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/dash/contracting/galois/Simbotic/ros/build" \
    "/usr/bin/python" \
    "/home/dash/contracting/galois/Simbotic/ros/src/airsim_ros/setup.py" \
    build --build-base "/home/dash/contracting/galois/Simbotic/ros/build/airsim_ros" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/dash/contracting/galois/Simbotic/ros/install" --install-scripts="/home/dash/contracting/galois/Simbotic/ros/install/bin"
