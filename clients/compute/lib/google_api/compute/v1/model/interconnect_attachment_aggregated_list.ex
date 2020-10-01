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

defmodule GoogleApi.Compute.V1.Model.InterconnectAttachmentAggregatedList do
  @moduledoc """


  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] Unique identifier for the resource; defined by the server.
  *   `items` (*type:* `%{optional(String.t) => GoogleApi.Compute.V1.Model.InterconnectAttachmentsScopedList.t}`, *default:* `nil`) - A list of InterconnectAttachmentsScopedList resources.
  *   `kind` (*type:* `String.t`, *default:* `compute#interconnectAttachmentAggregatedList`) - [Output Only] Type of resource. Always compute#interconnectAttachmentAggregatedList for aggregated lists of interconnect attachments.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - [Output Only] This token allows you to get the next page of results for list requests. If the number of results is larger than maxResults, use the nextPageToken as a value for the query parameter pageToken in the next list request. Subsequent list requests will have their own nextPageToken to continue paging through the results.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for this resource.
  *   `unreachables` (*type:* `list(String.t)`, *default:* `nil`) - [Output Only] Unreachable resources.
  *   `warning` (*type:* `GoogleApi.Compute.V1.Model.InterconnectAttachmentAggregatedListWarning.t`, *default:* `nil`) - [Output Only] Informational warning message.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :items => %{
            optional(String.t()) =>
              GoogleApi.Compute.V1.Model.InterconnectAttachmentsScopedList.t()
          },
          :kind => String.t(),
          :nextPageToken => String.t(),
          :selfLink => String.t(),
          :unreachables => list(String.t()),
          :warning => GoogleApi.Compute.V1.Model.InterconnectAttachmentAggregatedListWarning.t()
        }

  field(:id)
  field(:items, as: GoogleApi.Compute.V1.Model.InterconnectAttachmentsScopedList, type: :map)
  field(:kind)
  field(:nextPageToken)
  field(:selfLink)
  field(:unreachables, type: :list)
  field(:warning, as: GoogleApi.Compute.V1.Model.InterconnectAttachmentAggregatedListWarning)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectAttachmentAggregatedList do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectAttachmentAggregatedList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectAttachmentAggregatedList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
