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

defmodule GoogleApi.ManagedIdentities.V1.Model.ListDomainsResponse do
  @moduledoc """
  Response message for ListDomains

  ## Attributes

  *   `domains` (*type:* `list(GoogleApi.ManagedIdentities.V1.Model.Domain.t)`, *default:* `nil`) - A list of Managed Identities Service domains in the project.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to retrieve the next page of results, or empty if there are no more results in the list.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - A list of locations that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :domains => list(GoogleApi.ManagedIdentities.V1.Model.Domain.t()),
          :nextPageToken => String.t(),
          :unreachable => list(String.t())
        }

  field(:domains, as: GoogleApi.ManagedIdentities.V1.Model.Domain, type: :list)
  field(:nextPageToken)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ManagedIdentities.V1.Model.ListDomainsResponse do
  def decode(value, options) do
    GoogleApi.ManagedIdentities.V1.Model.ListDomainsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ManagedIdentities.V1.Model.ListDomainsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
