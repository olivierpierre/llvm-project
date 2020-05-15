#!/bin/bash

FILES="adlist.c quicklist.c ae.c ae_epoll.c anet.c dict.c server.c sds.c \
    zmalloc.c lzf_c.c lzf_d.c pqsort.c zipmap.c sha1.c ziplist.c release.c \
    networking.c util.c object.c db.c replication.c rdb.c t_string.c t_list.c \
    t_set.c t_zset.c t_hash.c config.c aof.c pubsub.c multi.c debug.c sort.c \
    intset.c syncio.c cluster.c crc16.c endianconv.c slowlog.c scripting.c \
    bio.c rio.c rand.c memtest.c crc64.c bitops.c sentinel.c notify.c \
    setproctitle.c blocked.c hyperloglog.c latency.c sparkline.c \
    redis-check-rdb.c geo.c dict.c async.c net.c hiredis.c geohash.c \
    geohash_helper.c"

for f in $FILES; do
    if [ -e $f ]; then
        echo $f

    fi
done

