using BandLookMVC.Response;

namespace BandLookMVC.Services;

public class VNPayPaymentService : IVNPayPaymentService
{
    private readonly IConfiguration _configuration;

    public VNPayPaymentService(IConfiguration configuration)
    {
        _configuration = configuration;
    }

    public string CreatePayment(string amount, string orderId, string orderInfo, HttpContext context)
    {
        var timeZoneId = Environment.GetEnvironmentVariable("TimeZoneId") ?? _configuration["TimeZoneId"];
        var timeZoneById = TimeZoneInfo.FindSystemTimeZoneById(timeZoneId);
        var timeNow = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, timeZoneById);
        var tick = DateTime.Now.Ticks.ToString();
        var pay = new VnPayLibrary();
        
        var urlCallBack = Environment.GetEnvironmentVariable("PaymentCallBack__ReturnUrl") ?? _configuration["PaymentCallBack:ReturnUrl"];

        pay.AddRequestData("vnp_Version", Environment.GetEnvironmentVariable("Vnpay__Version") ?? _configuration["Vnpay:Version"]);
        pay.AddRequestData("vnp_Command", Environment.GetEnvironmentVariable("Vnpay__Command") ?? _configuration["Vnpay:Command"]);
        pay.AddRequestData("vnp_TmnCode", Environment.GetEnvironmentVariable("Vnpay__TmnCode") ?? _configuration["Vnpay:TmnCode"]);
        pay.AddRequestData("vnp_Amount", (int.Parse(amount)*100).ToString());
        pay.AddRequestData("vnp_CreateDate", timeNow.ToString("yyyyMMddHHmmss"));
        pay.AddRequestData("vnp_CurrCode", Environment.GetEnvironmentVariable("Vnpay__CurrCode") ?? _configuration["Vnpay:CurrCode"]);
        pay.AddRequestData("vnp_IpAddr", pay.GetIpAddress(context));
        pay.AddRequestData("vnp_Locale", Environment.GetEnvironmentVariable("Vnpay__Locale") ?? _configuration["Vnpay:Locale"]);
        pay.AddRequestData("vnp_OrderInfo", orderInfo);
        pay.AddRequestData("vnp_OrderType", "electric");
        pay.AddRequestData("vnp_ReturnUrl", urlCallBack);
        pay.AddRequestData("vnp_TxnRef", tick);

        var paymentUrl = pay.CreateRequestUrl(
            Environment.GetEnvironmentVariable("Vnpay__BaseUrl") ?? _configuration["Vnpay:BaseUrl"],
            Environment.GetEnvironmentVariable("Vnpay__HashSecret") ?? _configuration["Vnpay:HashSecret"]
        );

        return paymentUrl;
    }

    public PaymentResponseModel PaymentExecute(IQueryCollection collections)
    {
        var pay = new VnPayLibrary();
        var hashSecret = Environment.GetEnvironmentVariable("Vnpay__HashSecret") ?? _configuration["Vnpay:HashSecret"];
        var response = pay.GetFullResponseData(collections, hashSecret);

        return response;
    }
}
