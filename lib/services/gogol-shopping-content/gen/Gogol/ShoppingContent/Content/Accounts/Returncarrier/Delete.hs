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
-- Module      : Gogol.ShoppingContent.Content.Accounts.Returncarrier.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a return carrier in the merchant account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.returncarrier.delete@.
module Gogol.ShoppingContent.Content.Accounts.Returncarrier.Delete
    (
    -- * Resource
      ContentAccountsReturncarrierDeleteResource

    -- ** Constructing a Request
    , ContentAccountsReturncarrierDelete (..)
    , newContentAccountsReturncarrierDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounts.returncarrier.delete@ method which the
-- 'ContentAccountsReturncarrierDelete' request conforms to.
type ContentAccountsReturncarrierDeleteResource =
     "content" Core.:>
       "v2.1" Core.:>
         "accounts" Core.:>
           Core.Capture "accountId" Core.Int64 Core.:>
             "returncarrier" Core.:>
               Core.Capture "carrierAccountId" Core.Int64 Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Delete '[Core.JSON] ()

-- | Delete a return carrier in the merchant account.
--
-- /See:/ 'newContentAccountsReturncarrierDelete' smart constructor.
data ContentAccountsReturncarrierDelete = ContentAccountsReturncarrierDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Required. The Merchant Center Account Id under which the Return Carrier is to be linked.
    , accountId :: Core.Int64
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The Google-provided unique carrier ID, used to update the resource.
    , carrierAccountId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccountsReturncarrierDelete' with the minimum fields required to make a request.
newContentAccountsReturncarrierDelete 
    ::  Core.Int64
       -- ^  Required. The Merchant Center Account Id under which the Return Carrier is to be linked. See 'accountId'.
    -> Core.Int64
       -- ^  Required. The Google-provided unique carrier ID, used to update the resource. See 'carrierAccountId'.
    -> ContentAccountsReturncarrierDelete
newContentAccountsReturncarrierDelete accountId carrierAccountId =
  ContentAccountsReturncarrierDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , accountId = accountId
    , callback = Core.Nothing
    , carrierAccountId = carrierAccountId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentAccountsReturncarrierDelete
         where
        type Rs ContentAccountsReturncarrierDelete = ()
        type Scopes ContentAccountsReturncarrierDelete =
             '[Content'FullControl]
        requestClient ContentAccountsReturncarrierDelete{..}
          = go accountId carrierAccountId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContentAccountsReturncarrierDeleteResource)
                      Core.mempty

