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
-- Module      : Gogol.ShoppingContent.Content.Datafeeds.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a datafeed configuration from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeeds.get@.
module Gogol.ShoppingContent.Content.Datafeeds.Get
  ( -- * Resource
    ContentDatafeedsGetResource,

    -- ** Constructing a Request
    newContentDatafeedsGet,
    ContentDatafeedsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.get@ method which the
-- 'ContentDatafeedsGet' request conforms to.
type ContentDatafeedsGetResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "datafeeds"
    Core.:> Core.Capture "datafeedId" Core.Word64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Datafeed

-- | Retrieves a datafeed configuration from your Merchant Center account.
--
-- /See:/ 'newContentDatafeedsGet' smart constructor.
data ContentDatafeedsGet = ContentDatafeedsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the datafeed.
    datafeedId :: Core.Word64,
    -- | The ID of the account that manages the datafeed. This account cannot be a multi-client account.
    merchantId :: Core.Word64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentDatafeedsGet' with the minimum fields required to make a request.
newContentDatafeedsGet ::
  -- |  The ID of the datafeed. See 'datafeedId'.
  Core.Word64 ->
  -- |  The ID of the account that manages the datafeed. This account cannot be a multi-client account. See 'merchantId'.
  Core.Word64 ->
  ContentDatafeedsGet
newContentDatafeedsGet datafeedId merchantId =
  ContentDatafeedsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      datafeedId = datafeedId,
      merchantId = merchantId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentDatafeedsGet where
  type Rs ContentDatafeedsGet = Datafeed
  type
    Scopes ContentDatafeedsGet =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentDatafeedsGet {..} =
    go
      merchantId
      datafeedId
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
              Core.Proxy ContentDatafeedsGetResource
          )
          Core.mempty
