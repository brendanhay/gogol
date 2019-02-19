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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all Containers that belongs to a GTM Account.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.List
    (
    -- * REST Resource
      AccountsContainersListResource

    -- * Creating a Request
    , accountsContainersList
    , AccountsContainersList

    -- * Request Lenses
    , aclParent
    , aclPageToken
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.list@ method which the
-- 'AccountsContainersList' request conforms to.
type AccountsContainersListResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "containers" :>
             QueryParam "pageToken" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ListContainersResponse

-- | Lists all Containers that belongs to a GTM Account.
--
-- /See:/ 'accountsContainersList' smart constructor.
data AccountsContainersList =
  AccountsContainersList'
    { _aclParent    :: !Text
    , _aclPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclParent'
--
-- * 'aclPageToken'
accountsContainersList
    :: Text -- ^ 'aclParent'
    -> AccountsContainersList
accountsContainersList pAclParent_ =
  AccountsContainersList' {_aclParent = pAclParent_, _aclPageToken = Nothing}

-- | GTM Accounts\'s API relative path. Example: accounts\/{account_id}.
aclParent :: Lens' AccountsContainersList Text
aclParent
  = lens _aclParent (\ s a -> s{_aclParent = a})

-- | Continuation token for fetching the next page of results.
aclPageToken :: Lens' AccountsContainersList (Maybe Text)
aclPageToken
  = lens _aclPageToken (\ s a -> s{_aclPageToken = a})

instance GoogleRequest AccountsContainersList where
        type Rs AccountsContainersList =
             ListContainersResponse
        type Scopes AccountsContainersList =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersList'{..}
          = go _aclParent _aclPageToken (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersListResource)
                      mempty
