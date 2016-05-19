#ifndef MYCOLLECTION_H
#define MYCOLLECTION_H

enum
{
  AM_COLLECTIONBEACON = 0x88,
  AM_COLLECTIONDATA = 0x99,
};

typedef nx_struct CollectionBeacon
{
  nx_uint8_t seq_no;
  nx_uint16_t metric;
} CollectionBeacon;

typedef nx_struct {
	nx_uint16_t seqn;
} MyData;

typedef nx_struct {
  nx_uint16_t from;
  nx_uint16_t hops;
  MyData data; // app-level data
} CollectionData;


#endif
