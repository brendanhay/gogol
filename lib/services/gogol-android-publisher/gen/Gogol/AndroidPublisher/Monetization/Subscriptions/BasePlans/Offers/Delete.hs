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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a subscription offer. Can only be done for draft offers. This action is irreversible.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.basePlans.offers.delete@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Delete
  ( -- * Resource
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeleteResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.monetization.subscriptions.basePlans.offers.delete@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete' request conforms to.
type AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeleteResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "basePlans"
    Core.:> Core.Capture "basePlanId" Core.Text
    Core.:> "offers"
    Core.:> Core.Capture "offerId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a subscription offer. Can only be done for draft offers. This action is irreversible.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete' smart constructor.
data AndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete = AndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The parent base plan (ID) of the offer to delete.
    basePlanId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique offer ID of the offer to delete.
    offerId :: Core.Text,
    -- | Required. The parent app (package name) of the offer to delete.
    packageName :: Core.Text,
    -- | Required. The parent subscription (ID) of the offer to delete.
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete ::
  -- |  Required. The parent base plan (ID) of the offer to delete. See 'basePlanId'.
  Core.Text ->
  -- |  Required. The unique offer ID of the offer to delete. See 'offerId'.
  Core.Text ->
  -- |  Required. The parent app (package name) of the offer to delete. See 'packageName'.
  Core.Text ->
  -- |  Required. The parent subscription (ID) of the offer to delete. See 'productId'.
  Core.Text ->
  AndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete basePlanId offerId packageName productId =
  AndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      basePlanId = basePlanId,
      callback = Core.Nothing,
      offerId = offerId,
      packageName = packageName,
      productId = productId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete
  where
  type
    Rs
      AndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete =
      ()
  type
    Scopes
      AndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersDelete {..} =
      go
        packageName
        productId
        basePlanId
        offerId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidPublisherService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeleteResource
            )
            Core.mempty
