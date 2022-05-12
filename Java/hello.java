class obj
{
  public static void main(String asd[])
  {
    int i;
    try
    {
      for(i=0;i<100;i++)
      {
        System.out.println("Hello, World!!!");
        Thread.sleep(2);
      }
    } 
    catch(Exception z)
    {
        System.out.println(z);
    }
  }
}
