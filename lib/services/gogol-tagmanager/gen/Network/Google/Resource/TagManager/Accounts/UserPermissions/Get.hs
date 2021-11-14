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
-- Module      : Network.Google.Resource.TagManager.Accounts.UserPermissions.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a user\'s Account & Container access.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.user_permissions.get@.
module Network.Google.Resource.TagManager.Accounts.UserPermissions.Get
    (
    -- * REST Resource
      AccountsUserPermissionsGetResource

    -- * Creating a Request
    , accountsUserPermissionsGet
    , AccountsUserPermissionsGet

    -- * Request Lenses
    , aupgXgafv
    , aupgUploadProtocol
    , aupgPath
    , aupgAccessToken
    , aupgUploadType
    , aupgCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.user_permissions.get@ method which the
-- 'AccountsUserPermissionsGet' request conforms to.
type AccountsUserPermissionsGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] UserPermission

-- | Gets a user\'s Account & Container access.
--
-- /See:/ 'accountsUserPermissionsGet' smart constructor.
data AccountsUserPermissionsGet =
  AccountsUserPermissionsGet'
    { _aupgXgafv :: !(Maybe Xgafv)
    , _aupgUploadProtocol :: !(Maybe Text)
    , _aupgPath :: !Text
    , _aupgAccessToken :: !(Maybe Text)
    , _aupgUploadType :: !(Maybe Text)
    , _aupgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsUserPermissionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupgXgafv'
--
-- * 'aupgUploadProtocol'
--
-- * 'aupgPath'
--
-- * 'aupgAccessToken'
--
-- * 'aupgUploadType'
--
-- * 'aupgCallback'
accountsUserPermissionsGet
    :: Text -- ^ 'aupgPath'
    -> AccountsUserPermissionsGet
accountsUserPermissionsGet pAupgPath_ =
  AccountsUserPermissionsGet'
    { _aupgXgafv = Nothing
    , _aupgUploadProtocol = Nothing
    , _aupgPath = pAupgPath_
    , _aupgAccessToken = Nothing
    , _aupgUploadType = Nothing
    , _aupgCallback = Nothing
    }


-- | V1 error format.
aupgXgafv :: Lens' AccountsUserPermissionsGet (Maybe Xgafv)
aupgXgafv
  = lens _aupgXgafv (\ s a -> s{_aupgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aupgUploadProtocol :: Lens' AccountsUserPermissionsGet (Maybe Text)
aupgUploadProtocol
  = lens _aupgUploadProtocol
      (\ s a -> s{_aupgUploadProtocol = a})

-- | GTM UserPermission\'s API relative path. Example:
-- accounts\/{account_id}\/user_permissions\/{user_permission_id}
aupgPath :: Lens' AccountsUserPermissionsGet Text
aupgPath = lens _aupgPath (\ s a -> s{_aupgPath = a})

-- | OAuth access token.
aupgAccessToken :: Lens' AccountsUserPermissionsGet (Maybe Text)
aupgAccessToken
  = lens _aupgAccessToken
      (\ s a -> s{_aupgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aupgUploadType :: Lens' AccountsUserPermissionsGet (Maybe Text)
aupgUploadType
  = lens _aupgUploadType
      (\ s a -> s{_aupgUploadType = a})

-- | JSONP
aupgCallback :: Lens' AccountsUserPermissionsGet (Maybe Text)
aupgCallback
  = lens _aupgCallback (\ s a -> s{_aupgCallback = a})

instance GoogleRequest AccountsUserPermissionsGet
         where
        type Rs AccountsUserPermissionsGet = UserPermission
        type Scopes AccountsUserPermissionsGet =
             '["https://www.googleapis.com/auth/tagmanager.manage.users"]
        requestClient AccountsUserPermissionsGet'{..}
          = go _aupgPath _aupgXgafv _aupgUploadProtocol
              _aupgAccessToken
              _aupgUploadType
              _aupgCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsUserPermissionsGetResource)
                      mempty
