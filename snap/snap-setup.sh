# Get Snap and Plugins
export SNAPVER=v0.14.0-beta
docker run -v /opt:/opt centos sh -c "curl -sSL https://github.com/intelsdi-x/snap/releases/download/$SNAPVER/snap-$SNAPVER-linux-amd64.tar.gz | tar -C /opt -zxf-"
docker run -v /opt:/opt centos sh -c "curl -sSL https://github.com/intelsdi-x/snap/releases/download/$SNAPVER/snap-plugins-$SNAPVER-linux-amd64.tar.gz | tar -C /opt -zxf-"

# Create symlinks
ln -s /opt/snap-$SNAPVER/ /opt/snap
ln -s /opt/snap/bin/snapd /usr/local/bin/snapd
ln -s /opt/snap/bin/snapctl /usr/local/bin/snapctl