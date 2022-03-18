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
-- Module      : Gogol.AndroidPublisher.Purchases.Voidedpurchases.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the purchases that were canceled, refunded or charged-back.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.voidedpurchases.list@.
module Gogol.AndroidPublisher.Purchases.Voidedpurchases.List
  ( -- * Resource
    AndroidPublisherPurchasesVoidedpurchasesListResource,

    -- ** Constructing a Request
    newAndroidPublisherPurchasesVoidedpurchasesList,
    AndroidPublisherPurchasesVoidedpurchasesList,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.purchases.voidedpurchases.list@ method which the
-- 'AndroidPublisherPurchasesVoidedpurchasesList' request conforms to.
type AndroidPublisherPurchasesVoidedpurchasesListResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "purchases"
    Core.:> "voidedpurchases"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "endTime" Core.Int64
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "startIndex" Core.Word32
    Core.:> Core.QueryParam "startTime" Core.Int64
    Core.:> Core.QueryParam "token" Core.Text
    Core.:> Core.QueryParam "type" Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              VoidedPurchasesListResponse

-- | Lists the purchases that were canceled, refunded or charged-back.
--
-- /See:/ 'newAndroidPublisherPurchasesVoidedpurchasesList' smart constructor.
data AndroidPublisherPurchasesVoidedpurchasesList = AndroidPublisherPurchasesVoidedpurchasesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The time, in milliseconds since the Epoch, of the newest voided purchase that you want to see in the response. The value of this parameter cannot be greater than the current time and is ignored if a pagination token is set. Default value is current time. Note: This filter is applied on the time at which the record is seen as voided by our systems and not the actual voided time returned in the response.
    endTime :: (Core.Maybe Core.Int64),
    -- | Defines how many results the list operation should return. The default number depends on the resource collection.
    maxResults :: (Core.Maybe Core.Word32),
    -- | The package name of the application for which voided purchases need to be returned (for example, \'com.some.thing\').
    packageName :: Core.Text,
    -- | Defines the index of the first element to return. This can only be used if indexed paging is enabled.
    startIndex :: (Core.Maybe Core.Word32),
    -- | The time, in milliseconds since the Epoch, of the oldest voided purchase that you want to see in the response. The value of this parameter cannot be older than 30 days and is ignored if a pagination token is set. Default value is current time minus 30 days. Note: This filter is applied on the time at which the record is seen as voided by our systems and not the actual voided time returned in the response.
    startTime :: (Core.Maybe Core.Int64),
    -- | Defines the token of the page to return, usually taken from TokenPagination. This can only be used if token paging is enabled.
    token :: (Core.Maybe Core.Text),
    -- | The type of voided purchases that you want to see in the response. Possible values are: 0. Only voided in-app product purchases will be returned in the response. This is the default value. 1. Both voided in-app purchases and voided subscription purchases will be returned in the response. Note: Before requesting to receive voided subscription purchases, you must switch to use orderId in the response which uniquely identifies one-time purchases and subscriptions. Otherwise, you will receive multiple subscription orders with the same PurchaseToken, because subscription renewal orders share the same PurchaseToken.
    type' :: (Core.Maybe Core.Int32),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherPurchasesVoidedpurchasesList' with the minimum fields required to make a request.
newAndroidPublisherPurchasesVoidedpurchasesList ::
  -- |  The package name of the application for which voided purchases need to be returned (for example, \'com.some.thing\'). See 'packageName'.
  Core.Text ->
  AndroidPublisherPurchasesVoidedpurchasesList
newAndroidPublisherPurchasesVoidedpurchasesList packageName =
  AndroidPublisherPurchasesVoidedpurchasesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      endTime = Core.Nothing,
      maxResults = Core.Nothing,
      packageName = packageName,
      startIndex = Core.Nothing,
      startTime = Core.Nothing,
      token = Core.Nothing,
      type' = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherPurchasesVoidedpurchasesList
  where
  type
    Rs AndroidPublisherPurchasesVoidedpurchasesList =
      VoidedPurchasesListResponse
  type
    Scopes
      AndroidPublisherPurchasesVoidedpurchasesList =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient
    AndroidPublisherPurchasesVoidedpurchasesList {..} =
      go
        packageName
        xgafv
        accessToken
        callback
        endTime
        maxResults
        startIndex
        startTime
        token
        type'
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidPublisherService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidPublisherPurchasesVoidedpurchasesListResource
            )
            Core.mempty
