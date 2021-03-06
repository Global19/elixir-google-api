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

defmodule GoogleApi.Dataflow.V1b3.Model.SourceOperationResponse do
  @moduledoc """
  The result of a SourceOperationRequest, specified in ReportWorkItemStatusRequest.source_operation when the work item is completed.

  ## Attributes

  *   `getMetadata` (*type:* `GoogleApi.Dataflow.V1b3.Model.SourceGetMetadataResponse.t`, *default:* `nil`) - A response to a request to get metadata about a source.
  *   `split` (*type:* `GoogleApi.Dataflow.V1b3.Model.SourceSplitResponse.t`, *default:* `nil`) - A response to a request to split a source.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :getMetadata => GoogleApi.Dataflow.V1b3.Model.SourceGetMetadataResponse.t(),
          :split => GoogleApi.Dataflow.V1b3.Model.SourceSplitResponse.t()
        }

  field(:getMetadata, as: GoogleApi.Dataflow.V1b3.Model.SourceGetMetadataResponse)
  field(:split, as: GoogleApi.Dataflow.V1b3.Model.SourceSplitResponse)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.SourceOperationResponse do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.SourceOperationResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.SourceOperationResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
