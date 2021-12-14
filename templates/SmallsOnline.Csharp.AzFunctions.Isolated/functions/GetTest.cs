namespace SmallsOnline.Csharp.AzFunctions.Isolated.Template.Functions;

public class GetTest
{
    private readonly ILogger _logger;

    public GetTest(ILoggerFactory loggerFactory)
    {
        _logger = loggerFactory.CreateLogger<GetTest>();
    }

    public HttpResponseData Run(
        [HttpTrigger(
            authLevel: AuthorizationLevel.Anonymous,
            methods: "get",
            Route = "test"
        )]
        HttpRequestData httpReq
    )
    {
        _logger.LogInformation($"Trigger for '{GetType().Name}' receuved.");

        HttpResponseData httpRsp = httpReq.CreateResponse(
            statusCode: HttpStatusCode.OK
        );

        httpRsp.Headers.Add(
            name: "Content-Type",
            "plain/text"
        );

        httpRsp.WriteString("Hello world! :D");

        return httpRsp;
    }
}