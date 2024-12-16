{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ShoppingContent.Content.Orders.Createtestreturn
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sandbox only. Creates a test return.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.createtestreturn@.
module Gogol.ShoppingContent.Content.Orders.Createtestreturn
    (
    -- * Resource
      ContentOrdersCreatetestreturnResource

    -- ** Constructing a Request
    , ContentOrdersCreatetestreturn (..)
    , newContentOrdersCreatetestreturn
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.orders.createtestreturn@ method which the
-- 'ContentOrdersCreatetestreturn' request conforms to.
type ContentOrdersCreatetestreturnResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "orders" Core.:>
             Core.Capture "orderId" Core.Text Core.:>
               "testreturn" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON]
                               OrdersCreateTestReturnRequest
                               Core.:>
                               Core.Post '[Core.JSON]
                                 OrdersCreateTestReturnResponse

-- | Sandbox only. Creates a test return.
--
-- /See:/ 'newContentOrdersCreatetestreturn' smart constructor.
data ContentOrdersCreatetestreturn = ContentOrdersCreatetestreturn
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the account that manages the order. This cannot be a multi-client account.
    , merchantId :: Core.Word64
      -- | The ID of the order.
    , orderId :: Core.Text
      -- | Multipart request metadata.
    , payload :: OrdersCreateTestReturnRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrdersCreatetestreturn' with the minimum fields required to make a request.
newContentOrdersCreatetestreturn 
    ::  Core.Word64
       -- ^  The ID of the account that manages the order. This cannot be a multi-client account. See 'merchantId'.
    -> Core.Text
       -- ^  The ID of the order. See 'orderId'.
    -> OrdersCreateTestReturnRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContentOrdersCreatetestreturn
newContentOrdersCreatetestreturn merchantId orderId payload =
  ContentOrdersCreatetestreturn
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
           ContentOrdersCreatetestreturn
         where
        type Rs ContentOrdersCreatetestreturn =
             OrdersCreateTestReturnResponse
        type Scopes ContentOrdersCreatetestreturn =
             '[Content'FullControl]
        requestClient ContentOrdersCreatetestreturn{..}
          = go merchantId orderId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentOrdersCreatetestreturnResource)
                      Core.mempty

