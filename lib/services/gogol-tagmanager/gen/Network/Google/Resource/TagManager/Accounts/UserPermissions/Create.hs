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
-- Module      : Network.Google.Resource.TagManager.Accounts.UserPermissions.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a user\'s Account & Container access.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.user_permissions.create@.
module Network.Google.Resource.TagManager.Accounts.UserPermissions.Create
    (
    -- * REST Resource
      AccountsUserPermissionsCreateResource

    -- * Creating a Request
    , accountsUserPermissionsCreate
    , AccountsUserPermissionsCreate

    -- * Request Lenses
    , aupcParent
    , aupcXgafv
    , aupcUploadProtocol
    , aupcAccessToken
    , aupcUploadType
    , aupcPayload
    , aupcCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.user_permissions.create@ method which the
-- 'AccountsUserPermissionsCreate' request conforms to.
type AccountsUserPermissionsCreateResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "user_permissions" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] UserPermission :>
                           Post '[JSON] UserPermission

-- | Creates a user\'s Account & Container access.
--
-- /See:/ 'accountsUserPermissionsCreate' smart constructor.
data AccountsUserPermissionsCreate =
  AccountsUserPermissionsCreate'
    { _aupcParent :: !Text
    , _aupcXgafv :: !(Maybe Xgafv)
    , _aupcUploadProtocol :: !(Maybe Text)
    , _aupcAccessToken :: !(Maybe Text)
    , _aupcUploadType :: !(Maybe Text)
    , _aupcPayload :: !UserPermission
    , _aupcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsUserPermissionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupcParent'
--
-- * 'aupcXgafv'
--
-- * 'aupcUploadProtocol'
--
-- * 'aupcAccessToken'
--
-- * 'aupcUploadType'
--
-- * 'aupcPayload'
--
-- * 'aupcCallback'
accountsUserPermissionsCreate
    :: Text -- ^ 'aupcParent'
    -> UserPermission -- ^ 'aupcPayload'
    -> AccountsUserPermissionsCreate
accountsUserPermissionsCreate pAupcParent_ pAupcPayload_ =
  AccountsUserPermissionsCreate'
    { _aupcParent = pAupcParent_
    , _aupcXgafv = Nothing
    , _aupcUploadProtocol = Nothing
    , _aupcAccessToken = Nothing
    , _aupcUploadType = Nothing
    , _aupcPayload = pAupcPayload_
    , _aupcCallback = Nothing
    }


-- | GTM Account\'s API relative path. Example: accounts\/{account_id}
aupcParent :: Lens' AccountsUserPermissionsCreate Text
aupcParent
  = lens _aupcParent (\ s a -> s{_aupcParent = a})

-- | V1 error format.
aupcXgafv :: Lens' AccountsUserPermissionsCreate (Maybe Xgafv)
aupcXgafv
  = lens _aupcXgafv (\ s a -> s{_aupcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aupcUploadProtocol :: Lens' AccountsUserPermissionsCreate (Maybe Text)
aupcUploadProtocol
  = lens _aupcUploadProtocol
      (\ s a -> s{_aupcUploadProtocol = a})

-- | OAuth access token.
aupcAccessToken :: Lens' AccountsUserPermissionsCreate (Maybe Text)
aupcAccessToken
  = lens _aupcAccessToken
      (\ s a -> s{_aupcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aupcUploadType :: Lens' AccountsUserPermissionsCreate (Maybe Text)
aupcUploadType
  = lens _aupcUploadType
      (\ s a -> s{_aupcUploadType = a})

-- | Multipart request metadata.
aupcPayload :: Lens' AccountsUserPermissionsCreate UserPermission
aupcPayload
  = lens _aupcPayload (\ s a -> s{_aupcPayload = a})

-- | JSONP
aupcCallback :: Lens' AccountsUserPermissionsCreate (Maybe Text)
aupcCallback
  = lens _aupcCallback (\ s a -> s{_aupcCallback = a})

instance GoogleRequest AccountsUserPermissionsCreate
         where
        type Rs AccountsUserPermissionsCreate =
             UserPermission
        type Scopes AccountsUserPermissionsCreate =
             '["https://www.googleapis.com/auth/tagmanager.manage.users"]
        requestClient AccountsUserPermissionsCreate'{..}
          = go _aupcParent _aupcXgafv _aupcUploadProtocol
              _aupcAccessToken
              _aupcUploadType
              _aupcCallback
              (Just AltJSON)
              _aupcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsUserPermissionsCreateResource)
                      mempty
