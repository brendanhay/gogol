{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AndroidPublisher.Purchases.Products.Acknowledge
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Acknowledges a purchase of an inapp item.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.products.acknowledge@.
module Gogol.AndroidPublisher.Purchases.Products.Acknowledge
    (
    -- * Resource
      AndroidPublisherPurchasesProductsAcknowledgeResource

    -- ** Constructing a Request
    , newAndroidPublisherPurchasesProductsAcknowledge
    , AndroidPublisherPurchasesProductsAcknowledge
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.purchases.products.acknowledge@ method which the
-- 'AndroidPublisherPurchasesProductsAcknowledge' request conforms to.
type AndroidPublisherPurchasesProductsAcknowledgeResource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "purchases" Core.:>
               "products" Core.:>
                 Core.Capture "productId" Core.Text Core.:>
                   "tokens" Core.:>
                     Core.CaptureMode "token" "acknowledge" Core.Text
                       Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON]
                                     ProductPurchasesAcknowledgeRequest
                                     Core.:> Core.Post '[Core.JSON] ()

-- | Acknowledges a purchase of an inapp item.
--
-- /See:/ 'newAndroidPublisherPurchasesProductsAcknowledge' smart constructor.
data AndroidPublisherPurchasesProductsAcknowledge = AndroidPublisherPurchasesProductsAcknowledge
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The package name of the application the inapp product was sold in (for example, \'com.some.thing\').
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: ProductPurchasesAcknowledgeRequest
      -- | The inapp product SKU (for example, \'com.some.thing.inapp1\').
    , productId :: Core.Text
      -- | The token provided to the user\'s device when the inapp product was purchased.
    , token :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherPurchasesProductsAcknowledge' with the minimum fields required to make a request.
newAndroidPublisherPurchasesProductsAcknowledge 
    ::  Core.Text
       -- ^  The package name of the application the inapp product was sold in (for example, \'com.some.thing\'). See 'packageName'.
    -> ProductPurchasesAcknowledgeRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The inapp product SKU (for example, \'com.some.thing.inapp1\'). See 'productId'.
    -> Core.Text
       -- ^  The token provided to the user\'s device when the inapp product was purchased. See 'token'.
    -> AndroidPublisherPurchasesProductsAcknowledge
newAndroidPublisherPurchasesProductsAcknowledge packageName payload productId token =
  AndroidPublisherPurchasesProductsAcknowledge
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , packageName = packageName
    , payload = payload
    , productId = productId
    , token = token
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidPublisherPurchasesProductsAcknowledge
         where
        type Rs AndroidPublisherPurchasesProductsAcknowledge
             = ()
        type Scopes
               AndroidPublisherPurchasesProductsAcknowledge
             =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient
          AndroidPublisherPurchasesProductsAcknowledge{..}
          = go packageName productId token xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherPurchasesProductsAcknowledgeResource)
                      Core.mempty

