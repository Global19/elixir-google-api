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

defmodule GoogleApi.HealthCare.V1beta1.Model.CheckDataAccessRequest do
  @moduledoc """
  Checks if a particular data_id of a User data mapping in the given Consent store is consented for a given use.

  ## Attributes

  *   `consentList` (*type:* `GoogleApi.HealthCare.V1beta1.Model.ConsentList.t`, *default:* `nil`) - The Consents to evaluate the access request against. They must have the same `user_id` as the data to check access for, exist in the current `consent_store`, and can have a `state` of either `ACTIVE` or `DRAFT`. A maximum of 100 consents can be provided here.
  *   `dataId` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the data to check access for. It must exist in the given `consent_store`.
  *   `requestAttributes` (*type:* `map()`, *default:* `nil`) - The values of request attributes associated with this access request.
  *   `responseView` (*type:* `String.t`, *default:* `nil`) - The view for CheckDataAccessResponse.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consentList => GoogleApi.HealthCare.V1beta1.Model.ConsentList.t(),
          :dataId => String.t(),
          :requestAttributes => map(),
          :responseView => String.t()
        }

  field(:consentList, as: GoogleApi.HealthCare.V1beta1.Model.ConsentList)
  field(:dataId)
  field(:requestAttributes, type: :map)
  field(:responseView)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.CheckDataAccessRequest do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.CheckDataAccessRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.CheckDataAccessRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
