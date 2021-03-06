# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1Schema do
  @moduledoc """
  Represents a schema (e.g. BigQuery, GoogleSQL, Avro schema).

  ## Attributes

  *   `columns` (*type:* `list(GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1ColumnSchema.t)`, *default:* `nil`) - Required. Schema of columns. A maximum of 10,000 columns and sub-columns can be specified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columns =>
            list(
              GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1ColumnSchema.t()
            )
        }

  field(:columns,
    as: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1ColumnSchema,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1Schema do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1Schema.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1Schema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
