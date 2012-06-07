/*
    The labels are for world zooms, mid-zooms, and detailed city zooms, all in one file.
    Covers zooms 0 to 19.
    
    Used in map style MMLs:
    
    • Normal map style
        - just this MSS
    • Hybrid map style
        - also overriden by: 
          toner-hybrid-with-labels.mss
    • Hybrid map style - labels only    
        - also overriden by:
          toner-hybrid-only-labels.mss
*/

/*
Continent labels are just points.
*/
#continent-labels[zoom>=1][zoom<3] name
{
    text-face-name: 'Arial Unicode MS Bold';
    text-wrap-width: 32;
    text-size: 14;
    text-fill: #000;
    text-halo-radius: 3;
    text-halo-fill: #fff;
}


/*
Ocean, Sea, Bay and other marine labels. Some use of scalerank column
here helps define exactly which features come in at which zoom levels.
*/
#marine-labels-110m[zoom=2][scalerank=0] name,
#marine-labels-110m[zoom=3] name,
#marine-labels-50m[zoom=4][scalerank<4] name
{
    text-face-name: 'Arial Unicode MS Bold Italic';
    text-wrap-width: 80;
    text-size: 14;
    text-fill: #fff;
    text-halo-radius: 1;
    text-halo-fill: #000;
}

#marine-labels-50m[zoom>=5][zoom<6] name,
#marine-labels-10m[zoom>=6] name
{
    text-face-name: 'Arial Unicode MS Italic';
    text-wrap-width: 80;
    text-size: 14;
    text-fill: #fff;
    text-halo-radius: 1;
    text-halo-fill: #000;
}


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
    text-halo-fill: #fff;
}

.country-labels-110m-z4[zoom=4] label_z4
{
    text-face-name: 'Arial Unicode MS Bold';
    text-wrap-width: 80;
    text-size: 14;
    text-fill: #000;
    text-halo-radius: 2;
    text-halo-fill: #fff;
}

.country-labels-110m-z5[zoom=5] label_z5
{
    text-face-name: 'Arial Unicode MS Bold';
    text-wrap-width: 80;
    text-size: 16;
    text-fill: #000;
    text-halo-radius: 2;
    text-halo-fill: #fff;
}

.country-labels-110m-z6[zoom=6] label_z6
{
    text-face-name: 'Arial Unicode MS Bold';
    text-wrap-width: 80;
    text-size: 18;
    text-fill: #000;
    text-halo-radius: 2;
    text-halo-fill: #fff;
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
    text-halo-fill: #fff;
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
/*,
.city-points-z9[zoom=9]*/
{
    point-file: url('icons/dot.png');
    point-allow-overlap: true;
}

.city-labels-z4[zoom=4][justified='left'],
.city-labels-z5[zoom=5][justified='left'],
.city-labels-z6[zoom=6][justified='left'],
.city-labels-z7[zoom=7][justified='left'],
.city-labels-z8[zoom=8][justified='left']
/*,
.city-labels-z9[zoom=9][justified='left']
*/
{
    text-dx: -5;
    text-dy: 1;
}

.city-labels-z4[zoom=4][justified='right'],
.city-labels-z5[zoom=5][justified='right'],
.city-labels-z6[zoom=6][justified='right'],
.city-labels-z7[zoom=7][justified='right'],
.city-labels-z8[zoom=8][justified='right']
/*,
.city-labels-z9[zoom=9][justified='right']
*/
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
    text-halo-fill: #fff;
}

.city-labels-z7[zoom=7] name
{
    text-allow-overlap: true;
    text-face-name: 'Arial Unicode MS Bold';
    text-fill: #000;
    text-halo-radius: 2;
    text-halo-fill: #fff;    
}

.city-labels-z8[zoom=8] name,
.city-points-z9[zoom=9] name,
.city-points-z10[zoom=10] name,
.city-points-z11[zoom=11] name,
.city-points-z12[zoom=12] name
{
    text-allow-overlap: true;
    text-face-name: 'Arial Unicode MS Bold';
    text-fill: #000;
    text-halo-radius: 2;
    text-halo-fill: #fff;    
}

/* 
    We loose the townspot and don't use Dymo 
    placement anymore, so don't let Mapnik 
    overlap 
*/

.city-points-z9[zoom=9] name,
.city-points-z10[zoom=10] name,
.city-points-z11[zoom=11] name,
.city-points-z12[zoom=12] name
{
    text-allow-overlap: false;
}

/*
City Labels ZOOM 4
*/
.city-labels-z4[zoom=4] name { text-size: 10; }
.city-labels-z4[zoom=4][font_size=14] name { text-size: 14; }

/* About:                                                    */
/* Labels should look pretty, that's where Dymo comes in     */
/* These are for the Dymo settings, and for debug            */
/* Once it goes thru Dymo, we just use font_size             */

/* NOTE: We use font_size instead of population proxy,       */
/* as Mapnik freaks when pop is not a number, and sometimes  */
/* Dymo doesn't spit out the right field formating.          */

/*
.city-labels-z4[zoom=4] name { text-size: 10; }
.city-labels-z4[zoom=4][population>=25000] name { text-size: 10; }
.city-labels-z4[zoom=4][population>=100000] name { text-size: 10; }
.city-labels-z4[zoom=4][population>=1000000] name { text-size: 14; }
*/

/*
City Labels ZOOM 5
*/
.city-labels-z5[zoom=5] name { text-size: 12; }
.city-labels-z5[zoom=5][font_size=16] name { text-size: 16; }
/*
.city-labels-z5[zoom=5] name { text-size: 12; }
.city-labels-z5[zoom=5][population>=25000] name { text-size: 12; }
.city-labels-z5[zoom=5][population>=100000] name { text-size: 12; }
.city-labels-z5[zoom=5][population>=1000000] name { text-size: 16; }
*/

/*
City Labels ZOOM 6
*/
.city-labels-z6[zoom=6] name { text-size: 12; }
.city-labels-z6[zoom=6][font_size=18] name { text-size: 18; }
/*
.city-labels-z6[zoom=6] name { text-size: 12; }
.city-labels-z6[zoom=6][population>=25000] name { text-size: 12; }
.city-labels-z6[zoom=6][population>=100000] name { text-size: 12; }
.city-labels-z6[zoom=6][population>=1000000] name { text-size: 18; }
*/

/*
City Labels ZOOM 7
*/
.city-labels-z7[zoom=7] name { text-size: 12; }
.city-labels-z7[zoom=7][font_size=18] name { text-size: 18; }
/*
.city-labels-z7[zoom=7][population>0] name { text-size: 12; }
.city-labels-z7[zoom=7][population>=25000] name { text-size: 12; }
.city-labels-z7[zoom=7][population>=100000] name { text-size: 12; }
.city-labels-z7[zoom=7][population>=1000000] name { text-size: 18; }
*/

/*
City Labels ZOOM 8, 9 10
*/
.city-labels-z8[zoom=8] name { text-size: 13; }
.city-labels-z8[zoom=8][font_size=20] name { text-size: 20; }
.city-points-z9[zoom=9] name { text-size: 13; }
.city-points-z9[zoom=9][font_size=20] name { text-size: 20; }
.city-points-z10[zoom=10] name { text-size: 13; }
.city-points-z10[zoom=10][font_size=20] name { text-size: 20; }
.city-points-z11[zoom=11] name { text-size: 13; }
.city-points-z11[zoom=11][font_size=20] name { text-size: 20; }
.city-points-z12[zoom=12] name { text-size: 13; }
.city-points-z12[zoom=12][font_size=20] name { text-size: 20; }

/*
.city-labels-z8[zoom=8] name { text-size: 13; }
.city-labels-z8[zoom=8][population>=25000] name { text-size: 13; }
.city-labels-z8[zoom=8][population>=100000] name { text-size: 20; }
.city-labels-z8[zoom=8][population>=1000000] name { text-size: 20; }

.city-points-z9[zoom=9] name { text-size: 13; }
.city-points-z9[zoom=9][population>=25000] name { text-size: 13; }
.city-points-z9[zoom=9][population>=100000] name { text-size: 20; }
.city-points-z9[zoom=9][population>=1000000] name { text-size: 20; }

.city-points-z10[zoom=10] name { text-size: 13; }
.city-points-z10[zoom=10][population>=25000] name { text-size: 13; }
.city-points-z10[zoom=10][population>=100000] name { text-size: 20; }
.city-points-z10[zoom=10][population>=1000000] name { text-size: 20; }

.city-points-z11[zoom=11] name { text-size: 13; }
.city-points-z11[zoom=11][population>=25000] name { text-size: 13; }
.city-points-z11[zoom=11][population>=100000] name { text-size: 20; }
.city-points-z11[zoom=11][population>=1000000] name { text-size: 20; }

.city-points-z12[zoom=12] name { text-size: 13; }
.city-points-z12[zoom=12][population>=25000] name { text-size: 13; }
.city-points-z12[zoom=12][population>=100000] name { text-size: 20; }
.city-points-z12[zoom=12][population>=1000000] name { text-size: 20; }
*/

