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
-- Module      : Gogol.ShoppingContent.Content.Accounts.Link
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs an action on a link between two Merchant Center accounts, namely accountId and linkedAccountId.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.link@.
module Gogol.ShoppingContent.Content.Accounts.Link
    (
    -- * Resource
      ContentAccountsLinkResource

    -- ** Constructing a Request
    , newContentAccountsLink
    , ContentAccountsLink
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounts.link@ method which the
-- 'ContentAccountsLink' request conforms to.
type ContentAccountsLinkResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Word64 Core.:>
               "link" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] AccountsLinkRequest
                               Core.:>
                               Core.Post '[Core.JSON] AccountsLinkResponse

-- | Performs an action on a link between two Merchant Center accounts, namely accountId and linkedAccountId.
--
-- /See:/ 'newContentAccountsLink' smart constructor.
data ContentAccountsLink = ContentAccountsLink
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The ID of the account that should be linked.
    , accountId :: Core.Word64
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and @accountId@ must be the ID of a sub-account of this account.
    , merchantId :: Core.Word64
      -- | Multipart request metadata.
    , payload :: AccountsLinkRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccountsLink' with the minimum fields required to make a request.
newContentAccountsLink 
    ::  Core.Word64
       -- ^  The ID of the account that should be linked. See 'accountId'.
    -> Core.Word64
       -- ^  The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and @accountId@ must be the ID of a sub-account of this account. See 'merchantId'.
    -> AccountsLinkRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContentAccountsLink
newContentAccountsLink accountId merchantId payload =
  ContentAccountsLink
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , accountId = accountId
    , callback = Core.Nothing
    , merchantId = merchantId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentAccountsLink where
        type Rs ContentAccountsLink = AccountsLinkResponse
        type Scopes ContentAccountsLink =
             '["https://www.googleapis.com/auth/content"]
        requestClient ContentAccountsLink{..}
          = go merchantId accountId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentAccountsLinkResource)
                      Core.mempty

