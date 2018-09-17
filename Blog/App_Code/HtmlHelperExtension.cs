using System.Web.WebPages.Html;

public static class HtmlHelperExtension
{
    /// <summary>
    /// Empty method, fix build error
    /// </summary>
    /// <param name="html"></param>
    /// <param name="value"></param>
    public static string Partial(this HtmlHelper html, string value)
    {
        return value;
    }
}