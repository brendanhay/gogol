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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.RevokeDeviceAccess
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revokes access to all devices currently provisioned to the user. The
-- user will no longer be able to use the managed Play store on any of
-- their managed devices. This call only works with EMM-managed accounts.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.revokeDeviceAccess@.
module Network.Google.Resource.AndroidEnterprise.Users.RevokeDeviceAccess
    (
    -- * REST Resource
      UsersRevokeDeviceAccessResource

    -- * Creating a Request
    , usersRevokeDeviceAccess
    , UsersRevokeDeviceAccess

    -- * Request Lenses
    , urdaXgafv
    , urdaUploadProtocol
    , urdaEnterpriseId
    , urdaAccessToken
    , urdaUploadType
    , urdaUserId
    , urdaCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.users.revokeDeviceAccess@ method which the
-- 'UsersRevokeDeviceAccess' request conforms to.
type UsersRevokeDeviceAccessResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "deviceAccess" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Revokes access to all devices currently provisioned to the user. The
-- user will no longer be able to use the managed Play store on any of
-- their managed devices. This call only works with EMM-managed accounts.
--
-- /See:/ 'usersRevokeDeviceAccess' smart constructor.
data UsersRevokeDeviceAccess =
  UsersRevokeDeviceAccess'
    { _urdaXgafv :: !(Maybe Xgafv)
    , _urdaUploadProtocol :: !(Maybe Text)
    , _urdaEnterpriseId :: !Text
    , _urdaAccessToken :: !(Maybe Text)
    , _urdaUploadType :: !(Maybe Text)
    , _urdaUserId :: !Text
    , _urdaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersRevokeDeviceAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urdaXgafv'
--
-- * 'urdaUploadProtocol'
--
-- * 'urdaEnterpriseId'
--
-- * 'urdaAccessToken'
--
-- * 'urdaUploadType'
--
-- * 'urdaUserId'
--
-- * 'urdaCallback'
usersRevokeDeviceAccess
    :: Text -- ^ 'urdaEnterpriseId'
    -> Text -- ^ 'urdaUserId'
    -> UsersRevokeDeviceAccess
usersRevokeDeviceAccess pUrdaEnterpriseId_ pUrdaUserId_ =
  UsersRevokeDeviceAccess'
    { _urdaXgafv = Nothing
    , _urdaUploadProtocol = Nothing
    , _urdaEnterpriseId = pUrdaEnterpriseId_
    , _urdaAccessToken = Nothing
    , _urdaUploadType = Nothing
    , _urdaUserId = pUrdaUserId_
    , _urdaCallback = Nothing
    }


-- | V1 error format.
urdaXgafv :: Lens' UsersRevokeDeviceAccess (Maybe Xgafv)
urdaXgafv
  = lens _urdaXgafv (\ s a -> s{_urdaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
urdaUploadProtocol :: Lens' UsersRevokeDeviceAccess (Maybe Text)
urdaUploadProtocol
  = lens _urdaUploadProtocol
      (\ s a -> s{_urdaUploadProtocol = a})

-- | The ID of the enterprise.
urdaEnterpriseId :: Lens' UsersRevokeDeviceAccess Text
urdaEnterpriseId
  = lens _urdaEnterpriseId
      (\ s a -> s{_urdaEnterpriseId = a})

-- | OAuth access token.
urdaAccessToken :: Lens' UsersRevokeDeviceAccess (Maybe Text)
urdaAccessToken
  = lens _urdaAccessToken
      (\ s a -> s{_urdaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
urdaUploadType :: Lens' UsersRevokeDeviceAccess (Maybe Text)
urdaUploadType
  = lens _urdaUploadType
      (\ s a -> s{_urdaUploadType = a})

-- | The ID of the user.
urdaUserId :: Lens' UsersRevokeDeviceAccess Text
urdaUserId
  = lens _urdaUserId (\ s a -> s{_urdaUserId = a})

-- | JSONP
urdaCallback :: Lens' UsersRevokeDeviceAccess (Maybe Text)
urdaCallback
  = lens _urdaCallback (\ s a -> s{_urdaCallback = a})

instance GoogleRequest UsersRevokeDeviceAccess where
        type Rs UsersRevokeDeviceAccess = ()
        type Scopes UsersRevokeDeviceAccess =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient UsersRevokeDeviceAccess'{..}
          = go _urdaEnterpriseId _urdaUserId _urdaXgafv
              _urdaUploadProtocol
              _urdaAccessToken
              _urdaUploadType
              _urdaCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersRevokeDeviceAccessResource)
                      mempty
