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
-- Module      : Gogol.ShoppingContent.Content.Accounts.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Merchant Center sub-account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.delete@.
module Gogol.ShoppingContent.Content.Accounts.Delete
    (
    -- * Resource
      ContentAccountsDeleteResource

    -- ** Constructing a Request
    , ContentAccountsDelete (..)
    , newContentAccountsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounts.delete@ method which the
-- 'ContentAccountsDelete' request conforms to.
type ContentAccountsDeleteResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Word64 Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "force" Core.Bool Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Delete '[Core.JSON] ()

-- | Deletes a Merchant Center sub-account.
--
-- /See:/ 'newContentAccountsDelete' smart constructor.
data ContentAccountsDelete = ContentAccountsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The ID of the account.
    , accountId :: Core.Word64
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Option to delete sub-accounts with products. The default value is false.
    , force :: Core.Bool
      -- | The ID of the managing account. This must be a multi-client account, and accountId must be the ID of a sub-account of this account.
    , merchantId :: Core.Word64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccountsDelete' with the minimum fields required to make a request.
newContentAccountsDelete 
    ::  Core.Word64
       -- ^  The ID of the account. See 'accountId'.
    -> Core.Word64
       -- ^  The ID of the managing account. This must be a multi-client account, and accountId must be the ID of a sub-account of this account. See 'merchantId'.
    -> ContentAccountsDelete
newContentAccountsDelete accountId merchantId =
  ContentAccountsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , accountId = accountId
    , callback = Core.Nothing
    , force = Core.False
    , merchantId = merchantId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentAccountsDelete
         where
        type Rs ContentAccountsDelete = ()
        type Scopes ContentAccountsDelete =
             '[Content'FullControl]
        requestClient ContentAccountsDelete{..}
          = go merchantId accountId xgafv accessToken callback
              (Core.Just force)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentAccountsDeleteResource)
                      Core.mempty

