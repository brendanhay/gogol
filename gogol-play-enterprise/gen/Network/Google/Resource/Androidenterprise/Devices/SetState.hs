{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Devices.SetState
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets whether a device is enabled or disabled for access by the user to
-- Google services. The device state takes effect only if enforcing EMM
-- policies on Android devices is enabled in the Google Admin Console.
-- Otherwise, the device state is ignored and all devices are allowed
-- access to Google services.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseDevicesSetState@.
module Androidenterprise.Devices.SetState
    (
    -- * REST Resource
      DevicesSetStateAPI

    -- * Creating a Request
    , devicesSetState
    , DevicesSetState

    -- * Request Lenses
    , dssQuotaUser
    , dssPrettyPrint
    , dssEnterpriseId
    , dssUserIp
    , dssUserId
    , dssKey
    , dssDeviceId
    , dssOauthToken
    , dssFields
    , dssAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseDevicesSetState@ which the
-- 'DevicesSetState' request conforms to.
type DevicesSetStateAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               Capture "deviceId" Text :>
                 "state" :> Put '[JSON] DeviceState

-- | Sets whether a device is enabled or disabled for access by the user to
-- Google services. The device state takes effect only if enforcing EMM
-- policies on Android devices is enabled in the Google Admin Console.
-- Otherwise, the device state is ignored and all devices are allowed
-- access to Google services.
--
-- /See:/ 'devicesSetState' smart constructor.
data DevicesSetState = DevicesSetState
    { _dssQuotaUser    :: !(Maybe Text)
    , _dssPrettyPrint  :: !Bool
    , _dssEnterpriseId :: !Text
    , _dssUserIp       :: !(Maybe Text)
    , _dssUserId       :: !Text
    , _dssKey          :: !(Maybe Text)
    , _dssDeviceId     :: !Text
    , _dssOauthToken   :: !(Maybe Text)
    , _dssFields       :: !(Maybe Text)
    , _dssAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DevicesSetState'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssQuotaUser'
--
-- * 'dssPrettyPrint'
--
-- * 'dssEnterpriseId'
--
-- * 'dssUserIp'
--
-- * 'dssUserId'
--
-- * 'dssKey'
--
-- * 'dssDeviceId'
--
-- * 'dssOauthToken'
--
-- * 'dssFields'
--
-- * 'dssAlt'
devicesSetState
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'deviceId'
    -> DevicesSetState
devicesSetState pDssEnterpriseId_ pDssUserId_ pDssDeviceId_ =
    DevicesSetState
    { _dssQuotaUser = Nothing
    , _dssPrettyPrint = True
    , _dssEnterpriseId = pDssEnterpriseId_
    , _dssUserIp = Nothing
    , _dssUserId = pDssUserId_
    , _dssKey = Nothing
    , _dssDeviceId = pDssDeviceId_
    , _dssOauthToken = Nothing
    , _dssFields = Nothing
    , _dssAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dssQuotaUser :: Lens' DevicesSetState' (Maybe Text)
dssQuotaUser
  = lens _dssQuotaUser (\ s a -> s{_dssQuotaUser = a})

-- | Returns response with indentations and line breaks.
dssPrettyPrint :: Lens' DevicesSetState' Bool
dssPrettyPrint
  = lens _dssPrettyPrint
      (\ s a -> s{_dssPrettyPrint = a})

-- | The ID of the enterprise.
dssEnterpriseId :: Lens' DevicesSetState' Text
dssEnterpriseId
  = lens _dssEnterpriseId
      (\ s a -> s{_dssEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dssUserIp :: Lens' DevicesSetState' (Maybe Text)
dssUserIp
  = lens _dssUserIp (\ s a -> s{_dssUserIp = a})

-- | The ID of the user.
dssUserId :: Lens' DevicesSetState' Text
dssUserId
  = lens _dssUserId (\ s a -> s{_dssUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dssKey :: Lens' DevicesSetState' (Maybe Text)
dssKey = lens _dssKey (\ s a -> s{_dssKey = a})

-- | The ID of the device.
dssDeviceId :: Lens' DevicesSetState' Text
dssDeviceId
  = lens _dssDeviceId (\ s a -> s{_dssDeviceId = a})

-- | OAuth 2.0 token for the current user.
dssOauthToken :: Lens' DevicesSetState' (Maybe Text)
dssOauthToken
  = lens _dssOauthToken
      (\ s a -> s{_dssOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dssFields :: Lens' DevicesSetState' (Maybe Text)
dssFields
  = lens _dssFields (\ s a -> s{_dssFields = a})

-- | Data format for the response.
dssAlt :: Lens' DevicesSetState' Text
dssAlt = lens _dssAlt (\ s a -> s{_dssAlt = a})

instance GoogleRequest DevicesSetState' where
        type Rs DevicesSetState' = DeviceState
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u DevicesSetState{..}
          = go _dssQuotaUser _dssPrettyPrint _dssEnterpriseId
              _dssUserIp
              _dssUserId
              _dssKey
              _dssDeviceId
              _dssOauthToken
              _dssFields
              _dssAlt
          where go
                  = clientWithRoute (Proxy :: Proxy DevicesSetStateAPI)
                      r
                      u
