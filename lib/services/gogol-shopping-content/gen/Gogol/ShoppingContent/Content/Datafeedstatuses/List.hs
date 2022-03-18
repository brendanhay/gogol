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
-- Module      : Gogol.ShoppingContent.Content.Datafeedstatuses.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the statuses of the datafeeds in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeedstatuses.list@.
module Gogol.ShoppingContent.Content.Datafeedstatuses.List
  ( -- * Resource
    ContentDatafeedstatusesListResource,

    -- ** Constructing a Request
    newContentDatafeedstatusesList,
    ContentDatafeedstatusesList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.datafeedstatuses.list@ method which the
-- 'ContentDatafeedstatusesList' request conforms to.
type ContentDatafeedstatusesListResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "datafeedstatuses"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DatafeedstatusesListResponse

-- | Lists the statuses of the datafeeds in your Merchant Center account.
--
-- /See:/ 'newContentDatafeedstatusesList' smart constructor.
data ContentDatafeedstatusesList = ContentDatafeedstatusesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of products to return in the response, used for paging.
    maxResults :: (Core.Maybe Core.Word32),
    -- | The ID of the account that manages the datafeeds. This account cannot be a multi-client account.
    merchantId :: Core.Word64,
    -- | The token returned by the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentDatafeedstatusesList' with the minimum fields required to make a request.
newContentDatafeedstatusesList ::
  -- |  The ID of the account that manages the datafeeds. This account cannot be a multi-client account. See 'merchantId'.
  Core.Word64 ->
  ContentDatafeedstatusesList
newContentDatafeedstatusesList merchantId =
  ContentDatafeedstatusesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      maxResults = Core.Nothing,
      merchantId = merchantId,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentDatafeedstatusesList
  where
  type
    Rs ContentDatafeedstatusesList =
      DatafeedstatusesListResponse
  type
    Scopes ContentDatafeedstatusesList =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentDatafeedstatusesList {..} =
    go
      merchantId
      xgafv
      accessToken
      callback
      maxResults
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentDatafeedstatusesListResource
          )
          Core.mempty
