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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1PortalApiProduct do
  @moduledoc """


  ## Attributes

  *   `approvalType` (*type:* `String.t`, *default:* `nil`) - Approval type (automatic or manual).
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the API product.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name for the API product used in the UI.
  *   `isChecked` (*type:* `boolean()`, *default:* `nil`) - Not used by Apigee hybrid.
  *   `isPublic` (*type:* `boolean()`, *default:* `nil`) - Boolean flag that specifies whether the API product is public or private.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the API product.
  *   `proxies` (*type:* `list(String.t)`, *default:* `nil`) - List of API proxies available in the API product.
  *   `rights` (*type:* `String.t`, *default:* `nil`) - Not used by Apigee hybrid.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the API product.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :approvalType => String.t(),
          :description => String.t(),
          :displayName => String.t(),
          :isChecked => boolean(),
          :isPublic => boolean(),
          :name => String.t(),
          :proxies => list(String.t()),
          :rights => String.t(),
          :status => String.t()
        }

  field(:approvalType)
  field(:description)
  field(:displayName)
  field(:isChecked)
  field(:isPublic)
  field(:name)
  field(:proxies, type: :list)
  field(:rights)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1PortalApiProduct do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1PortalApiProduct.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1PortalApiProduct do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end