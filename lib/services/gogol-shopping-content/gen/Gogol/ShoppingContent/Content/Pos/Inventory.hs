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
-- Module      : Gogol.ShoppingContent.Content.Pos.Inventory
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submit inventory for the given merchant.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.pos.inventory@.
module Gogol.ShoppingContent.Content.Pos.Inventory
    (
    -- * Resource
      ContentPosInventoryResource

    -- ** Constructing a Request
    , ContentPosInventory (..)
    , newContentPosInventory
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.pos.inventory@ method which the
-- 'ContentPosInventory' request conforms to.
type ContentPosInventoryResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "pos" Core.:>
             Core.Capture "targetMerchantId" Core.Word64 Core.:>
               "inventory" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] PosInventoryRequest
                               Core.:>
                               Core.Post '[Core.JSON] PosInventoryResponse

-- | Submit inventory for the given merchant.
--
-- /See:/ 'newContentPosInventory' smart constructor.
data ContentPosInventory = ContentPosInventory
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the POS or inventory data provider.
    , merchantId :: Core.Word64
      -- | Multipart request metadata.
    , payload :: PosInventoryRequest
      -- | The ID of the target merchant.
    , targetMerchantId :: Core.Word64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentPosInventory' with the minimum fields required to make a request.
newContentPosInventory 
    ::  Core.Word64
       -- ^  The ID of the POS or inventory data provider. See 'merchantId'.
    -> PosInventoryRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Word64
       -- ^  The ID of the target merchant. See 'targetMerchantId'.
    -> ContentPosInventory
newContentPosInventory merchantId payload targetMerchantId =
  ContentPosInventory
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , merchantId = merchantId
    , payload = payload
    , targetMerchantId = targetMerchantId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentPosInventory where
        type Rs ContentPosInventory = PosInventoryResponse
        type Scopes ContentPosInventory =
             '[Content'FullControl]
        requestClient ContentPosInventory{..}
          = go merchantId targetMerchantId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentPosInventoryResource)
                      Core.mempty

