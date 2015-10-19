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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all Containers that belongs to a GTM Account.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersList@.
module Network.Google.Resource.TagManager.Accounts.Containers.List
    (
    -- * REST Resource
      AccountsContainersListResource

    -- * Creating a Request
    , accountsContainersList'
    , AccountsContainersList'

    -- * Request Lenses
    , aclAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersList@ method which the
-- 'AccountsContainersList'' request conforms to.
type AccountsContainersListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] ListContainersResponse

-- | Lists all Containers that belongs to a GTM Account.
--
-- /See:/ 'accountsContainersList'' smart constructor.
newtype AccountsContainersList' = AccountsContainersList'
    { _aclAccountId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclAccountId'
accountsContainersList'
    :: Text -- ^ 'accountId'
    -> AccountsContainersList'
accountsContainersList' pAclAccountId_ =
    AccountsContainersList'
    { _aclAccountId = pAclAccountId_
    }

-- | The GTM Account ID.
aclAccountId :: Lens' AccountsContainersList' Text
aclAccountId
  = lens _aclAccountId (\ s a -> s{_aclAccountId = a})

instance GoogleRequest AccountsContainersList' where
        type Rs AccountsContainersList' =
             ListContainersResponse
        requestClient AccountsContainersList'{..}
          = go _aclAccountId (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersListResource)
                      mempty
