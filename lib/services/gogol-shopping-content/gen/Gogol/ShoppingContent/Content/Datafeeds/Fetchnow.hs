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
-- Module      : Gogol.ShoppingContent.Content.Datafeeds.Fetchnow
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Invokes a fetch for the datafeed in your Merchant Center account. If you need to call this method more than once per day, we recommend you use the Products service to update your product data.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeeds.fetchnow@.
module Gogol.ShoppingContent.Content.Datafeeds.Fetchnow
  ( -- * Resource
    ContentDatafeedsFetchnowResource,

    -- ** Constructing a Request
    newContentDatafeedsFetchnow,
    ContentDatafeedsFetchnow,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.fetchnow@ method which the
-- 'ContentDatafeedsFetchnow' request conforms to.
type ContentDatafeedsFetchnowResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "datafeeds"
    Core.:> Core.Capture "datafeedId" Core.Word64
    Core.:> "fetchNow"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] DatafeedsFetchNowResponse

-- | Invokes a fetch for the datafeed in your Merchant Center account. If you need to call this method more than once per day, we recommend you use the Products service to update your product data.
--
-- /See:/ 'newContentDatafeedsFetchnow' smart constructor.
data ContentDatafeedsFetchnow = ContentDatafeedsFetchnow
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the datafeed to be fetched.
    datafeedId :: Core.Word64,
    -- | The ID of the account that manages the datafeed. This account cannot be a multi-client account.
    merchantId :: Core.Word64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentDatafeedsFetchnow' with the minimum fields required to make a request.
newContentDatafeedsFetchnow ::
  -- |  The ID of the datafeed to be fetched. See 'datafeedId'.
  Core.Word64 ->
  -- |  The ID of the account that manages the datafeed. This account cannot be a multi-client account. See 'merchantId'.
  Core.Word64 ->
  ContentDatafeedsFetchnow
newContentDatafeedsFetchnow datafeedId merchantId =
  ContentDatafeedsFetchnow
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      datafeedId = datafeedId,
      merchantId = merchantId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentDatafeedsFetchnow where
  type
    Rs ContentDatafeedsFetchnow =
      DatafeedsFetchNowResponse
  type
    Scopes ContentDatafeedsFetchnow =
      '[Content'FullControl]
  requestClient ContentDatafeedsFetchnow {..} =
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
              Core.Proxy ContentDatafeedsFetchnowResource
          )
          Core.mempty
