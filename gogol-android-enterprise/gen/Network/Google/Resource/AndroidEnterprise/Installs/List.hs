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
-- Module      : Network.Google.Resource.AndroidEnterprise.Installs.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the details of all apps installed on the specified device.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseInstallsList@.
module Network.Google.Resource.AndroidEnterprise.Installs.List
    (
    -- * REST Resource
      InstallsListResource

    -- * Creating a Request
    , installsList'
    , InstallsList'

    -- * Request Lenses
    , ilQuotaUser
    , ilPrettyPrint
    , ilEnterpriseId
    , ilUserIP
    , ilUserId
    , ilKey
    , ilDeviceId
    , ilOAuthToken
    , ilFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseInstallsList@ which the
-- 'InstallsList'' request conforms to.
type InstallsListResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               Capture "deviceId" Text :>
                 "installs" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] InstallsListResponse

-- | Retrieves the details of all apps installed on the specified device.
--
-- /See:/ 'installsList'' smart constructor.
data InstallsList' = InstallsList'
    { _ilQuotaUser    :: !(Maybe Text)
    , _ilPrettyPrint  :: !Bool
    , _ilEnterpriseId :: !Text
    , _ilUserIP       :: !(Maybe Text)
    , _ilUserId       :: !Text
    , _ilKey          :: !(Maybe Key)
    , _ilDeviceId     :: !Text
    , _ilOAuthToken   :: !(Maybe OAuthToken)
    , _ilFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstallsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilQuotaUser'
--
-- * 'ilPrettyPrint'
--
-- * 'ilEnterpriseId'
--
-- * 'ilUserIP'
--
-- * 'ilUserId'
--
-- * 'ilKey'
--
-- * 'ilDeviceId'
--
-- * 'ilOAuthToken'
--
-- * 'ilFields'
installsList'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'deviceId'
    -> InstallsList'
installsList' pIlEnterpriseId_ pIlUserId_ pIlDeviceId_ =
    InstallsList'
    { _ilQuotaUser = Nothing
    , _ilPrettyPrint = True
    , _ilEnterpriseId = pIlEnterpriseId_
    , _ilUserIP = Nothing
    , _ilUserId = pIlUserId_
    , _ilKey = Nothing
    , _ilDeviceId = pIlDeviceId_
    , _ilOAuthToken = Nothing
    , _ilFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ilQuotaUser :: Lens' InstallsList' (Maybe Text)
ilQuotaUser
  = lens _ilQuotaUser (\ s a -> s{_ilQuotaUser = a})

-- | Returns response with indentations and line breaks.
ilPrettyPrint :: Lens' InstallsList' Bool
ilPrettyPrint
  = lens _ilPrettyPrint
      (\ s a -> s{_ilPrettyPrint = a})

-- | The ID of the enterprise.
ilEnterpriseId :: Lens' InstallsList' Text
ilEnterpriseId
  = lens _ilEnterpriseId
      (\ s a -> s{_ilEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ilUserIP :: Lens' InstallsList' (Maybe Text)
ilUserIP = lens _ilUserIP (\ s a -> s{_ilUserIP = a})

-- | The ID of the user.
ilUserId :: Lens' InstallsList' Text
ilUserId = lens _ilUserId (\ s a -> s{_ilUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ilKey :: Lens' InstallsList' (Maybe Key)
ilKey = lens _ilKey (\ s a -> s{_ilKey = a})

-- | The Android ID of the device.
ilDeviceId :: Lens' InstallsList' Text
ilDeviceId
  = lens _ilDeviceId (\ s a -> s{_ilDeviceId = a})

-- | OAuth 2.0 token for the current user.
ilOAuthToken :: Lens' InstallsList' (Maybe OAuthToken)
ilOAuthToken
  = lens _ilOAuthToken (\ s a -> s{_ilOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ilFields :: Lens' InstallsList' (Maybe Text)
ilFields = lens _ilFields (\ s a -> s{_ilFields = a})

instance GoogleAuth InstallsList' where
        authKey = ilKey . _Just
        authToken = ilOAuthToken . _Just

instance GoogleRequest InstallsList' where
        type Rs InstallsList' = InstallsListResponse
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u InstallsList'{..}
          = go _ilEnterpriseId _ilUserId _ilDeviceId
              _ilQuotaUser
              (Just _ilPrettyPrint)
              _ilUserIP
              _ilFields
              _ilKey
              _ilOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstallsListResource)
                      r
                      u
