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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all Containers that belongs to a GTM Account.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.List
    (
    -- * REST Resource
      AccountsContainersListResource

    -- * Creating a Request
    , accountsContainersList
    , AccountsContainersList

    -- * Request Lenses
    , aclParent
    , aclXgafv
    , aclUploadProtocol
    , aclAccessToken
    , aclUploadType
    , aclPageToken
    , aclCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.list@ method which the
-- 'AccountsContainersList' request conforms to.
type AccountsContainersListResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "containers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListContainersResponse

-- | Lists all Containers that belongs to a GTM Account.
--
-- /See:/ 'accountsContainersList' smart constructor.
data AccountsContainersList =
  AccountsContainersList'
    { _aclParent :: !Text
    , _aclXgafv :: !(Maybe Xgafv)
    , _aclUploadProtocol :: !(Maybe Text)
    , _aclAccessToken :: !(Maybe Text)
    , _aclUploadType :: !(Maybe Text)
    , _aclPageToken :: !(Maybe Text)
    , _aclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclParent'
--
-- * 'aclXgafv'
--
-- * 'aclUploadProtocol'
--
-- * 'aclAccessToken'
--
-- * 'aclUploadType'
--
-- * 'aclPageToken'
--
-- * 'aclCallback'
accountsContainersList
    :: Text -- ^ 'aclParent'
    -> AccountsContainersList
accountsContainersList pAclParent_ =
  AccountsContainersList'
    { _aclParent = pAclParent_
    , _aclXgafv = Nothing
    , _aclUploadProtocol = Nothing
    , _aclAccessToken = Nothing
    , _aclUploadType = Nothing
    , _aclPageToken = Nothing
    , _aclCallback = Nothing
    }


-- | GTM Accounts\'s API relative path. Example: accounts\/{account_id}.
aclParent :: Lens' AccountsContainersList Text
aclParent
  = lens _aclParent (\ s a -> s{_aclParent = a})

-- | V1 error format.
aclXgafv :: Lens' AccountsContainersList (Maybe Xgafv)
aclXgafv = lens _aclXgafv (\ s a -> s{_aclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aclUploadProtocol :: Lens' AccountsContainersList (Maybe Text)
aclUploadProtocol
  = lens _aclUploadProtocol
      (\ s a -> s{_aclUploadProtocol = a})

-- | OAuth access token.
aclAccessToken :: Lens' AccountsContainersList (Maybe Text)
aclAccessToken
  = lens _aclAccessToken
      (\ s a -> s{_aclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aclUploadType :: Lens' AccountsContainersList (Maybe Text)
aclUploadType
  = lens _aclUploadType
      (\ s a -> s{_aclUploadType = a})

-- | Continuation token for fetching the next page of results.
aclPageToken :: Lens' AccountsContainersList (Maybe Text)
aclPageToken
  = lens _aclPageToken (\ s a -> s{_aclPageToken = a})

-- | JSONP
aclCallback :: Lens' AccountsContainersList (Maybe Text)
aclCallback
  = lens _aclCallback (\ s a -> s{_aclCallback = a})

instance GoogleRequest AccountsContainersList where
        type Rs AccountsContainersList =
             ListContainersResponse
        type Scopes AccountsContainersList =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersList'{..}
          = go _aclParent _aclXgafv _aclUploadProtocol
              _aclAccessToken
              _aclUploadType
              _aclPageToken
              _aclCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersListResource)
                      mempty
