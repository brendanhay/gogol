{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Installs.Update
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
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseInstallsUpdate@.
module Network.Google.Resource.Androidenterprise.Installs.Update
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
    , iuUserIp
    , iuUserId
    , iuInstallId
    , iuKey
    , iuDeviceId
    , iuOauthToken
    , iuFields
    , iuAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseInstallsUpdate@ which the
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
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :> Put '[JSON] Install

-- | Requests to install the latest version of an app to a device. If the app
-- is already installed then it is updated to the latest version if
-- necessary.
--
-- /See:/ 'installsUpdate'' smart constructor.
data InstallsUpdate' = InstallsUpdate'
    { _iuQuotaUser    :: !(Maybe Text)
    , _iuPrettyPrint  :: !Bool
    , _iuEnterpriseId :: !Text
    , _iuUserIp       :: !(Maybe Text)
    , _iuUserId       :: !Text
    , _iuInstallId    :: !Text
    , _iuKey          :: !(Maybe Text)
    , _iuDeviceId     :: !Text
    , _iuOauthToken   :: !(Maybe Text)
    , _iuFields       :: !(Maybe Text)
    , _iuAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'iuUserIp'
--
-- * 'iuUserId'
--
-- * 'iuInstallId'
--
-- * 'iuKey'
--
-- * 'iuDeviceId'
--
-- * 'iuOauthToken'
--
-- * 'iuFields'
--
-- * 'iuAlt'
installsUpdate'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'installId'
    -> Text -- ^ 'deviceId'
    -> InstallsUpdate'
installsUpdate' pIuEnterpriseId_ pIuUserId_ pIuInstallId_ pIuDeviceId_ =
    InstallsUpdate'
    { _iuQuotaUser = Nothing
    , _iuPrettyPrint = True
    , _iuEnterpriseId = pIuEnterpriseId_
    , _iuUserIp = Nothing
    , _iuUserId = pIuUserId_
    , _iuInstallId = pIuInstallId_
    , _iuKey = Nothing
    , _iuDeviceId = pIuDeviceId_
    , _iuOauthToken = Nothing
    , _iuFields = Nothing
    , _iuAlt = JSON
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
iuUserIp :: Lens' InstallsUpdate' (Maybe Text)
iuUserIp = lens _iuUserIp (\ s a -> s{_iuUserIp = a})

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
iuKey :: Lens' InstallsUpdate' (Maybe Text)
iuKey = lens _iuKey (\ s a -> s{_iuKey = a})

-- | The Android ID of the device.
iuDeviceId :: Lens' InstallsUpdate' Text
iuDeviceId
  = lens _iuDeviceId (\ s a -> s{_iuDeviceId = a})

-- | OAuth 2.0 token for the current user.
iuOauthToken :: Lens' InstallsUpdate' (Maybe Text)
iuOauthToken
  = lens _iuOauthToken (\ s a -> s{_iuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
iuFields :: Lens' InstallsUpdate' (Maybe Text)
iuFields = lens _iuFields (\ s a -> s{_iuFields = a})

-- | Data format for the response.
iuAlt :: Lens' InstallsUpdate' Alt
iuAlt = lens _iuAlt (\ s a -> s{_iuAlt = a})

instance GoogleRequest InstallsUpdate' where
        type Rs InstallsUpdate' = Install
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u InstallsUpdate'{..}
          = go _iuQuotaUser (Just _iuPrettyPrint)
              _iuEnterpriseId
              _iuUserIp
              _iuUserId
              _iuInstallId
              _iuKey
              _iuDeviceId
              _iuOauthToken
              _iuFields
              (Just _iuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstallsUpdateResource)
                      r
                      u
