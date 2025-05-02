struct uv_pipe_s {
  int something;
};

int uv_pipe_open(struct uv_pipe_s *handle, int fd)
{
  int result;
  if (result == 0) {
    __coverity_escape__(fd);
  }
  return result;
}

// Hint Coverity that adding item to d avoids losing track
// of the memory allocated for item.
typedef struct {} dictitem_T;
typedef struct {} dict_T;
int tv_dict_add(dict_T *const d, dictitem_T *const item)
{
  __coverity_escape__(item);
}

void *malloc(size_t size)
{
  int has_mem;
  if (has_mem)
    return __coverity_alloc__(size);
  else
    return 0;
}

void *try_malloc(size_t size)
{
  size_t allocated_size = size ? size : 1;
  return malloc(allocated_size);
}

void *xmalloc(size_t size)
{
  void *p = malloc(size);
  if (!p)
    __coverity_panic__();
  return p;
}

void xfree(void * ptr)
{
  __coverity_free__(ptr);
}

void *xcalloc(size_t count, size_t size)
{
  size_t allocated_count = count && size ? count : 1;
  size_t allocated_size = count && size ? size : 1;
  void *p = try_malloc(allocated_count * allocated_size);
  if (!p)
    __coverity_panic__();
  __coverity_writeall0__(p);
  return p;
}

void *xrealloc(void *ptr, size_t size)
{
  __coverity_escape__(ptr);
  void * p = xmalloc(size);
  __coverity_writeall__(p);
  return p;
}

