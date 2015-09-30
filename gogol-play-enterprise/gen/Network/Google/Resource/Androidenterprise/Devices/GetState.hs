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
-- Module      : Network.Google.Resource.Androidenterprise.Devices.GetState
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves whether a device is enabled or disabled for access by the user
-- to Google services. The device state takes effect only if enforcing EMM
-- policies on Android devices is enabled in the Google Admin Console.
-- Otherwise, the device state is ignored and all devices are allowed
-- access to Google services.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseDevicesGetState@.
module Network.Google.Resource.Androidenterprise.Devices.GetState
    (
    -- * REST Resource
      DevicesGetStateResource

    -- * Creating a Request
    , devicesGetState'
    , DevicesGetState'

    -- * Request Lenses
    , dgsQuotaUser
    , dgsPrettyPrint
    , dgsEnterpriseId
    , dgsUserIp
    , dgsUserId
    , dgsKey
    , dgsDeviceId
    , dgsOauthToken
    , dgsFields
    , dgsAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseDevicesGetState@ which the
-- 'DevicesGetState'' request conforms to.
type DevicesGetStateResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               Capture "deviceId" Text :>
                 "state" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] DeviceState

-- | Retrieves whether a device is enabled or disabled for access by the user
-- to Google services. The device state takes effect only if enforcing EMM
-- policies on Android devices is enabled in the Google Admin Console.
-- Otherwise, the device state is ignored and all devices are allowed
-- access to Google services.
--
-- /See:/ 'devicesGetState'' smart constructor.
data DevicesGetState' = DevicesGetState'
    { _dgsQuotaUser    :: !(Maybe Text)
    , _dgsPrettyPrint  :: !Bool
    , _dgsEnterpriseId :: !Text
    , _dgsUserIp       :: !(Maybe Text)
    , _dgsUserId       :: !Text
    , _dgsKey          :: !(Maybe Text)
    , _dgsDeviceId     :: !Text
    , _dgsOauthToken   :: !(Maybe Text)
    , _dgsFields       :: !(Maybe Text)
    , _dgsAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DevicesGetState'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgsQuotaUser'
--
-- * 'dgsPrettyPrint'
--
-- * 'dgsEnterpriseId'
--
-- * 'dgsUserIp'
--
-- * 'dgsUserId'
--
-- * 'dgsKey'
--
-- * 'dgsDeviceId'
--
-- * 'dgsOauthToken'
--
-- * 'dgsFields'
--
-- * 'dgsAlt'
devicesGetState'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'deviceId'
    -> DevicesGetState'
devicesGetState' pDgsEnterpriseId_ pDgsUserId_ pDgsDeviceId_ =
    DevicesGetState'
    { _dgsQuotaUser = Nothing
    , _dgsPrettyPrint = True
    , _dgsEnterpriseId = pDgsEnterpriseId_
    , _dgsUserIp = Nothing
    , _dgsUserId = pDgsUserId_
    , _dgsKey = Nothing
    , _dgsDeviceId = pDgsDeviceId_
    , _dgsOauthToken = Nothing
    , _dgsFields = Nothing
    , _dgsAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dgsQuotaUser :: Lens' DevicesGetState' (Maybe Text)
dgsQuotaUser
  = lens _dgsQuotaUser (\ s a -> s{_dgsQuotaUser = a})

-- | Returns response with indentations and line breaks.
dgsPrettyPrint :: Lens' DevicesGetState' Bool
dgsPrettyPrint
  = lens _dgsPrettyPrint
      (\ s a -> s{_dgsPrettyPrint = a})

-- | The ID of the enterprise.
dgsEnterpriseId :: Lens' DevicesGetState' Text
dgsEnterpriseId
  = lens _dgsEnterpriseId
      (\ s a -> s{_dgsEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dgsUserIp :: Lens' DevicesGetState' (Maybe Text)
dgsUserIp
  = lens _dgsUserIp (\ s a -> s{_dgsUserIp = a})

-- | The ID of the user.
dgsUserId :: Lens' DevicesGetState' Text
dgsUserId
  = lens _dgsUserId (\ s a -> s{_dgsUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgsKey :: Lens' DevicesGetState' (Maybe Text)
dgsKey = lens _dgsKey (\ s a -> s{_dgsKey = a})

-- | The ID of the device.
dgsDeviceId :: Lens' DevicesGetState' Text
dgsDeviceId
  = lens _dgsDeviceId (\ s a -> s{_dgsDeviceId = a})

-- | OAuth 2.0 token for the current user.
dgsOauthToken :: Lens' DevicesGetState' (Maybe Text)
dgsOauthToken
  = lens _dgsOauthToken
      (\ s a -> s{_dgsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgsFields :: Lens' DevicesGetState' (Maybe Text)
dgsFields
  = lens _dgsFields (\ s a -> s{_dgsFields = a})

-- | Data format for the response.
dgsAlt :: Lens' DevicesGetState' Alt
dgsAlt = lens _dgsAlt (\ s a -> s{_dgsAlt = a})

instance GoogleRequest DevicesGetState' where
        type Rs DevicesGetState' = DeviceState
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u DevicesGetState'{..}
          = go _dgsQuotaUser (Just _dgsPrettyPrint)
              _dgsEnterpriseId
              _dgsUserIp
              _dgsUserId
              _dgsKey
              _dgsDeviceId
              _dgsOauthToken
              _dgsFields
              (Just _dgsAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DevicesGetStateResource)
                      r
                      u
