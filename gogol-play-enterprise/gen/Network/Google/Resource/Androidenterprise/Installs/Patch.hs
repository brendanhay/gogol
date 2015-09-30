{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Installs.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Requests to install the latest version of an app to a device. If the app
-- is already installed then it is updated to the latest version if
-- necessary. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseInstallsPatch@.
module Androidenterprise.Installs.Patch
    (
    -- * REST Resource
      InstallsPatchAPI

    -- * Creating a Request
    , installsPatch
    , InstallsPatch

    -- * Request Lenses
    , ipQuotaUser
    , ipPrettyPrint
    , ipEnterpriseId
    , ipUserIp
    , ipUserId
    , ipInstallId
    , ipKey
    , ipDeviceId
    , ipOauthToken
    , ipFields
    , ipAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseInstallsPatch@ which the
-- 'InstallsPatch' request conforms to.
type InstallsPatchAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               Capture "deviceId" Text :>
                 "installs" :>
                   Capture "installId" Text :> Patch '[JSON] Install

-- | Requests to install the latest version of an app to a device. If the app
-- is already installed then it is updated to the latest version if
-- necessary. This method supports patch semantics.
--
-- /See:/ 'installsPatch' smart constructor.
data InstallsPatch = InstallsPatch
    { _ipQuotaUser    :: !(Maybe Text)
    , _ipPrettyPrint  :: !Bool
    , _ipEnterpriseId :: !Text
    , _ipUserIp       :: !(Maybe Text)
    , _ipUserId       :: !Text
    , _ipInstallId    :: !Text
    , _ipKey          :: !(Maybe Text)
    , _ipDeviceId     :: !Text
    , _ipOauthToken   :: !(Maybe Text)
    , _ipFields       :: !(Maybe Text)
    , _ipAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstallsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipQuotaUser'
--
-- * 'ipPrettyPrint'
--
-- * 'ipEnterpriseId'
--
-- * 'ipUserIp'
--
-- * 'ipUserId'
--
-- * 'ipInstallId'
--
-- * 'ipKey'
--
-- * 'ipDeviceId'
--
-- * 'ipOauthToken'
--
-- * 'ipFields'
--
-- * 'ipAlt'
installsPatch
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'installId'
    -> Text -- ^ 'deviceId'
    -> InstallsPatch
installsPatch pIpEnterpriseId_ pIpUserId_ pIpInstallId_ pIpDeviceId_ =
    InstallsPatch
    { _ipQuotaUser = Nothing
    , _ipPrettyPrint = True
    , _ipEnterpriseId = pIpEnterpriseId_
    , _ipUserIp = Nothing
    , _ipUserId = pIpUserId_
    , _ipInstallId = pIpInstallId_
    , _ipKey = Nothing
    , _ipDeviceId = pIpDeviceId_
    , _ipOauthToken = Nothing
    , _ipFields = Nothing
    , _ipAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ipQuotaUser :: Lens' InstallsPatch' (Maybe Text)
ipQuotaUser
  = lens _ipQuotaUser (\ s a -> s{_ipQuotaUser = a})

-- | Returns response with indentations and line breaks.
ipPrettyPrint :: Lens' InstallsPatch' Bool
ipPrettyPrint
  = lens _ipPrettyPrint
      (\ s a -> s{_ipPrettyPrint = a})

-- | The ID of the enterprise.
ipEnterpriseId :: Lens' InstallsPatch' Text
ipEnterpriseId
  = lens _ipEnterpriseId
      (\ s a -> s{_ipEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ipUserIp :: Lens' InstallsPatch' (Maybe Text)
ipUserIp = lens _ipUserIp (\ s a -> s{_ipUserIp = a})

-- | The ID of the user.
ipUserId :: Lens' InstallsPatch' Text
ipUserId = lens _ipUserId (\ s a -> s{_ipUserId = a})

-- | The ID of the product represented by the install, e.g.
-- \"app:com.google.android.gm\".
ipInstallId :: Lens' InstallsPatch' Text
ipInstallId
  = lens _ipInstallId (\ s a -> s{_ipInstallId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ipKey :: Lens' InstallsPatch' (Maybe Text)
ipKey = lens _ipKey (\ s a -> s{_ipKey = a})

-- | The Android ID of the device.
ipDeviceId :: Lens' InstallsPatch' Text
ipDeviceId
  = lens _ipDeviceId (\ s a -> s{_ipDeviceId = a})

-- | OAuth 2.0 token for the current user.
ipOauthToken :: Lens' InstallsPatch' (Maybe Text)
ipOauthToken
  = lens _ipOauthToken (\ s a -> s{_ipOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ipFields :: Lens' InstallsPatch' (Maybe Text)
ipFields = lens _ipFields (\ s a -> s{_ipFields = a})

-- | Data format for the response.
ipAlt :: Lens' InstallsPatch' Text
ipAlt = lens _ipAlt (\ s a -> s{_ipAlt = a})

instance GoogleRequest InstallsPatch' where
        type Rs InstallsPatch' = Install
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u InstallsPatch{..}
          = go _ipQuotaUser _ipPrettyPrint _ipEnterpriseId
              _ipUserIp
              _ipUserId
              _ipInstallId
              _ipKey
              _ipDeviceId
              _ipOauthToken
              _ipFields
              _ipAlt
          where go
                  = clientWithRoute (Proxy :: Proxy InstallsPatchAPI) r
                      u
