/*
Country labels
*/
.country-labels-110m-z3[zoom=3][longfrom<=3] name,
.country-labels-110m-z3[zoom=3][longfrom>3] shortname
{
    text-face-name: 'Arial Regular';
    text-wrap-width: 80;
    text-size: 13;
    text-fill: #000;
    text-halo-radius: 2;
    text-halo-fill: #27344a;
}

.country-labels-110m-z4[zoom=4] label_z4
{
    text-face-name: 'Arial Unicode MS Bold';
    text-wrap-width: 80;
    text-size: 14;
    text-fill: #000;
    text-halo-radius: 2;
    text-halo-fill: #27344a;
}

.country-labels-110m-z5[zoom=5] label_z5
{
    text-face-name: 'Arial Unicode MS Bold';
    text-wrap-width: 80;
    text-size: 16;
    text-fill: #000;
    text-halo-radius: 2;
    text-halo-fill: #27344a;
}

.country-labels-110m-z6[zoom=6] label_z6
{
    text-face-name: 'Arial Unicode MS Bold';
    text-wrap-width: 80;
    text-size: 18;
    text-fill: #000;
    text-halo-radius: 2;
    text-halo-fill: #27344a;
}


/*
Admin-1 (states, provinces) labels
*/
.admin1-labels-50m-z4[zoom=4] label_z4,
.admin1-labels-50m-z5[zoom=5] label_z5,
.admin1-labels-50m-z6[zoom=6] label_z6,
.admin1-labels-50m-z7[zoom=7] label_z7
{
    text-face-name: 'Arial Unicode MS Regular';
    text-wrap-width: 80;
    text-fill: #000;
    text-halo-radius: 2;
    text-halo-fill: #27344a;
}

.admin1-labels-50m-z4[zoom=4]{ text-size: 12; }
.admin1-labels-50m-z5[zoom=5]{ text-size: 16; }
.admin1-labels-50m-z6[zoom=6]{ text-size: 18; }
.admin1-labels-50m-z7[zoom=7]{ text-size: 20; }


/*
City labels
*/
.city-points-z4[zoom=4],
.city-points-z5[zoom=5],
.city-points-z6[zoom=6],
.city-points-z7[zoom=7],
.city-points-z8[zoom=8]
{
    point-file: url('icons/dot.png');
    point-allow-overlap: true;
}

.city-labels-z4[zoom=4][justified='left'],
.city-labels-z5[zoom=5][justified='left'],
.city-labels-z6[zoom=6][justified='left'],
.city-labels-z7[zoom=7][justified='left'],
.city-labels-z8[zoom=8][justified='left']
{
    text-dx: -5;
    text-dy: 1;
}

.city-labels-z4[zoom=4][justified='right'],
.city-labels-z5[zoom=5][justified='right'],
.city-labels-z6[zoom=6][justified='right'],
.city-labels-z7[zoom=7][justified='right'],
.city-labels-z8[zoom=8][justified='right']
{
    text-dx: 5;
    text-dy: 1;
}


.city-labels-z4[zoom=4] name,
.city-labels-z5[zoom=5] name,
.city-labels-z6[zoom=6] name
{
    text-allow-overlap: true;
    text-face-name: 'Arial Unicode MS Regular';
    text-fill: #000;
    text-halo-radius: 2;
    text-halo-fill: #27344a;
}

.city-labels-z7[zoom=7] name
{
    text-allow-overlap: true;
    text-face-name: 'Arial Unicode MS Bold';
    text-fill: #000;
    text-halo-radius: 2;
    text-halo-fill: #27344a;    
}


/*
City Labels ZOOM 4
*/
.city-labels-z4[zoom=4] name { text-size: 10; }
.city-labels-z4[zoom=4][font_size=14] name { text-size: 14; }


/*
City Labels ZOOM 5
*/
.city-labels-z5[zoom=5] name { text-size: 12; }
.city-labels-z5[zoom=5][font_size=16] name { text-size: 16; }

/*
City Labels ZOOM 6
*/
.city-labels-z6[zoom=6] name { text-size: 12; }
.city-labels-z6[zoom=6][font_size=18] name { text-size: 18; }

/*
City Labels ZOOM 7
*/
.city-labels-z7[zoom=7] name { text-size: 12; }
.city-labels-z7[zoom=7][font_size=18] name { text-size: 18; }