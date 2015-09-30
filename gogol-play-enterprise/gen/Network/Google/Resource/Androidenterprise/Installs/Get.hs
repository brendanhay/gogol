{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Installs.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves details of an installation of an app on a device.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseInstallsGet@.
module Androidenterprise.Installs.Get
    (
    -- * REST Resource
      InstallsGetAPI

    -- * Creating a Request
    , installsGet
    , InstallsGet

    -- * Request Lenses
    , igQuotaUser
    , igPrettyPrint
    , igEnterpriseId
    , igUserIp
    , igUserId
    , igInstallId
    , igKey
    , igDeviceId
    , igOauthToken
    , igFields
    , igAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseInstallsGet@ which the
-- 'InstallsGet' request conforms to.
type InstallsGetAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               Capture "deviceId" Text :>
                 "installs" :>
                   Capture "installId" Text :> Get '[JSON] Install

-- | Retrieves details of an installation of an app on a device.
--
-- /See:/ 'installsGet' smart constructor.
data InstallsGet = InstallsGet
    { _igQuotaUser    :: !(Maybe Text)
    , _igPrettyPrint  :: !Bool
    , _igEnterpriseId :: !Text
    , _igUserIp       :: !(Maybe Text)
    , _igUserId       :: !Text
    , _igInstallId    :: !Text
    , _igKey          :: !(Maybe Text)
    , _igDeviceId     :: !Text
    , _igOauthToken   :: !(Maybe Text)
    , _igFields       :: !(Maybe Text)
    , _igAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstallsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igQuotaUser'
--
-- * 'igPrettyPrint'
--
-- * 'igEnterpriseId'
--
-- * 'igUserIp'
--
-- * 'igUserId'
--
-- * 'igInstallId'
--
-- * 'igKey'
--
-- * 'igDeviceId'
--
-- * 'igOauthToken'
--
-- * 'igFields'
--
-- * 'igAlt'
installsGet
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'installId'
    -> Text -- ^ 'deviceId'
    -> InstallsGet
installsGet pIgEnterpriseId_ pIgUserId_ pIgInstallId_ pIgDeviceId_ =
    InstallsGet
    { _igQuotaUser = Nothing
    , _igPrettyPrint = True
    , _igEnterpriseId = pIgEnterpriseId_
    , _igUserIp = Nothing
    , _igUserId = pIgUserId_
    , _igInstallId = pIgInstallId_
    , _igKey = Nothing
    , _igDeviceId = pIgDeviceId_
    , _igOauthToken = Nothing
    , _igFields = Nothing
    , _igAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igQuotaUser :: Lens' InstallsGet' (Maybe Text)
igQuotaUser
  = lens _igQuotaUser (\ s a -> s{_igQuotaUser = a})

-- | Returns response with indentations and line breaks.
igPrettyPrint :: Lens' InstallsGet' Bool
igPrettyPrint
  = lens _igPrettyPrint
      (\ s a -> s{_igPrettyPrint = a})

-- | The ID of the enterprise.
igEnterpriseId :: Lens' InstallsGet' Text
igEnterpriseId
  = lens _igEnterpriseId
      (\ s a -> s{_igEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igUserIp :: Lens' InstallsGet' (Maybe Text)
igUserIp = lens _igUserIp (\ s a -> s{_igUserIp = a})

-- | The ID of the user.
igUserId :: Lens' InstallsGet' Text
igUserId = lens _igUserId (\ s a -> s{_igUserId = a})

-- | The ID of the product represented by the install, e.g.
-- \"app:com.google.android.gm\".
igInstallId :: Lens' InstallsGet' Text
igInstallId
  = lens _igInstallId (\ s a -> s{_igInstallId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igKey :: Lens' InstallsGet' (Maybe Text)
igKey = lens _igKey (\ s a -> s{_igKey = a})

-- | The Android ID of the device.
igDeviceId :: Lens' InstallsGet' Text
igDeviceId
  = lens _igDeviceId (\ s a -> s{_igDeviceId = a})

-- | OAuth 2.0 token for the current user.
igOauthToken :: Lens' InstallsGet' (Maybe Text)
igOauthToken
  = lens _igOauthToken (\ s a -> s{_igOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
igFields :: Lens' InstallsGet' (Maybe Text)
igFields = lens _igFields (\ s a -> s{_igFields = a})

-- | Data format for the response.
igAlt :: Lens' InstallsGet' Text
igAlt = lens _igAlt (\ s a -> s{_igAlt = a})

instance GoogleRequest InstallsGet' where
        type Rs InstallsGet' = Install
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u InstallsGet{..}
          = go _igQuotaUser _igPrettyPrint _igEnterpriseId
              _igUserIp
              _igUserId
              _igInstallId
              _igKey
              _igDeviceId
              _igOauthToken
              _igFields
              _igAlt
          where go
                  = clientWithRoute (Proxy :: Proxy InstallsGetAPI) r u
