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
-- Module      : Gogol.ShoppingContent.Content.Orders.Canceltestorderbycustomer
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sandbox only. Cancels a test order for customer-initiated cancellation.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.canceltestorderbycustomer@.
module Gogol.ShoppingContent.Content.Orders.Canceltestorderbycustomer
    (
    -- * Resource
      ContentOrdersCanceltestorderbycustomerResource

    -- ** Constructing a Request
    , newContentOrdersCanceltestorderbycustomer
    , ContentOrdersCanceltestorderbycustomer
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.orders.canceltestorderbycustomer@ method which the
-- 'ContentOrdersCanceltestorderbycustomer' request conforms to.
type ContentOrdersCanceltestorderbycustomerResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "testorders" Core.:>
             Core.Capture "orderId" Core.Text Core.:>
               "cancelByCustomer" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON]
                               OrdersCancelTestOrderByCustomerRequest
                               Core.:>
                               Core.Post '[Core.JSON]
                                 OrdersCancelTestOrderByCustomerResponse

-- | Sandbox only. Cancels a test order for customer-initiated cancellation.
--
-- /See:/ 'newContentOrdersCanceltestorderbycustomer' smart constructor.
data ContentOrdersCanceltestorderbycustomer = ContentOrdersCanceltestorderbycustomer
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the account that manages the order. This cannot be a multi-client account.
    , merchantId :: Core.Word64
      -- | The ID of the test order to cancel.
    , orderId :: Core.Text
      -- | Multipart request metadata.
    , payload :: OrdersCancelTestOrderByCustomerRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrdersCanceltestorderbycustomer' with the minimum fields required to make a request.
newContentOrdersCanceltestorderbycustomer 
    ::  Core.Word64
       -- ^  The ID of the account that manages the order. This cannot be a multi-client account. See 'merchantId'.
    -> Core.Text
       -- ^  The ID of the test order to cancel. See 'orderId'.
    -> OrdersCancelTestOrderByCustomerRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContentOrdersCanceltestorderbycustomer
newContentOrdersCanceltestorderbycustomer merchantId orderId payload =
  ContentOrdersCanceltestorderbycustomer
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , merchantId = merchantId
    , orderId = orderId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentOrdersCanceltestorderbycustomer
         where
        type Rs ContentOrdersCanceltestorderbycustomer =
             OrdersCancelTestOrderByCustomerResponse
        type Scopes ContentOrdersCanceltestorderbycustomer =
             '["https://www.googleapis.com/auth/content"]
        requestClient
          ContentOrdersCanceltestorderbycustomer{..}
          = go merchantId orderId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContentOrdersCanceltestorderbycustomerResource)
                      Core.mempty

