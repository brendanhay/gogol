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
-- Module      : Network.Google.Resource.TagManager.Accounts.UserPermissions.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all users that have access to the account along with Account and
-- Container user access granted to each of them.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.user_permissions.list@.
module Network.Google.Resource.TagManager.Accounts.UserPermissions.List
    (
    -- * REST Resource
      AccountsUserPermissionsListResource

    -- * Creating a Request
    , accountsUserPermissionsList
    , AccountsUserPermissionsList

    -- * Request Lenses
    , auplParent
    , auplXgafv
    , auplUploadProtocol
    , auplAccessToken
    , auplUploadType
    , auplPageToken
    , auplCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.user_permissions.list@ method which the
-- 'AccountsUserPermissionsList' request conforms to.
type AccountsUserPermissionsListResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "user_permissions" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListUserPermissionsResponse

-- | List all users that have access to the account along with Account and
-- Container user access granted to each of them.
--
-- /See:/ 'accountsUserPermissionsList' smart constructor.
data AccountsUserPermissionsList =
  AccountsUserPermissionsList'
    { _auplParent :: !Text
    , _auplXgafv :: !(Maybe Xgafv)
    , _auplUploadProtocol :: !(Maybe Text)
    , _auplAccessToken :: !(Maybe Text)
    , _auplUploadType :: !(Maybe Text)
    , _auplPageToken :: !(Maybe Text)
    , _auplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsUserPermissionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auplParent'
--
-- * 'auplXgafv'
--
-- * 'auplUploadProtocol'
--
-- * 'auplAccessToken'
--
-- * 'auplUploadType'
--
-- * 'auplPageToken'
--
-- * 'auplCallback'
accountsUserPermissionsList
    :: Text -- ^ 'auplParent'
    -> AccountsUserPermissionsList
accountsUserPermissionsList pAuplParent_ =
  AccountsUserPermissionsList'
    { _auplParent = pAuplParent_
    , _auplXgafv = Nothing
    , _auplUploadProtocol = Nothing
    , _auplAccessToken = Nothing
    , _auplUploadType = Nothing
    , _auplPageToken = Nothing
    , _auplCallback = Nothing
    }


-- | GTM Accounts\'s API relative path. Example: accounts\/{account_id}
auplParent :: Lens' AccountsUserPermissionsList Text
auplParent
  = lens _auplParent (\ s a -> s{_auplParent = a})

-- | V1 error format.
auplXgafv :: Lens' AccountsUserPermissionsList (Maybe Xgafv)
auplXgafv
  = lens _auplXgafv (\ s a -> s{_auplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
auplUploadProtocol :: Lens' AccountsUserPermissionsList (Maybe Text)
auplUploadProtocol
  = lens _auplUploadProtocol
      (\ s a -> s{_auplUploadProtocol = a})

-- | OAuth access token.
auplAccessToken :: Lens' AccountsUserPermissionsList (Maybe Text)
auplAccessToken
  = lens _auplAccessToken
      (\ s a -> s{_auplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
auplUploadType :: Lens' AccountsUserPermissionsList (Maybe Text)
auplUploadType
  = lens _auplUploadType
      (\ s a -> s{_auplUploadType = a})

-- | Continuation token for fetching the next page of results.
auplPageToken :: Lens' AccountsUserPermissionsList (Maybe Text)
auplPageToken
  = lens _auplPageToken
      (\ s a -> s{_auplPageToken = a})

-- | JSONP
auplCallback :: Lens' AccountsUserPermissionsList (Maybe Text)
auplCallback
  = lens _auplCallback (\ s a -> s{_auplCallback = a})

instance GoogleRequest AccountsUserPermissionsList
         where
        type Rs AccountsUserPermissionsList =
             ListUserPermissionsResponse
        type Scopes AccountsUserPermissionsList =
             '["https://www.googleapis.com/auth/tagmanager.manage.users"]
        requestClient AccountsUserPermissionsList'{..}
          = go _auplParent _auplXgafv _auplUploadProtocol
              _auplAccessToken
              _auplUploadType
              _auplPageToken
              _auplCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsUserPermissionsListResource)
                      mempty
