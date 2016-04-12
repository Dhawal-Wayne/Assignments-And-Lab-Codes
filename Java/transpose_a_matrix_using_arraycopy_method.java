import java.util.*;
class transpose_a_matrix_using_arraycopy_method
{
public static void main(String arg[])
{
int m,n;
Scanner s=new Scanner(System.in);
System.out.println("Enter Dimentions of matrix");
m=s.nextInt();
n=s.nextInt();
int [][]a=new int [m][n];
System.out.println("Enter matrix to be transposed");
for(int i=0;i<m;i++)
for(int j=0;j<n;j++)
a[i][j]=s.nextInt();
int [][]b=new int [n][m];
try
{
for(int i=0;i<m;i++)
for(int j=0;j<n;j++)
System.arraycopy(a[i],j,b[j],i,1);
throw new Exception();
}
catch(Exception e)
{
}
System.out.println("Transposed matrix is ");
for(int i=0;i<n;i++)
{
for(int j=0;j<m;j++)
System.out.print(b[i][j]+" ");
System.out.println();
}
}
}
