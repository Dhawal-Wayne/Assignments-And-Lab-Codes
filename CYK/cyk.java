import java.util.*;
class cyk
{
static int n;
static String G[][]=new String [10][100];
static String in;
static String PT[][][];
static int max=0;
static void putgrammer()
{
Scanner s=new Scanner(System.in);
System.out.println("Before entering convert you grammer to Chomsky Normal Form\nAnd Then Enter");
System.out.println("Enter number of non-terminal");
n=s.nextInt();
System.out.println("Enter all Non-Terminals");
for(int i=0;i<n;i++)
{
G[i][0]=s.next();
}
for(int i=0;i<n;i++)
{
System.out.println("Enter number of production of "+G[i][0]);
G[i][1]=s.next();
System.out.println("Enter productions of "+G[i][0]);
for(int j=2;j<=Integer.parseInt(G[i][1])+1;j++)
{
G[i][j]=s.next();
}
}
}
static void getgrammer()
{
System.out.println("Entered grammer is ");
for(int i=0;i<n;i++)
{
System.out.print(G[i][0]+"->");
for(int j=2;j<=Integer.parseInt(G[i][1])+1;j++)
System.out.print(G[i][j]+" ");
System.out.println();
}
}
public static void main(String arg[])
{
Scanner s=new Scanner (System.in);
putgrammer();
getgrammer();
int k=0;
System.out.print("Enter string input\t");
in=s.next();
StringBuffer input=new StringBuffer(in);
PT=new String [100][input.length()+1][input.length()+1];
for(int k1=0;k1<100;k1++)
for(int i=0;i<=input.length();i++)
for(int j=0;j<=input.length();j++)
PT[k1][i][j]="";
for(int i1=0;i1<input.length();i1++)
{
for(int i=0;i<n;i++)
{
for(int j=2;j<=(Integer.parseInt(G[i][1]))+1;j++)
{
if(input.substring(i1,i1+1).equals(G[i][j]))
PT[k++][i1][i1+1]=G[i][0];
if(max<k)
max=k-1;
}
}
k=0;
}
for(int m=2;m<=input.length();m++)
{
for(int i=0;i<=input.length()-m;i++)
{
for(int j=i;j<=i+m-1;j++)
{
int k1=0;
for(int gi=0;gi<n;gi++)
{
for(int gj=2;gj<=(Integer.parseInt(G[gi][1]))+1;gj++)
{
if(G[gi][gj].length()==2)
{
for(k=0;k<100;k++)
for(int k2=0;k2<100;k2++)
if((G[gi][gj].substring(0,1).equals(PT[k][i][j]))&&(G[gi][gj].substring(1,2).equals(PT[k2][j][i+m])))
{
PT[k1++][i][i+m]=G[gi][0];
if(max<k1)
max=k1-1;
}
}
}
}
}
}
}
/*
for checking each matrix derivation remove comments
for(int k1=0;k1<=max;k1++)
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
if(PT[m][0][input.length()].equals("S"))
{
System.out.println("String can be derived from this grammer");
return;
}
System.out.println("String can not be defined from this grammer");
}
}
