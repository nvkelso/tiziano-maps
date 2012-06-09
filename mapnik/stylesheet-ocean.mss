Map
{
    map-bgcolor: transparent;
}

#ne_10m_ocean
{
    polygon-fill: #000;
}

#ne_10m_lakes[zoom<=1][ScaleRank<=1],
#ne_10m_lakes[zoom=2][ScaleRank<=2],
#ne_10m_lakes[zoom=3][ScaleRank<=2],
#ne_10m_lakes[zoom=4][ScaleRank<=3],
#ne_10m_lakes[zoom=5][ScaleRank<=4],
#ne_10m_lakes[zoom=6][ScaleRank<=5],
#ne_10m_lakes[zoom>=7]
{
    polygon-fill: #000;
}