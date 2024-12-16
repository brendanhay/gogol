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
-- Module      : Gogol.ShoppingContent.Content.Accounts.Returncarrier.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a return carrier in the merchant account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.returncarrier.patch@.
module Gogol.ShoppingContent.Content.Accounts.Returncarrier.Patch
    (
    -- * Resource
      ContentAccountsReturncarrierPatchResource

    -- ** Constructing a Request
    , ContentAccountsReturncarrierPatch (..)
    , newContentAccountsReturncarrierPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounts.returncarrier.patch@ method which the
-- 'ContentAccountsReturncarrierPatch' request conforms to.
type ContentAccountsReturncarrierPatchResource =
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
                             Core.ReqBody '[Core.JSON] AccountReturnCarrier
                               Core.:>
                               Core.Patch '[Core.JSON] AccountReturnCarrier

-- | Updates a return carrier in the merchant account.
--
-- /See:/ 'newContentAccountsReturncarrierPatch' smart constructor.
data ContentAccountsReturncarrierPatch = ContentAccountsReturncarrierPatch
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
      -- | Multipart request metadata.
    , payload :: AccountReturnCarrier
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccountsReturncarrierPatch' with the minimum fields required to make a request.
newContentAccountsReturncarrierPatch 
    ::  Core.Int64
       -- ^  Required. The Merchant Center Account Id under which the Return Carrier is to be linked. See 'accountId'.
    -> Core.Int64
       -- ^  Required. The Google-provided unique carrier ID, used to update the resource. See 'carrierAccountId'.
    -> AccountReturnCarrier
       -- ^  Multipart request metadata. See 'payload'.
    -> ContentAccountsReturncarrierPatch
newContentAccountsReturncarrierPatch accountId carrierAccountId payload =
  ContentAccountsReturncarrierPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , accountId = accountId
    , callback = Core.Nothing
    , carrierAccountId = carrierAccountId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentAccountsReturncarrierPatch
         where
        type Rs ContentAccountsReturncarrierPatch =
             AccountReturnCarrier
        type Scopes ContentAccountsReturncarrierPatch =
             '[Content'FullControl]
        requestClient ContentAccountsReturncarrierPatch{..}
          = go accountId carrierAccountId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentAccountsReturncarrierPatchResource)
                      Core.mempty

