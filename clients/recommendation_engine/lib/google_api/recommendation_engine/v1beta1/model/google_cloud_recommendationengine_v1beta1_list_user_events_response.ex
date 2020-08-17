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

defmodule GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ListUserEventsResponse do
  @moduledoc """
  Response message for ListUserEvents method.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - If empty, the list is complete. If nonempty, the token to pass to the next request's ListUserEvents.page_token.
  *   `userEvents` (*type:* `list(GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserEvent.t)`, *default:* `nil`) - The user events.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :userEvents =>
            list(
              GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserEvent.t()
            )
        }

  field(:nextPageToken)

  field(:userEvents,
    as:
      GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserEvent,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ListUserEventsResponse do
  def decode(value, options) do
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ListUserEventsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ListUserEventsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
