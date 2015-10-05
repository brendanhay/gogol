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
-- Module      : Network.Google.Resource.AndroidEnterprise.Installs.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Requests to install the latest version of an app to a device. If the app
-- is already installed then it is updated to the latest version if
-- necessary.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseInstallsUpdate@.
module Network.Google.Resource.AndroidEnterprise.Installs.Update
    (
    -- * REST Resource
      InstallsUpdateResource

    -- * Creating a Request
    , installsUpdate'
    , InstallsUpdate'

    -- * Request Lenses
    , iuQuotaUser
    , iuPrettyPrint
    , iuEnterpriseId
    , iuUserIP
    , iuPayload
    , iuUserId
    , iuInstallId
    , iuKey
    , iuDeviceId
    , iuOAuthToken
    , iuFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseInstallsUpdate@ which the
-- 'InstallsUpdate'' request conforms to.
type InstallsUpdateResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               Capture "deviceId" Text :>
                 "installs" :>
                   Capture "installId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Install :>
                                     Put '[JSON] Install

-- | Requests to install the latest version of an app to a device. If the app
-- is already installed then it is updated to the latest version if
-- necessary.
--
-- /See:/ 'installsUpdate'' smart constructor.
data InstallsUpdate' = InstallsUpdate'
    { _iuQuotaUser    :: !(Maybe Text)
    , _iuPrettyPrint  :: !Bool
    , _iuEnterpriseId :: !Text
    , _iuUserIP       :: !(Maybe Text)
    , _iuPayload      :: !Install
    , _iuUserId       :: !Text
    , _iuInstallId    :: !Text
    , _iuKey          :: !(Maybe Key)
    , _iuDeviceId     :: !Text
    , _iuOAuthToken   :: !(Maybe OAuthToken)
    , _iuFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstallsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iuQuotaUser'
--
-- * 'iuPrettyPrint'
--
-- * 'iuEnterpriseId'
--
-- * 'iuUserIP'
--
-- * 'iuPayload'
--
-- * 'iuUserId'
--
-- * 'iuInstallId'
--
-- * 'iuKey'
--
-- * 'iuDeviceId'
--
-- * 'iuOAuthToken'
--
-- * 'iuFields'
installsUpdate'
    :: Text -- ^ 'enterpriseId'
    -> Install -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'installId'
    -> Text -- ^ 'deviceId'
    -> InstallsUpdate'
installsUpdate' pIuEnterpriseId_ pIuPayload_ pIuUserId_ pIuInstallId_ pIuDeviceId_ =
    InstallsUpdate'
    { _iuQuotaUser = Nothing
    , _iuPrettyPrint = True
    , _iuEnterpriseId = pIuEnterpriseId_
    , _iuUserIP = Nothing
    , _iuPayload = pIuPayload_
    , _iuUserId = pIuUserId_
    , _iuInstallId = pIuInstallId_
    , _iuKey = Nothing
    , _iuDeviceId = pIuDeviceId_
    , _iuOAuthToken = Nothing
    , _iuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iuQuotaUser :: Lens' InstallsUpdate' (Maybe Text)
iuQuotaUser
  = lens _iuQuotaUser (\ s a -> s{_iuQuotaUser = a})

-- | Returns response with indentations and line breaks.
iuPrettyPrint :: Lens' InstallsUpdate' Bool
iuPrettyPrint
  = lens _iuPrettyPrint
      (\ s a -> s{_iuPrettyPrint = a})

-- | The ID of the enterprise.
iuEnterpriseId :: Lens' InstallsUpdate' Text
iuEnterpriseId
  = lens _iuEnterpriseId
      (\ s a -> s{_iuEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iuUserIP :: Lens' InstallsUpdate' (Maybe Text)
iuUserIP = lens _iuUserIP (\ s a -> s{_iuUserIP = a})

-- | Multipart request metadata.
iuPayload :: Lens' InstallsUpdate' Install
iuPayload
  = lens _iuPayload (\ s a -> s{_iuPayload = a})

-- | The ID of the user.
iuUserId :: Lens' InstallsUpdate' Text
iuUserId = lens _iuUserId (\ s a -> s{_iuUserId = a})

-- | The ID of the product represented by the install, e.g.
-- \"app:com.google.android.gm\".
iuInstallId :: Lens' InstallsUpdate' Text
iuInstallId
  = lens _iuInstallId (\ s a -> s{_iuInstallId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iuKey :: Lens' InstallsUpdate' (Maybe Key)
iuKey = lens _iuKey (\ s a -> s{_iuKey = a})

-- | The Android ID of the device.
iuDeviceId :: Lens' InstallsUpdate' Text
iuDeviceId
  = lens _iuDeviceId (\ s a -> s{_iuDeviceId = a})

-- | OAuth 2.0 token for the current user.
iuOAuthToken :: Lens' InstallsUpdate' (Maybe OAuthToken)
iuOAuthToken
  = lens _iuOAuthToken (\ s a -> s{_iuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iuFields :: Lens' InstallsUpdate' (Maybe Text)
iuFields = lens _iuFields (\ s a -> s{_iuFields = a})

instance GoogleAuth InstallsUpdate' where
        authKey = iuKey . _Just
        authToken = iuOAuthToken . _Just

instance GoogleRequest InstallsUpdate' where
        type Rs InstallsUpdate' = Install
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u InstallsUpdate'{..}
          = go _iuEnterpriseId _iuUserId _iuDeviceId
              _iuInstallId
              _iuQuotaUser
              (Just _iuPrettyPrint)
              _iuUserIP
              _iuFields
              _iuKey
              _iuOAuthToken
              (Just AltJSON)
              _iuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstallsUpdateResource)
                      r
                      u
