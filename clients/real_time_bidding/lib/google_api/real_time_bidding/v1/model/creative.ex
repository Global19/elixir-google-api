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

defmodule GoogleApi.RealTimeBidding.V1.Model.Creative do
  @moduledoc """
  A creative and its classification data.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Output only. ID of the buyer account that this creative is owned by. Can be used to filter the response of the creatives.list method with equality and inequality check.
  *   `adChoicesDestinationUrl` (*type:* `String.t`, *default:* `nil`) - The link to AdChoices destination page. This is only supported for native ads.
  *   `advertiserName` (*type:* `String.t`, *default:* `nil`) - The name of the company being advertised in the creative. Can be used to filter the response of the creatives.list method.
  *   `agencyId` (*type:* `String.t`, *default:* `nil`) - The agency ID for this creative.
  *   `apiUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last update timestamp of the creative via API.
  *   `creativeFormat` (*type:* `String.t`, *default:* `nil`) - Output only. The format of this creative. Can be used to filter the response of the creatives.list method.
  *   `creativeId` (*type:* `String.t`, *default:* `nil`) - Buyer-specific creative ID that references this creative in bid responses. This field is Ignored in update operations. Can be used to filter the response of the creatives.list method. The maximum length of the creative ID is 128 bytes.
  *   `creativeServingDecision` (*type:* `GoogleApi.RealTimeBidding.V1.Model.CreativeServingDecision.t`, *default:* `nil`) - Output only. Top level status and detected attributes of a creative (for example domain, language, advertiser, product category, etc.) that affect whether (status) and where (context) a creative will be allowed to serve.
  *   `dealIds` (*type:* `list(String.t)`, *default:* `nil`) - Output only. IDs of all of the deals with which this creative has been used in bidding. Can be used to filter the response of the creatives.list method.
  *   `declaredAttributes` (*type:* `list(String.t)`, *default:* `nil`) - All declared attributes for the ads that may be shown from this creative. Can be used to filter the response of the creatives.list method. If the `excluded_attribute` field of a [bid request](https://developers.google.com/authorized-buyers/rtb/downloads/realtime-bidding-proto") contains one of the attributes that were declared or detected for a given creative, and a bid is submitted with that creative, the bid will be filtered before the auction.
  *   `declaredClickThroughUrls` (*type:* `list(String.t)`, *default:* `nil`) - The set of declared destination URLs for the creative. Can be used to filter the response of the creatives.list method.
  *   `declaredRestrictedCategories` (*type:* `list(String.t)`, *default:* `nil`) - All declared restricted categories for the ads that may be shown from this creative. Can be used to filter the response of the creatives.list method.
  *   `declaredVendorIds` (*type:* `list(integer())`, *default:* `nil`) - IDs for the declared ad technology vendors that may be used by this creative. See https://storage.googleapis.com/adx-rtb-dictionaries/vendors.txt for possible values. Can be used to filter the response of the creatives.list method.
  *   `html` (*type:* `GoogleApi.RealTimeBidding.V1.Model.HtmlContent.t`, *default:* `nil`) - An HTML creative.
  *   `impressionTrackingUrls` (*type:* `list(String.t)`, *default:* `nil`) - The set of URLs to be called to record an impression.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the creative. Follows the pattern `buyers/{buyer}/creatives/{creative}`, where `{buyer}` represents the account ID of the buyer who owns the creative, and `{creative}` is the buyer-specific creative ID that references this creative in the bid response.
  *   `native` (*type:* `GoogleApi.RealTimeBidding.V1.Model.NativeContent.t`, *default:* `nil`) - A native creative.
  *   `restrictedCategories` (*type:* `list(String.t)`, *default:* `nil`) - All restricted categories for the ads that may be shown from this creative.
  *   `version` (*type:* `integer()`, *default:* `nil`) - Output only. The version of this creative. Version for a new creative is 1 and it increments during subsequent creative updates.
  *   `video` (*type:* `GoogleApi.RealTimeBidding.V1.Model.VideoContent.t`, *default:* `nil`) - A video creative.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :adChoicesDestinationUrl => String.t(),
          :advertiserName => String.t(),
          :agencyId => String.t(),
          :apiUpdateTime => DateTime.t(),
          :creativeFormat => String.t(),
          :creativeId => String.t(),
          :creativeServingDecision =>
            GoogleApi.RealTimeBidding.V1.Model.CreativeServingDecision.t(),
          :dealIds => list(String.t()),
          :declaredAttributes => list(String.t()),
          :declaredClickThroughUrls => list(String.t()),
          :declaredRestrictedCategories => list(String.t()),
          :declaredVendorIds => list(integer()),
          :html => GoogleApi.RealTimeBidding.V1.Model.HtmlContent.t(),
          :impressionTrackingUrls => list(String.t()),
          :name => String.t(),
          :native => GoogleApi.RealTimeBidding.V1.Model.NativeContent.t(),
          :restrictedCategories => list(String.t()),
          :version => integer(),
          :video => GoogleApi.RealTimeBidding.V1.Model.VideoContent.t()
        }

  field(:accountId)
  field(:adChoicesDestinationUrl)
  field(:advertiserName)
  field(:agencyId)
  field(:apiUpdateTime, as: DateTime)
  field(:creativeFormat)
  field(:creativeId)
  field(:creativeServingDecision, as: GoogleApi.RealTimeBidding.V1.Model.CreativeServingDecision)
  field(:dealIds, type: :list)
  field(:declaredAttributes, type: :list)
  field(:declaredClickThroughUrls, type: :list)
  field(:declaredRestrictedCategories, type: :list)
  field(:declaredVendorIds, type: :list)
  field(:html, as: GoogleApi.RealTimeBidding.V1.Model.HtmlContent)
  field(:impressionTrackingUrls, type: :list)
  field(:name)
  field(:native, as: GoogleApi.RealTimeBidding.V1.Model.NativeContent)
  field(:restrictedCategories, type: :list)
  field(:version)
  field(:video, as: GoogleApi.RealTimeBidding.V1.Model.VideoContent)
end

defimpl Poison.Decoder, for: GoogleApi.RealTimeBidding.V1.Model.Creative do
  def decode(value, options) do
    GoogleApi.RealTimeBidding.V1.Model.Creative.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RealTimeBidding.V1.Model.Creative do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
