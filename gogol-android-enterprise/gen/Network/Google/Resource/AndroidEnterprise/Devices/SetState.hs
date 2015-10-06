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
-- Module      : Network.Google.Resource.AndroidEnterprise.Devices.SetState
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
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseDevicesSetState@.
module Network.Google.Resource.AndroidEnterprise.Devices.SetState
    (
    -- * REST Resource
      DevicesSetStateResource

    -- * Creating a Request
    , devicesSetState'
    , DevicesSetState'

    -- * Request Lenses
    , dssQuotaUser
    , dssPrettyPrint
    , dssEnterpriseId
    , dssUserIP
    , dssPayload
    , dssUserId
    , dssKey
    , dssDeviceId
    , dssOAuthToken
    , dssFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseDevicesSetState@ which the
-- 'DevicesSetState'' request conforms to.
type DevicesSetStateResource =
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
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] DeviceState :>
                                   Put '[JSON] DeviceState

-- | Sets whether a device is enabled or disabled for access by the user to
-- Google services. The device state takes effect only if enforcing EMM
-- policies on Android devices is enabled in the Google Admin Console.
-- Otherwise, the device state is ignored and all devices are allowed
-- access to Google services.
--
-- /See:/ 'devicesSetState'' smart constructor.
data DevicesSetState' = DevicesSetState'
    { _dssQuotaUser    :: !(Maybe Text)
    , _dssPrettyPrint  :: !Bool
    , _dssEnterpriseId :: !Text
    , _dssUserIP       :: !(Maybe Text)
    , _dssPayload      :: !DeviceState
    , _dssUserId       :: !Text
    , _dssKey          :: !(Maybe AuthKey)
    , _dssDeviceId     :: !Text
    , _dssOAuthToken   :: !(Maybe OAuthToken)
    , _dssFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'dssUserIP'
--
-- * 'dssPayload'
--
-- * 'dssUserId'
--
-- * 'dssKey'
--
-- * 'dssDeviceId'
--
-- * 'dssOAuthToken'
--
-- * 'dssFields'
devicesSetState'
    :: Text -- ^ 'enterpriseId'
    -> DeviceState -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'deviceId'
    -> DevicesSetState'
devicesSetState' pDssEnterpriseId_ pDssPayload_ pDssUserId_ pDssDeviceId_ =
    DevicesSetState'
    { _dssQuotaUser = Nothing
    , _dssPrettyPrint = True
    , _dssEnterpriseId = pDssEnterpriseId_
    , _dssUserIP = Nothing
    , _dssPayload = pDssPayload_
    , _dssUserId = pDssUserId_
    , _dssKey = Nothing
    , _dssDeviceId = pDssDeviceId_
    , _dssOAuthToken = Nothing
    , _dssFields = Nothing
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
dssUserIP :: Lens' DevicesSetState' (Maybe Text)
dssUserIP
  = lens _dssUserIP (\ s a -> s{_dssUserIP = a})

-- | Multipart request metadata.
dssPayload :: Lens' DevicesSetState' DeviceState
dssPayload
  = lens _dssPayload (\ s a -> s{_dssPayload = a})

-- | The ID of the user.
dssUserId :: Lens' DevicesSetState' Text
dssUserId
  = lens _dssUserId (\ s a -> s{_dssUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dssKey :: Lens' DevicesSetState' (Maybe AuthKey)
dssKey = lens _dssKey (\ s a -> s{_dssKey = a})

-- | The ID of the device.
dssDeviceId :: Lens' DevicesSetState' Text
dssDeviceId
  = lens _dssDeviceId (\ s a -> s{_dssDeviceId = a})

-- | OAuth 2.0 token for the current user.
dssOAuthToken :: Lens' DevicesSetState' (Maybe OAuthToken)
dssOAuthToken
  = lens _dssOAuthToken
      (\ s a -> s{_dssOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dssFields :: Lens' DevicesSetState' (Maybe Text)
dssFields
  = lens _dssFields (\ s a -> s{_dssFields = a})

instance GoogleAuth DevicesSetState' where
        authKey = dssKey . _Just
        authToken = dssOAuthToken . _Just

instance GoogleRequest DevicesSetState' where
        type Rs DevicesSetState' = DeviceState
        request = requestWith androidEnterpriseRequest
        requestWith rq DevicesSetState'{..}
          = go _dssEnterpriseId _dssUserId _dssDeviceId
              _dssQuotaUser
              (Just _dssPrettyPrint)
              _dssUserIP
              _dssFields
              _dssKey
              _dssOAuthToken
              (Just AltJSON)
              _dssPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy DevicesSetStateResource)
                      rq
