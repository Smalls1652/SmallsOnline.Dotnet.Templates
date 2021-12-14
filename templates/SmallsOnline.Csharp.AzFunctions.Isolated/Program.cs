namespace SmallsOnline.Csharp.AzFunctions.Isolated.Template;

public class Program
{
    public static void Main()
    {
        IHost host = new HostBuilder()
            .ConfigureFunctionsWorkerDefaults()
            .Build();

        host.Run();
    }
}
