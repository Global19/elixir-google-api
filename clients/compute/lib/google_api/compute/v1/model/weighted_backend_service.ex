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

defmodule GoogleApi.Compute.V1.Model.WeightedBackendService do
  @moduledoc """
  In contrast to a single BackendService in  HttpRouteAction to which all matching traffic is directed to, WeightedBackendService allows traffic to be split across multiple BackendServices. The volume of traffic for each BackendService is proportional to the weight specified in each WeightedBackendService

  ## Attributes

  *   `backendService` (*type:* `String.t`, *default:* `nil`) - The full or partial URL to the default BackendService resource. Before forwarding the request to backendService, the loadbalancer applies any relevant headerActions specified as part of this backendServiceWeight.
  *   `headerAction` (*type:* `GoogleApi.Compute.V1.Model.HttpHeaderAction.t`, *default:* `nil`) - Specifies changes to request and response headers that need to take effect for the selected backendService.
      headerAction specified here take effect before headerAction in the enclosing HttpRouteRule, PathMatcher and UrlMap.
  *   `weight` (*type:* `integer()`, *default:* `nil`) - Specifies the fraction of traffic sent to backendService, computed as weight / (sum of all weightedBackendService weights in routeAction) .
      The selection of a backend service is determined only for new traffic. Once a user's request has been directed to a backendService, subsequent requests will be sent to the same backendService as determined by the BackendService's session affinity policy.
      The value must be between 0 and 1000
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backendService => String.t(),
          :headerAction => GoogleApi.Compute.V1.Model.HttpHeaderAction.t(),
          :weight => integer()
        }

  field(:backendService)
  field(:headerAction, as: GoogleApi.Compute.V1.Model.HttpHeaderAction)
  field(:weight)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.WeightedBackendService do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.WeightedBackendService.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.WeightedBackendService do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end