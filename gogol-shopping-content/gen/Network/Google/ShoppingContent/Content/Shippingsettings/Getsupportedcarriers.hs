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
-- Module      : Network.Google.ShoppingContent.Content.Shippingsettings.Getsupportedcarriers
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves supported carriers and carrier services for an account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.shippingsettings.getsupportedcarriers@.
module Network.Google.ShoppingContent.Content.Shippingsettings.Getsupportedcarriers
  ( -- * Resource
    ContentShippingsettingsGetsupportedcarriersResource,

    -- ** Constructing a Request
    newContentShippingsettingsGetsupportedcarriers,
    ContentShippingsettingsGetsupportedcarriers,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.shippingsettings.getsupportedcarriers@ method which the
-- 'ContentShippingsettingsGetsupportedcarriers' request conforms to.
type ContentShippingsettingsGetsupportedcarriersResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "supportedCarriers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ShippingsettingsGetSupportedCarriersResponse

-- | Retrieves supported carriers and carrier services for an account.
--
-- /See:/ 'newContentShippingsettingsGetsupportedcarriers' smart constructor.
data ContentShippingsettingsGetsupportedcarriers = ContentShippingsettingsGetsupportedcarriers
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the account for which to retrieve the supported carriers.
    merchantId :: Core.Word64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentShippingsettingsGetsupportedcarriers' with the minimum fields required to make a request.
newContentShippingsettingsGetsupportedcarriers ::
  -- |  The ID of the account for which to retrieve the supported carriers. See 'merchantId'.
  Core.Word64 ->
  ContentShippingsettingsGetsupportedcarriers
newContentShippingsettingsGetsupportedcarriers merchantId =
  ContentShippingsettingsGetsupportedcarriers
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentShippingsettingsGetsupportedcarriers
  where
  type
    Rs ContentShippingsettingsGetsupportedcarriers =
      ShippingsettingsGetSupportedCarriersResponse
  type
    Scopes
      ContentShippingsettingsGetsupportedcarriers =
      '["https://www.googleapis.com/auth/content"]
  requestClient
    ContentShippingsettingsGetsupportedcarriers {..} =
      go
        merchantId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        shoppingContentService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContentShippingsettingsGetsupportedcarriersResource
            )
            Core.mempty
