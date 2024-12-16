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
-- Module      : Gogol.ShoppingContent.Content.Orderreturns.Createorderreturn
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create return in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orderreturns.createorderreturn@.
module Gogol.ShoppingContent.Content.Orderreturns.Createorderreturn
    (
    -- * Resource
      ContentOrderreturnsCreateorderreturnResource

    -- ** Constructing a Request
    , ContentOrderreturnsCreateorderreturn (..)
    , newContentOrderreturnsCreateorderreturn
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.orderreturns.createorderreturn@ method which the
-- 'ContentOrderreturnsCreateorderreturn' request conforms to.
type ContentOrderreturnsCreateorderreturnResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "orderreturns" Core.:>
             "createOrderReturn" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON]
                             OrderreturnsCreateOrderReturnRequest
                             Core.:>
                             Core.Post '[Core.JSON]
                               OrderreturnsCreateOrderReturnResponse

-- | Create return in your Merchant Center account.
--
-- /See:/ 'newContentOrderreturnsCreateorderreturn' smart constructor.
data ContentOrderreturnsCreateorderreturn = ContentOrderreturnsCreateorderreturn
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the account that manages the order. This cannot be a multi-client account.
    , merchantId :: Core.Word64
      -- | Multipart request metadata.
    , payload :: OrderreturnsCreateOrderReturnRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrderreturnsCreateorderreturn' with the minimum fields required to make a request.
newContentOrderreturnsCreateorderreturn 
    ::  Core.Word64
       -- ^  The ID of the account that manages the order. This cannot be a multi-client account. See 'merchantId'.
    -> OrderreturnsCreateOrderReturnRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContentOrderreturnsCreateorderreturn
newContentOrderreturnsCreateorderreturn merchantId payload =
  ContentOrderreturnsCreateorderreturn
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , merchantId = merchantId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentOrderreturnsCreateorderreturn
         where
        type Rs ContentOrderreturnsCreateorderreturn =
             OrderreturnsCreateOrderReturnResponse
        type Scopes ContentOrderreturnsCreateorderreturn =
             '[Content'FullControl]
        requestClient
          ContentOrderreturnsCreateorderreturn{..}
          = go merchantId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContentOrderreturnsCreateorderreturnResource)
                      Core.mempty

