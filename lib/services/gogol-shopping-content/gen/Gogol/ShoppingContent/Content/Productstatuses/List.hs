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
-- Module      : Gogol.ShoppingContent.Content.Productstatuses.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the statuses of the products in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.productstatuses.list@.
module Gogol.ShoppingContent.Content.Productstatuses.List
  ( -- * Resource
    ContentProductstatusesListResource,

    -- ** Constructing a Request
    ContentProductstatusesList (..),
    newContentProductstatusesList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.productstatuses.list@ method which the
-- 'ContentProductstatusesList' request conforms to.
type ContentProductstatusesListResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "productstatuses"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "destinations" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ProductstatusesListResponse

-- | Lists the statuses of the products in your Merchant Center account.
--
-- /See:/ 'newContentProductstatusesList' smart constructor.
data ContentProductstatusesList = ContentProductstatusesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination.
    destinations :: (Core.Maybe [Core.Text]),
    -- | The maximum number of product statuses to return in the response, used for paging.
    maxResults :: (Core.Maybe Core.Word32),
    -- | The ID of the account that contains the products. This account cannot be a multi-client account.
    merchantId :: Core.Word64,
    -- | The token returned by the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentProductstatusesList' with the minimum fields required to make a request.
newContentProductstatusesList ::
  -- |  The ID of the account that contains the products. This account cannot be a multi-client account. See 'merchantId'.
  Core.Word64 ->
  ContentProductstatusesList
newContentProductstatusesList merchantId =
  ContentProductstatusesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      destinations = Core.Nothing,
      maxResults = Core.Nothing,
      merchantId = merchantId,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentProductstatusesList
  where
  type
    Rs ContentProductstatusesList =
      ProductstatusesListResponse
  type
    Scopes ContentProductstatusesList =
      '[Content'FullControl]
  requestClient ContentProductstatusesList {..} =
    go
      merchantId
      xgafv
      accessToken
      callback
      (destinations Core.^. Core._Default)
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
              Core.Proxy ContentProductstatusesListResource
          )
          Core.mempty
