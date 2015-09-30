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
-- Module      : Network.Google.Resource.Androidenterprise.Devices.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the IDs of all of a user\'s devices.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseDevicesList@.
module Network.Google.Resource.Androidenterprise.Devices.List
    (
    -- * REST Resource
      DevicesListResource

    -- * Creating a Request
    , devicesList'
    , DevicesList'

    -- * Request Lenses
    , dlQuotaUser
    , dlPrettyPrint
    , dlEnterpriseId
    , dlUserIp
    , dlUserId
    , dlKey
    , dlOauthToken
    , dlFields
    , dlAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseDevicesList@ which the
-- 'DevicesList'' request conforms to.
type DevicesListResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] DevicesListResponse

-- | Retrieves the IDs of all of a user\'s devices.
--
-- /See:/ 'devicesList'' smart constructor.
data DevicesList' = DevicesList'
    { _dlQuotaUser    :: !(Maybe Text)
    , _dlPrettyPrint  :: !Bool
    , _dlEnterpriseId :: !Text
    , _dlUserIp       :: !(Maybe Text)
    , _dlUserId       :: !Text
    , _dlKey          :: !(Maybe Text)
    , _dlOauthToken   :: !(Maybe Text)
    , _dlFields       :: !(Maybe Text)
    , _dlAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DevicesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlQuotaUser'
--
-- * 'dlPrettyPrint'
--
-- * 'dlEnterpriseId'
--
-- * 'dlUserIp'
--
-- * 'dlUserId'
--
-- * 'dlKey'
--
-- * 'dlOauthToken'
--
-- * 'dlFields'
--
-- * 'dlAlt'
devicesList'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> DevicesList'
devicesList' pDlEnterpriseId_ pDlUserId_ =
    DevicesList'
    { _dlQuotaUser = Nothing
    , _dlPrettyPrint = True
    , _dlEnterpriseId = pDlEnterpriseId_
    , _dlUserIp = Nothing
    , _dlUserId = pDlUserId_
    , _dlKey = Nothing
    , _dlOauthToken = Nothing
    , _dlFields = Nothing
    , _dlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dlQuotaUser :: Lens' DevicesList' (Maybe Text)
dlQuotaUser
  = lens _dlQuotaUser (\ s a -> s{_dlQuotaUser = a})

-- | Returns response with indentations and line breaks.
dlPrettyPrint :: Lens' DevicesList' Bool
dlPrettyPrint
  = lens _dlPrettyPrint
      (\ s a -> s{_dlPrettyPrint = a})

-- | The ID of the enterprise.
dlEnterpriseId :: Lens' DevicesList' Text
dlEnterpriseId
  = lens _dlEnterpriseId
      (\ s a -> s{_dlEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dlUserIp :: Lens' DevicesList' (Maybe Text)
dlUserIp = lens _dlUserIp (\ s a -> s{_dlUserIp = a})

-- | The ID of the user.
dlUserId :: Lens' DevicesList' Text
dlUserId = lens _dlUserId (\ s a -> s{_dlUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dlKey :: Lens' DevicesList' (Maybe Text)
dlKey = lens _dlKey (\ s a -> s{_dlKey = a})

-- | OAuth 2.0 token for the current user.
dlOauthToken :: Lens' DevicesList' (Maybe Text)
dlOauthToken
  = lens _dlOauthToken (\ s a -> s{_dlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dlFields :: Lens' DevicesList' (Maybe Text)
dlFields = lens _dlFields (\ s a -> s{_dlFields = a})

-- | Data format for the response.
dlAlt :: Lens' DevicesList' Alt
dlAlt = lens _dlAlt (\ s a -> s{_dlAlt = a})

instance GoogleRequest DevicesList' where
        type Rs DevicesList' = DevicesListResponse
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u DevicesList'{..}
          = go _dlQuotaUser (Just _dlPrettyPrint)
              _dlEnterpriseId
              _dlUserIp
              _dlUserId
              _dlKey
              _dlOauthToken
              _dlFields
              (Just _dlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DevicesListResource)
                      r
                      u
