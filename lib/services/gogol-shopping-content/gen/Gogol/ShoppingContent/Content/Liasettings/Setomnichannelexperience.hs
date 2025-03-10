{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ShoppingContent.Content.Liasettings.Setomnichannelexperience
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the omnichannel experience for the specified country. Only supported for merchants whose POS data provider is trusted to enable the corresponding experience. For more context, see these help articles <https://support.google.com/merchants/answer/7676652 about LFP> and <https://support.google.com/merchants/answer/7676578 how to get started> with it.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.liasettings.setomnichannelexperience@.
module Gogol.ShoppingContent.Content.Liasettings.Setomnichannelexperience
  ( -- * Resource
    ContentLiasettingsSetomnichannelexperienceResource,

    -- ** Constructing a Request
    ContentLiasettingsSetomnichannelexperience (..),
    newContentLiasettingsSetomnichannelexperience,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.liasettings.setomnichannelexperience@ method which the
-- 'ContentLiasettingsSetomnichannelexperience' request conforms to.
type ContentLiasettingsSetomnichannelexperienceResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "liasettings"
    Core.:> Core.Capture "accountId" Core.Word64
    Core.:> "setomnichannelexperience"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "country" Core.Text
    Core.:> Core.QueryParam "lsfType" Core.Text
    Core.:> Core.QueryParams "pickupTypes" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] LiaOmnichannelExperience

-- | Sets the omnichannel experience for the specified country. Only supported for merchants whose POS data provider is trusted to enable the corresponding experience. For more context, see these help articles <https://support.google.com/merchants/answer/7676652 about LFP> and <https://support.google.com/merchants/answer/7676578 how to get started> with it.
--
-- /See:/ 'newContentLiasettingsSetomnichannelexperience' smart constructor.
data ContentLiasettingsSetomnichannelexperience = ContentLiasettingsSetomnichannelexperience
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The ID of the account for which to retrieve accessible Business Profiles.
    accountId :: Core.Word64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The CLDR country code (for example, \"US\") for which the omnichannel experience is selected.
    country :: (Core.Maybe Core.Text),
    -- | The Local Store Front (LSF) type for this country. Acceptable values are: - \"@ghlsf@\" (Google-Hosted Local Store Front) - \"@mhlsfBasic@\" (Merchant-Hosted Local Store Front Basic) - \"@mhlsfFull@\" (Merchant-Hosted Local Store Front Full) More details about these types can be found here.
    lsfType :: (Core.Maybe Core.Text),
    -- | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and @accountId@ must be the ID of a sub-account of this account.
    merchantId :: Core.Word64,
    -- | The Pickup types for this country. Acceptable values are: - \"@pickupToday@\" - \"@pickupLater@\"
    pickupTypes :: (Core.Maybe [Core.Text]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentLiasettingsSetomnichannelexperience' with the minimum fields required to make a request.
newContentLiasettingsSetomnichannelexperience ::
  -- |  The ID of the account for which to retrieve accessible Business Profiles. See 'accountId'.
  Core.Word64 ->
  -- |  The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and @accountId@ must be the ID of a sub-account of this account. See 'merchantId'.
  Core.Word64 ->
  ContentLiasettingsSetomnichannelexperience
newContentLiasettingsSetomnichannelexperience accountId merchantId =
  ContentLiasettingsSetomnichannelexperience
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      country = Core.Nothing,
      lsfType = Core.Nothing,
      merchantId = merchantId,
      pickupTypes = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentLiasettingsSetomnichannelexperience
  where
  type
    Rs ContentLiasettingsSetomnichannelexperience =
      LiaOmnichannelExperience
  type
    Scopes ContentLiasettingsSetomnichannelexperience =
      '[Content'FullControl]
  requestClient ContentLiasettingsSetomnichannelexperience {..} =
    go
      merchantId
      accountId
      xgafv
      accessToken
      callback
      country
      lsfType
      (pickupTypes Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentLiasettingsSetomnichannelexperienceResource
          )
          Core.mempty
