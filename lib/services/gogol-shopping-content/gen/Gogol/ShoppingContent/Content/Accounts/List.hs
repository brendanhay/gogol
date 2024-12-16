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
-- Module      : Gogol.ShoppingContent.Content.Accounts.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the sub-accounts in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.list@.
module Gogol.ShoppingContent.Content.Accounts.List
    (
    -- * Resource
      ContentAccountsListResource

    -- ** Constructing a Request
    , ContentAccountsList (..)
    , newContentAccountsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounts.list@ method which the
-- 'ContentAccountsList' request conforms to.
type ContentAccountsListResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "accounts" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "label" Core.Word64 Core.:>
                     Core.QueryParam "maxResults" Core.Word32 Core.:>
                       Core.QueryParam "name" Core.Text Core.:>
                         Core.QueryParam "pageToken" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "view" AccountsListView Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Get '[Core.JSON] AccountsListResponse

-- | Lists the sub-accounts in your Merchant Center account.
--
-- /See:/ 'newContentAccountsList' smart constructor.
data ContentAccountsList = ContentAccountsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | If view is set to \"css\", only return accounts that are assigned label with given ID.
    , label :: (Core.Maybe Core.Word64)
      -- | The maximum number of accounts to return in the response, used for paging.
    , maxResults :: (Core.Maybe Core.Word32)
      -- | The ID of the managing account. This must be a multi-client account.
    , merchantId :: Core.Word64
      -- | If set, only the accounts with the given name (case sensitive) will be returned.
    , name :: (Core.Maybe Core.Text)
      -- | The token returned by the previous request.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Controls which fields will be populated. Acceptable values are: \"merchant\" and \"css\". The default value is \"merchant\".
    , view :: (Core.Maybe AccountsListView)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccountsList' with the minimum fields required to make a request.
newContentAccountsList 
    ::  Core.Word64
       -- ^  The ID of the managing account. This must be a multi-client account. See 'merchantId'.
    -> ContentAccountsList
newContentAccountsList merchantId =
  ContentAccountsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , label = Core.Nothing
    , maxResults = Core.Nothing
    , merchantId = merchantId
    , name = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , view = Core.Nothing
    }

instance Core.GoogleRequest ContentAccountsList where
        type Rs ContentAccountsList = AccountsListResponse
        type Scopes ContentAccountsList =
             '[Content'FullControl]
        requestClient ContentAccountsList{..}
          = go merchantId xgafv accessToken callback label
              maxResults
              name
              pageToken
              uploadType
              uploadProtocol
              view
              (Core.Just Core.AltJSON)
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentAccountsListResource)
                      Core.mempty

