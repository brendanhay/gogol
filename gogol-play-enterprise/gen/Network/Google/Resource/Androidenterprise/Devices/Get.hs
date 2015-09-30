{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Devices.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the details of a device.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseDevicesGet@.
module Androidenterprise.Devices.Get
    (
    -- * REST Resource
      DevicesGetAPI

    -- * Creating a Request
    , devicesGet
    , DevicesGet

    -- * Request Lenses
    , dgQuotaUser
    , dgPrettyPrint
    , dgEnterpriseId
    , dgUserIp
    , dgUserId
    , dgKey
    , dgDeviceId
    , dgOauthToken
    , dgFields
    , dgAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseDevicesGet@ which the
-- 'DevicesGet' request conforms to.
type DevicesGetAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               Capture "deviceId" Text :> Get '[JSON] Device

-- | Retrieves the details of a device.
--
-- /See:/ 'devicesGet' smart constructor.
data DevicesGet = DevicesGet
    { _dgQuotaUser    :: !(Maybe Text)
    , _dgPrettyPrint  :: !Bool
    , _dgEnterpriseId :: !Text
    , _dgUserIp       :: !(Maybe Text)
    , _dgUserId       :: !Text
    , _dgKey          :: !(Maybe Text)
    , _dgDeviceId     :: !Text
    , _dgOauthToken   :: !(Maybe Text)
    , _dgFields       :: !(Maybe Text)
    , _dgAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DevicesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgQuotaUser'
--
-- * 'dgPrettyPrint'
--
-- * 'dgEnterpriseId'
--
-- * 'dgUserIp'
--
-- * 'dgUserId'
--
-- * 'dgKey'
--
-- * 'dgDeviceId'
--
-- * 'dgOauthToken'
--
-- * 'dgFields'
--
-- * 'dgAlt'
devicesGet
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'deviceId'
    -> DevicesGet
devicesGet pDgEnterpriseId_ pDgUserId_ pDgDeviceId_ =
    DevicesGet
    { _dgQuotaUser = Nothing
    , _dgPrettyPrint = True
    , _dgEnterpriseId = pDgEnterpriseId_
    , _dgUserIp = Nothing
    , _dgUserId = pDgUserId_
    , _dgKey = Nothing
    , _dgDeviceId = pDgDeviceId_
    , _dgOauthToken = Nothing
    , _dgFields = Nothing
    , _dgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dgQuotaUser :: Lens' DevicesGet' (Maybe Text)
dgQuotaUser
  = lens _dgQuotaUser (\ s a -> s{_dgQuotaUser = a})

-- | Returns response with indentations and line breaks.
dgPrettyPrint :: Lens' DevicesGet' Bool
dgPrettyPrint
  = lens _dgPrettyPrint
      (\ s a -> s{_dgPrettyPrint = a})

-- | The ID of the enterprise.
dgEnterpriseId :: Lens' DevicesGet' Text
dgEnterpriseId
  = lens _dgEnterpriseId
      (\ s a -> s{_dgEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dgUserIp :: Lens' DevicesGet' (Maybe Text)
dgUserIp = lens _dgUserIp (\ s a -> s{_dgUserIp = a})

-- | The ID of the user.
dgUserId :: Lens' DevicesGet' Text
dgUserId = lens _dgUserId (\ s a -> s{_dgUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgKey :: Lens' DevicesGet' (Maybe Text)
dgKey = lens _dgKey (\ s a -> s{_dgKey = a})

-- | The ID of the device.
dgDeviceId :: Lens' DevicesGet' Text
dgDeviceId
  = lens _dgDeviceId (\ s a -> s{_dgDeviceId = a})

-- | OAuth 2.0 token for the current user.
dgOauthToken :: Lens' DevicesGet' (Maybe Text)
dgOauthToken
  = lens _dgOauthToken (\ s a -> s{_dgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgFields :: Lens' DevicesGet' (Maybe Text)
dgFields = lens _dgFields (\ s a -> s{_dgFields = a})

-- | Data format for the response.
dgAlt :: Lens' DevicesGet' Text
dgAlt = lens _dgAlt (\ s a -> s{_dgAlt = a})

instance GoogleRequest DevicesGet' where
        type Rs DevicesGet' = Device
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u DevicesGet{..}
          = go _dgQuotaUser _dgPrettyPrint _dgEnterpriseId
              _dgUserIp
              _dgUserId
              _dgKey
              _dgDeviceId
              _dgOauthToken
              _dgFields
              _dgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy DevicesGetAPI) r u
