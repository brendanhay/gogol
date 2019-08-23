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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.VersionHeaders.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all Container Versions of a GTM Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.version_headers.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.VersionHeaders.List
    (
    -- * REST Resource
      AccountsContainersVersionHeadersListResource

    -- * Creating a Request
    , accountsContainersVersionHeadersList
    , AccountsContainersVersionHeadersList

    -- * Request Lenses
    , aParent
    , aPageToken
    , aIncludeDeleted
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.version_headers.list@ method which the
-- 'AccountsContainersVersionHeadersList' request conforms to.
type AccountsContainersVersionHeadersListResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "version_headers" :>
             QueryParam "pageToken" Text :>
               QueryParam "includeDeleted" Bool :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] ListContainerVersionsResponse

-- | Lists all Container Versions of a GTM Container.
--
-- /See:/ 'accountsContainersVersionHeadersList' smart constructor.
data AccountsContainersVersionHeadersList =
  AccountsContainersVersionHeadersList'
    { _aParent         :: !Text
    , _aPageToken      :: !(Maybe Text)
    , _aIncludeDeleted :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersVersionHeadersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aParent'
--
-- * 'aPageToken'
--
-- * 'aIncludeDeleted'
accountsContainersVersionHeadersList
    :: Text -- ^ 'aParent'
    -> AccountsContainersVersionHeadersList
accountsContainersVersionHeadersList pAParent_ =
  AccountsContainersVersionHeadersList'
    {_aParent = pAParent_, _aPageToken = Nothing, _aIncludeDeleted = Nothing}


-- | GTM Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
aParent :: Lens' AccountsContainersVersionHeadersList Text
aParent = lens _aParent (\ s a -> s{_aParent = a})

-- | Continuation token for fetching the next page of results.
aPageToken :: Lens' AccountsContainersVersionHeadersList (Maybe Text)
aPageToken
  = lens _aPageToken (\ s a -> s{_aPageToken = a})

-- | Also retrieve deleted (archived) versions when true.
aIncludeDeleted :: Lens' AccountsContainersVersionHeadersList (Maybe Bool)
aIncludeDeleted
  = lens _aIncludeDeleted
      (\ s a -> s{_aIncludeDeleted = a})

instance GoogleRequest
           AccountsContainersVersionHeadersList
         where
        type Rs AccountsContainersVersionHeadersList =
             ListContainerVersionsResponse
        type Scopes AccountsContainersVersionHeadersList =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersVersionHeadersList'{..}
          = go _aParent _aPageToken _aIncludeDeleted
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionHeadersListResource)
                      mempty
