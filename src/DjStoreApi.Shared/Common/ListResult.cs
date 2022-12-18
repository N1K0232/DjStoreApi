using System.Text.Json.Serialization;

namespace DjStoreApi.Shared.Common;

public sealed class ListResult<TModel> where TModel : BaseModel
{
    [JsonConstructor]
    public ListResult()
    {
    }

    public ListResult(IEnumerable<TModel> content, long totalCount, int totalPages, bool hasNextPage)
    {
        Content = content;
        TotalCount = totalCount;
        TotalPages = totalPages;
        HasNextPage = hasNextPage;
    }


    public IEnumerable<TModel> Content { get; init; }

    public long TotalCount { get; init; }

    public int TotalPages { get; init; }

    public bool HasNextPage { get; init; }
}