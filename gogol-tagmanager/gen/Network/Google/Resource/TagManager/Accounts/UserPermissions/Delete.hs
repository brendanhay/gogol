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
-- Module      : Network.Google.Resource.TagManager.Accounts.UserPermissions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a user from the account, revoking access to it and all of its
-- containers.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.user_permissions.delete@.
module Network.Google.Resource.TagManager.Accounts.UserPermissions.Delete
    (
    -- * REST Resource
      AccountsUserPermissionsDeleteResource

    -- * Creating a Request
    , accountsUserPermissionsDelete
    , AccountsUserPermissionsDelete

    -- * Request Lenses
    , aupdXgafv
    , aupdUploadProtocol
    , aupdPath
    , aupdAccessToken
    , aupdUploadType
    , aupdCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.user_permissions.delete@ method which the
-- 'AccountsUserPermissionsDelete' request conforms to.
type AccountsUserPermissionsDeleteResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a user from the account, revoking access to it and all of its
-- containers.
--
-- /See:/ 'accountsUserPermissionsDelete' smart constructor.
data AccountsUserPermissionsDelete =
  AccountsUserPermissionsDelete'
    { _aupdXgafv :: !(Maybe Xgafv)
    , _aupdUploadProtocol :: !(Maybe Text)
    , _aupdPath :: !Text
    , _aupdAccessToken :: !(Maybe Text)
    , _aupdUploadType :: !(Maybe Text)
    , _aupdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsUserPermissionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupdXgafv'
--
-- * 'aupdUploadProtocol'
--
-- * 'aupdPath'
--
-- * 'aupdAccessToken'
--
-- * 'aupdUploadType'
--
-- * 'aupdCallback'
accountsUserPermissionsDelete
    :: Text -- ^ 'aupdPath'
    -> AccountsUserPermissionsDelete
accountsUserPermissionsDelete pAupdPath_ =
  AccountsUserPermissionsDelete'
    { _aupdXgafv = Nothing
    , _aupdUploadProtocol = Nothing
    , _aupdPath = pAupdPath_
    , _aupdAccessToken = Nothing
    , _aupdUploadType = Nothing
    , _aupdCallback = Nothing
    }


-- | V1 error format.
aupdXgafv :: Lens' AccountsUserPermissionsDelete (Maybe Xgafv)
aupdXgafv
  = lens _aupdXgafv (\ s a -> s{_aupdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aupdUploadProtocol :: Lens' AccountsUserPermissionsDelete (Maybe Text)
aupdUploadProtocol
  = lens _aupdUploadProtocol
      (\ s a -> s{_aupdUploadProtocol = a})

-- | GTM UserPermission\'s API relative path. Example:
-- accounts\/{account_id}\/user_permissions\/{user_permission_id}
aupdPath :: Lens' AccountsUserPermissionsDelete Text
aupdPath = lens _aupdPath (\ s a -> s{_aupdPath = a})

-- | OAuth access token.
aupdAccessToken :: Lens' AccountsUserPermissionsDelete (Maybe Text)
aupdAccessToken
  = lens _aupdAccessToken
      (\ s a -> s{_aupdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aupdUploadType :: Lens' AccountsUserPermissionsDelete (Maybe Text)
aupdUploadType
  = lens _aupdUploadType
      (\ s a -> s{_aupdUploadType = a})

-- | JSONP
aupdCallback :: Lens' AccountsUserPermissionsDelete (Maybe Text)
aupdCallback
  = lens _aupdCallback (\ s a -> s{_aupdCallback = a})

instance GoogleRequest AccountsUserPermissionsDelete
         where
        type Rs AccountsUserPermissionsDelete = ()
        type Scopes AccountsUserPermissionsDelete =
             '["https://www.googleapis.com/auth/tagmanager.manage.users"]
        requestClient AccountsUserPermissionsDelete'{..}
          = go _aupdPath _aupdXgafv _aupdUploadProtocol
              _aupdAccessToken
              _aupdUploadType
              _aupdCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsUserPermissionsDeleteResource)
                      mempty
