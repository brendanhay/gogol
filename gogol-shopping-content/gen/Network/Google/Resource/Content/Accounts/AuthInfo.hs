{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Content.Accounts.AuthInfo
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the authenticated user.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accounts.authinfo@.
module Network.Google.Resource.Content.Accounts.AuthInfo
    (
    -- * REST Resource
      AccountsAuthInfoResource

    -- * Creating a Request
    , accountsAuthInfo
    , AccountsAuthInfo

    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.authinfo@ method which the
-- 'AccountsAuthInfo' request conforms to.
type AccountsAuthInfoResource =
     "content" :>
       "v2" :>
         "accounts" :>
           "authinfo" :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] AccountsAuthInfoResponse

-- | Returns information about the authenticated user.
--
-- /See:/ 'accountsAuthInfo' smart constructor.
data AccountsAuthInfo =
    AccountsAuthInfo'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAuthInfo' with the minimum fields required to make a request.
--
accountsAuthInfo
    :: AccountsAuthInfo
accountsAuthInfo = AccountsAuthInfo'

instance GoogleRequest AccountsAuthInfo where
        type Rs AccountsAuthInfo = AccountsAuthInfoResponse
        type Scopes AccountsAuthInfo =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsAuthInfo'{}
          = go (Just AltJSON) shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAuthInfoResource)
                      mempty
