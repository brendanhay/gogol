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
-- Module      : Network.Google.Resource.Androidenterprise.Installs.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the details of all apps installed on the specified device.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseInstallsList@.
module Network.Google.Resource.Androidenterprise.Installs.List
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
    , ilUserIp
    , ilUserId
    , ilKey
    , ilDeviceId
    , ilOauthToken
    , ilFields
    , ilAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseInstallsList@ which the
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
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] InstallsListResponse

-- | Retrieves the details of all apps installed on the specified device.
--
-- /See:/ 'installsList'' smart constructor.
data InstallsList' = InstallsList'
    { _ilQuotaUser    :: !(Maybe Text)
    , _ilPrettyPrint  :: !Bool
    , _ilEnterpriseId :: !Text
    , _ilUserIp       :: !(Maybe Text)
    , _ilUserId       :: !Text
    , _ilKey          :: !(Maybe Text)
    , _ilDeviceId     :: !Text
    , _ilOauthToken   :: !(Maybe Text)
    , _ilFields       :: !(Maybe Text)
    , _ilAlt          :: !Alt
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
-- * 'ilUserIp'
--
-- * 'ilUserId'
--
-- * 'ilKey'
--
-- * 'ilDeviceId'
--
-- * 'ilOauthToken'
--
-- * 'ilFields'
--
-- * 'ilAlt'
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
    , _ilUserIp = Nothing
    , _ilUserId = pIlUserId_
    , _ilKey = Nothing
    , _ilDeviceId = pIlDeviceId_
    , _ilOauthToken = Nothing
    , _ilFields = Nothing
    , _ilAlt = JSON
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
ilUserIp :: Lens' InstallsList' (Maybe Text)
ilUserIp = lens _ilUserIp (\ s a -> s{_ilUserIp = a})

-- | The ID of the user.
ilUserId :: Lens' InstallsList' Text
ilUserId = lens _ilUserId (\ s a -> s{_ilUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ilKey :: Lens' InstallsList' (Maybe Text)
ilKey = lens _ilKey (\ s a -> s{_ilKey = a})

-- | The Android ID of the device.
ilDeviceId :: Lens' InstallsList' Text
ilDeviceId
  = lens _ilDeviceId (\ s a -> s{_ilDeviceId = a})

-- | OAuth 2.0 token for the current user.
ilOauthToken :: Lens' InstallsList' (Maybe Text)
ilOauthToken
  = lens _ilOauthToken (\ s a -> s{_ilOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ilFields :: Lens' InstallsList' (Maybe Text)
ilFields = lens _ilFields (\ s a -> s{_ilFields = a})

-- | Data format for the response.
ilAlt :: Lens' InstallsList' Alt
ilAlt = lens _ilAlt (\ s a -> s{_ilAlt = a})

instance GoogleRequest InstallsList' where
        type Rs InstallsList' = InstallsListResponse
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u InstallsList'{..}
          = go _ilQuotaUser (Just _ilPrettyPrint)
              _ilEnterpriseId
              _ilUserIp
              _ilUserId
              _ilKey
              _ilDeviceId
              _ilOauthToken
              _ilFields
              (Just _ilAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstallsListResource)
                      r
                      u
