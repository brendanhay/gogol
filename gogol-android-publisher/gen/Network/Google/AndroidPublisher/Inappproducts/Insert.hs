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
-- Module      : Network.Google.AndroidPublisher.Inappproducts.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an in-app product (i.e. a managed product or a subscriptions).
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.insert@.
module Network.Google.AndroidPublisher.Inappproducts.Insert
  ( -- * Resource
    AndroidPublisherInappproductsInsertResource,

    -- ** Constructing a Request
    newAndroidPublisherInappproductsInsert,
    AndroidPublisherInappproductsInsert,
  )
where

import Network.Google.AndroidPublisher.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @androidpublisher.inappproducts.insert@ method which the
-- 'AndroidPublisherInappproductsInsert' request conforms to.
type AndroidPublisherInappproductsInsertResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "inappproducts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "autoConvertMissingPrices" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] InAppProduct
    Core.:> Core.Post '[Core.JSON] InAppProduct

-- | Creates an in-app product (i.e. a managed product or a subscriptions).
--
-- /See:/ 'newAndroidPublisherInappproductsInsert' smart constructor.
data AndroidPublisherInappproductsInsert = AndroidPublisherInappproductsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | If true the prices for all regions targeted by the parent app that don\'t have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.
    autoConvertMissingPrices :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: InAppProduct,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherInappproductsInsert' with the minimum fields required to make a request.
newAndroidPublisherInappproductsInsert ::
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  InAppProduct ->
  AndroidPublisherInappproductsInsert
newAndroidPublisherInappproductsInsert packageName payload =
  AndroidPublisherInappproductsInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      autoConvertMissingPrices = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherInappproductsInsert
  where
  type
    Rs AndroidPublisherInappproductsInsert =
      InAppProduct
  type
    Scopes AndroidPublisherInappproductsInsert =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient AndroidPublisherInappproductsInsert {..} =
    go
      packageName
      xgafv
      accessToken
      autoConvertMissingPrices
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
              Core.Proxy
                AndroidPublisherInappproductsInsertResource
          )
          Core.mempty
