{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.AndroidPublisher.Inappproducts.BatchDelete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes in-app products (managed products or subscriptions). Set the latencyTolerance field on nested requests to PRODUCT/UPDATE/LATENCY/TOLERANCE/LATENCY_TOLERANT to achieve maximum update throughput. This method should not be used to delete subscriptions. See <https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html this article> for more information.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.batchDelete@.
module Gogol.AndroidPublisher.Inappproducts.BatchDelete
  ( -- * Resource
    AndroidPublisherInappproductsBatchDeleteResource,

    -- ** Constructing a Request
    AndroidPublisherInappproductsBatchDelete (..),
    newAndroidPublisherInappproductsBatchDelete,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.inappproducts.batchDelete@ method which the
-- 'AndroidPublisherInappproductsBatchDelete' request conforms to.
type AndroidPublisherInappproductsBatchDeleteResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "inappproducts:batchDelete"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] InappproductsBatchDeleteRequest
    Core.:> Core.Post '[Core.JSON] ()

-- | Deletes in-app products (managed products or subscriptions). Set the latencyTolerance field on nested requests to PRODUCT/UPDATE/LATENCY/TOLERANCE/LATENCY_TOLERANT to achieve maximum update throughput. This method should not be used to delete subscriptions. See <https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html this article> for more information.
--
-- /See:/ 'newAndroidPublisherInappproductsBatchDelete' smart constructor.
data AndroidPublisherInappproductsBatchDelete = AndroidPublisherInappproductsBatchDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: InappproductsBatchDeleteRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherInappproductsBatchDelete' with the minimum fields required to make a request.
newAndroidPublisherInappproductsBatchDelete ::
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  InappproductsBatchDeleteRequest ->
  AndroidPublisherInappproductsBatchDelete
newAndroidPublisherInappproductsBatchDelete packageName payload =
  AndroidPublisherInappproductsBatchDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherInappproductsBatchDelete
  where
  type Rs AndroidPublisherInappproductsBatchDelete = ()
  type
    Scopes AndroidPublisherInappproductsBatchDelete =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherInappproductsBatchDelete {..} =
    go
      packageName
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherInappproductsBatchDeleteResource
          )
          Core.mempty
