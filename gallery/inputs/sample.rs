pub fn schema_or_config<'py, T>(
    schema: &Bound<'py, PyDict>,
    config: Option<&Bound<'py, PyDict>>,
    schema_key: &Bound<'py, PyString>,
    config_key: &Bound<'py, PyString>,
) -> PyResult<Option<T>>
where
    T: FromPyObject<'py>,
{
    match schema.get_as(schema_key)? {
        Some(v) => Ok(Some(v)),
        None => match config {
            Some(config) => config.get_as(config_key),
            None => Ok(None),
        },
    }
}

pub fn schema_or_config_same<'py, T>(
    schema: &Bound<'py, PyDict>,
    config: Option<&Bound<'py, PyDict>>,
    key: &Bound<'py, PyString>,
) -> PyResult<Option<T>>
where
    T: FromPyObject<'py>,
{
    schema_or_config(schema, config, key, key)
}

pub fn is_strict(schema: &Bound<'_, PyDict>, config: Option<&Bound<'_, PyDict>>) -> PyResult<bool> {
    let py = schema.py();
    Ok(schema_or_config_same(schema, config, intern!(py, "strict"))?.unwrap_or(false))
}

enum SchemaErrorEnum {
    Message(String),
    ValidationError(ValidationError),
}

// we could perhaps do clever things here to store each schema error, or have different types for the top
// level error group, and other errors, we could perhaps also support error groups!?
#[pyclass(extends=PyException, module="pydantic_core._pydantic_core")]
pub struct SchemaError(SchemaErrorEnum);

impl fmt::Debug for SchemaError {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "SchemaError({:?})", self.message())
    }
}

impl fmt::Display for SchemaError {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        f.write_str(self.message())
    }
}
