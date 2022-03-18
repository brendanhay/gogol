{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.ShoppingContent.Content.Liasettings.Setposdataprovider
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the POS data provider for the specified country.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.liasettings.setposdataprovider@.
module Network.Google.ShoppingContent.Content.Liasettings.Setposdataprovider
  ( -- * Resource
    ContentLiasettingsSetposdataproviderResource,

    -- ** Constructing a Request
    newContentLiasettingsSetposdataprovider,
    ContentLiasettingsSetposdataprovider,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.setposdataprovider@ method which the
-- 'ContentLiasettingsSetposdataprovider' request conforms to.
type ContentLiasettingsSetposdataproviderResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "liasettings"
    Core.:> Core.Capture "accountId" Core.Word64
    Core.:> "setposdataprovider"
    Core.:> Core.QueryParam "country" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "posDataProviderId" Core.Word64
    Core.:> Core.QueryParam "posExternalAccountId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post
              '[Core.JSON]
              LiasettingsSetPosDataProviderResponse

-- | Sets the POS data provider for the specified country.
--
-- /See:/ 'newContentLiasettingsSetposdataprovider' smart constructor.
data ContentLiasettingsSetposdataprovider = ContentLiasettingsSetposdataprovider
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The ID of the account for which to retrieve accessible Business Profiles.
    accountId :: Core.Word64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The country for which the POS data provider is selected.
    country :: Core.Text,
    -- | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and @accountId@ must be the ID of a sub-account of this account.
    merchantId :: Core.Word64,
    -- | The ID of POS data provider.
    posDataProviderId :: (Core.Maybe Core.Word64),
    -- | The account ID by which this merchant is known to the POS data provider.
    posExternalAccountId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentLiasettingsSetposdataprovider' with the minimum fields required to make a request.
newContentLiasettingsSetposdataprovider ::
  -- |  The ID of the account for which to retrieve accessible Business Profiles. See 'accountId'.
  Core.Word64 ->
  -- |  The country for which the POS data provider is selected. See 'country'.
  Core.Text ->
  -- |  The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and @accountId@ must be the ID of a sub-account of this account. See 'merchantId'.
  Core.Word64 ->
  ContentLiasettingsSetposdataprovider
newContentLiasettingsSetposdataprovider accountId country merchantId =
  ContentLiasettingsSetposdataprovider
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      country = country,
      merchantId = merchantId,
      posDataProviderId = Core.Nothing,
      posExternalAccountId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentLiasettingsSetposdataprovider
  where
  type
    Rs ContentLiasettingsSetposdataprovider =
      LiasettingsSetPosDataProviderResponse
  type
    Scopes ContentLiasettingsSetposdataprovider =
      '["https://www.googleapis.com/auth/content"]
  requestClient
    ContentLiasettingsSetposdataprovider {..} =
      go
        merchantId
        accountId
        (Core.Just country)
        xgafv
        accessToken
        callback
        posDataProviderId
        posExternalAccountId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        shoppingContentService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContentLiasettingsSetposdataproviderResource
            )
            Core.mempty
