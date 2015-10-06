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
-- Module      : Network.Google.Resource.AndroidEnterprise.Devices.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the details of a device.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseDevicesGet@.
module Network.Google.Resource.AndroidEnterprise.Devices.Get
    (
    -- * REST Resource
      DevicesGetResource

    -- * Creating a Request
    , devicesGet'
    , DevicesGet'

    -- * Request Lenses
    , dgQuotaUser
    , dgPrettyPrint
    , dgEnterpriseId
    , dgUserIP
    , dgUserId
    , dgKey
    , dgDeviceId
    , dgOAuthToken
    , dgFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseDevicesGet@ which the
-- 'DevicesGet'' request conforms to.
type DevicesGetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               Capture "deviceId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Device

-- | Retrieves the details of a device.
--
-- /See:/ 'devicesGet'' smart constructor.
data DevicesGet' = DevicesGet'
    { _dgQuotaUser    :: !(Maybe Text)
    , _dgPrettyPrint  :: !Bool
    , _dgEnterpriseId :: !Text
    , _dgUserIP       :: !(Maybe Text)
    , _dgUserId       :: !Text
    , _dgKey          :: !(Maybe AuthKey)
    , _dgDeviceId     :: !Text
    , _dgOAuthToken   :: !(Maybe OAuthToken)
    , _dgFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'dgUserIP'
--
-- * 'dgUserId'
--
-- * 'dgKey'
--
-- * 'dgDeviceId'
--
-- * 'dgOAuthToken'
--
-- * 'dgFields'
devicesGet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'deviceId'
    -> DevicesGet'
devicesGet' pDgEnterpriseId_ pDgUserId_ pDgDeviceId_ =
    DevicesGet'
    { _dgQuotaUser = Nothing
    , _dgPrettyPrint = True
    , _dgEnterpriseId = pDgEnterpriseId_
    , _dgUserIP = Nothing
    , _dgUserId = pDgUserId_
    , _dgKey = Nothing
    , _dgDeviceId = pDgDeviceId_
    , _dgOAuthToken = Nothing
    , _dgFields = Nothing
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
dgUserIP :: Lens' DevicesGet' (Maybe Text)
dgUserIP = lens _dgUserIP (\ s a -> s{_dgUserIP = a})

-- | The ID of the user.
dgUserId :: Lens' DevicesGet' Text
dgUserId = lens _dgUserId (\ s a -> s{_dgUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgKey :: Lens' DevicesGet' (Maybe AuthKey)
dgKey = lens _dgKey (\ s a -> s{_dgKey = a})

-- | The ID of the device.
dgDeviceId :: Lens' DevicesGet' Text
dgDeviceId
  = lens _dgDeviceId (\ s a -> s{_dgDeviceId = a})

-- | OAuth 2.0 token for the current user.
dgOAuthToken :: Lens' DevicesGet' (Maybe OAuthToken)
dgOAuthToken
  = lens _dgOAuthToken (\ s a -> s{_dgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgFields :: Lens' DevicesGet' (Maybe Text)
dgFields = lens _dgFields (\ s a -> s{_dgFields = a})

instance GoogleAuth DevicesGet' where
        _AuthKey = dgKey . _Just
        _AuthToken = dgOAuthToken . _Just

instance GoogleRequest DevicesGet' where
        type Rs DevicesGet' = Device
        request = requestWith androidEnterpriseRequest
        requestWith rq DevicesGet'{..}
          = go _dgEnterpriseId _dgUserId _dgDeviceId
              _dgQuotaUser
              (Just _dgPrettyPrint)
              _dgUserIP
              _dgFields
              _dgKey
              _dgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy DevicesGetResource) rq
