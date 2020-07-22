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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ExportRequest do
  @moduledoc """
  Request body for [CreateExportRequest]

  ## Attributes

  *   `csvDelimiter` (*type:* `String.t`, *default:* `nil`) - Optional. Delimiter used in the CSV file, if `outputFormat` is set
      to `csv`. Defaults to the `,` (comma) character.
      Supported delimiter characters include comma (`,`), pipe (`|`),
      and tab (`\\t`).
  *   `datastoreName` (*type:* `String.t`, *default:* `nil`) - Required. Name of the preconfigured datastore.
  *   `dateRange` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DateRange.t`, *default:* `nil`) - Required. Date range of the data to export.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the export job.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Display name of the export job.
  *   `outputFormat` (*type:* `String.t`, *default:* `nil`) - Optional. Output format of the export.
      Valid values include: `csv` or `json`. Defaults to `json`.
      Note: Configure the delimiter for CSV output using the `csvDelimiter`
      property.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :csvDelimiter => String.t(),
          :datastoreName => String.t(),
          :dateRange => GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DateRange.t(),
          :description => String.t(),
          :name => String.t(),
          :outputFormat => String.t()
        }

  field(:csvDelimiter)
  field(:datastoreName)
  field(:dateRange, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DateRange)
  field(:description)
  field(:name)
  field(:outputFormat)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ExportRequest do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ExportRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ExportRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end