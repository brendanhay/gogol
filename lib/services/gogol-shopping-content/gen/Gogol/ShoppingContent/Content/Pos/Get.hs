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
-- Module      : Gogol.ShoppingContent.Content.Pos.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the given store.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.pos.get@.
module Gogol.ShoppingContent.Content.Pos.Get
    (
    -- * Resource
      ContentPosGetResource

    -- ** Constructing a Request
    , newContentPosGet
    , ContentPosGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.pos.get@ method which the
-- 'ContentPosGet' request conforms to.
type ContentPosGetResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "pos" Core.:>
             Core.Capture "targetMerchantId" Core.Word64 Core.:>
               "store" Core.:>
                 Core.Capture "storeCode" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] PosStore

-- | Retrieves information about the given store.
--
-- /See:/ 'newContentPosGet' smart constructor.
data ContentPosGet = ContentPosGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the POS or inventory data provider.
    , merchantId :: Core.Word64
      -- | A store code that is unique per merchant.
    , storeCode :: Core.Text
      -- | The ID of the target merchant.
    , targetMerchantId :: Core.Word64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentPosGet' with the minimum fields required to make a request.
newContentPosGet 
    ::  Core.Word64
       -- ^  The ID of the POS or inventory data provider. See 'merchantId'.
    -> Core.Text
       -- ^  A store code that is unique per merchant. See 'storeCode'.
    -> Core.Word64
       -- ^  The ID of the target merchant. See 'targetMerchantId'.
    -> ContentPosGet
newContentPosGet merchantId storeCode targetMerchantId =
  ContentPosGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , merchantId = merchantId
    , storeCode = storeCode
    , targetMerchantId = targetMerchantId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentPosGet where
        type Rs ContentPosGet = PosStore
        type Scopes ContentPosGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient ContentPosGet{..}
          = go merchantId targetMerchantId storeCode xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy ContentPosGetResource)
                      Core.mempty

