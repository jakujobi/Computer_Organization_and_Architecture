const int ROWS=10000;
const int COLS=4;

for(int i=0 ; i<ROWS; i++)
	for(int j=0; j<COLS; j++)
		a[i][j]=a[i][j]+num;
		
// Notice that we could code as follows:
for(int i=0 ; i<ROWS; i++){
	a[i][0]=a[i][0]+num;
	a[i][1]=a[i][1]+num;
	a[i][2]=a[i][2]+num;
	a[i][3]=a[i][3]+num;
}

//A "smart" compiler will do this for you. See figure 4.69 p. 349
