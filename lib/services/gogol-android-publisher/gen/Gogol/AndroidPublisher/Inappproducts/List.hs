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
-- Module      : Gogol.AndroidPublisher.Inappproducts.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all in-app products - both managed products and subscriptions. If an app has a large number of in-app products, the response may be paginated. In this case the response field @tokenPagination.nextPageToken@ will be set and the caller should provide its value as a @token@ request parameter to retrieve the next page.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.list@.
module Gogol.AndroidPublisher.Inappproducts.List
  ( -- * Resource
    AndroidPublisherInappproductsListResource,

    -- ** Constructing a Request
    newAndroidPublisherInappproductsList,
    AndroidPublisherInappproductsList,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.inappproducts.list@ method which the
-- 'AndroidPublisherInappproductsList' request conforms to.
type AndroidPublisherInappproductsListResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "inappproducts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "startIndex" Core.Word32
    Core.:> Core.QueryParam "token" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] InappproductsListResponse

-- | Lists all in-app products - both managed products and subscriptions. If an app has a large number of in-app products, the response may be paginated. In this case the response field @tokenPagination.nextPageToken@ will be set and the caller should provide its value as a @token@ request parameter to retrieve the next page.
--
-- /See:/ 'newAndroidPublisherInappproductsList' smart constructor.
data AndroidPublisherInappproductsList = AndroidPublisherInappproductsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Deprecated and ignored. The page size is determined by the server.
    maxResults :: (Core.Maybe Core.Word32),
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Deprecated and ignored. Set the @token@ parameter to rertieve the next page.
    startIndex :: (Core.Maybe Core.Word32),
    -- | Pagination token. If empty, list starts at the first product.
    token :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherInappproductsList' with the minimum fields required to make a request.
newAndroidPublisherInappproductsList ::
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  AndroidPublisherInappproductsList
newAndroidPublisherInappproductsList packageName =
  AndroidPublisherInappproductsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      maxResults = Core.Nothing,
      packageName = packageName,
      startIndex = Core.Nothing,
      token = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherInappproductsList
  where
  type
    Rs AndroidPublisherInappproductsList =
      InappproductsListResponse
  type
    Scopes AndroidPublisherInappproductsList =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient AndroidPublisherInappproductsList {..} =
    go
      packageName
      xgafv
      accessToken
      callback
      maxResults
      startIndex
      token
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherInappproductsListResource
          )
          Core.mempty
