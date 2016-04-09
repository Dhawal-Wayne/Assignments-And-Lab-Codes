#include<iostream>
#include<string>

class cyk
{
public:
  int n;
  std::string G[10][100];
  std::string input;
  std::string PT[100][strlen(input)][(strlen(input)];
void putgrammer()
{
cout<<"Before entering cover you grammer to Chomsky Normal Form\nAnd Then Enter\n";
cout<<"Enter number of non-terminal\n";
cin>>n;
cout<<("Enter all Non-Terminals\n";
for(int i=0;i<n;i++)
{
cin>>G[i][0];
}
for(int i=0;i<n;i++)
{
cout<<"Enter number of production of "<<G[i][0]<<"\n";
cin>>G[i][1];
cout<<"Enter productions of "<<G[i][0]<<"\n";
for(int j=2;j<=(int)G[i][1]+1;j++)
{
cin>>G[i][j];
}
}
}
void getgrammer()
{
cout<<"Entered grammer is\n";
for(int i=0;i<n;i++)
{
cout<<G[i][0]<<"->";
for(int j=2;j<=(int)(G[i][1])+1;j++)
cout<<G[i][j]<<" ";
cout<<"\n";
}
}
};
void main()
{
cyk obj;
obj.putgrammer();
obj.getgrammer();
int k=0;
cout<<"Enter string input\t";
cin>>obj.input;
for(int k1=0;k1<100;k1++)
for(int i=0;i<=strlen(obj.input);i++)
for(int j=0;j<=strlen(obj.input);j++)
obj.PT[k1][i][j]="";
for(int i1=0;i1<strlen(obj.input);i1++)
{
for(int i=0;i<n;i++)
{
for(int j=2;j<=(int)(obj.G[i][1])+1;j++)
{
if(input.substring(i1,i1+1)==(obj.G[i][j]))
obj.PT[k++][i1][i1+1]=obj.G[i][0];
}
}
k=0;
}
for(int m=2;m<=strlen(obj.input);m++)
{
for(int i=0;i<=strlen(obj.input)-m;i++)
{
for(int j=i;j<=i+m-1;j++)
{
int k1=0;
for(int gi=0;gi<n;gi++)
{
for(int gj=2;gj<=(int)(obj.G[gi][1])+1;gj++)
{
if(strlen(obj.G[gi][gj])==2)
{
for(k=0;k<100;k++)
for(int k2=0;k2<100;k2++)
if((G[gi][gj].substring(0,1)==(obj.PT[k][i][j]))&&(G[gi][gj].substring(1,2)==(obj.PT[k2][j][i+m])))
{
obj.PT[k1++][i][i+m]=obj.G[gi][0];
}
}
}
}
}
}
}
/*
for checking each matrix derivation remove comments
for(int k1=0;k1<100;k1++)
{
for(int i=0;i<=input.length();i++)
{
for(int j=0;j<=input.length();j++)
{
System.out.print(PT[k1][j][i]+"\t");
}
System.out.println();
}
System.out.println();
}
*/
for(int m=0;m<100;m++)
if(obj.PT[m][0][strlen(obj.input)]=="S")
{
cout<<"String can be derived from this grammer\n";
return;
}
cout<<"String can not be defined from this grammer\n";
}

