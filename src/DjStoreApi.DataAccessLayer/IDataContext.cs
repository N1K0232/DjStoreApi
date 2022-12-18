using System.Linq.Expressions;
using DjStoreApi.DataAccessLayer.Entities.Common;

namespace DjStoreApi.DataAccessLayer;

public interface IDataContext
{
    void Delete<TEntity>(TEntity entity) where TEntity : BaseEntity;

    void Delete<TEntity>(IEnumerable<TEntity> entities) where TEntity : BaseEntity;

    Task<bool> ExistsAsync<TEntity>(Guid id) where TEntity : BaseEntity;

    Task<bool> ExistsAsync<TEntity>(Expression<Func<TEntity, bool>> predicate) where TEntity : BaseEntity;

    Task<TEntity> GetAsync<TEntity>(Guid id) where TEntity : BaseEntity;

    IQueryable<TEntity> GetData<TEntity>(bool ignoreQueryFilters = false, bool trackingChanges = false) where TEntity : BaseEntity;

    void Create<TEntity>(TEntity entity) where TEntity : BaseEntity;

    Task SaveAsync();

    Task ExecuteTransactionAsync(Func<Task> action);
}