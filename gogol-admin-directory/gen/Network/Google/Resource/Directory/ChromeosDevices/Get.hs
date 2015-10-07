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
-- Module      : Network.Google.Resource.Directory.ChromeosDevices.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve Chrome OS Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryChromeosDevicesGet@.
module Network.Google.Resource.Directory.ChromeosDevices.Get
    (
    -- * REST Resource
      ChromeosDevicesGetResource

    -- * Creating a Request
    , chromeosDevicesGet'
    , ChromeosDevicesGet'

    -- * Request Lenses
    , cdgQuotaUser
    , cdgPrettyPrint
    , cdgUserIP
    , cdgCustomerId
    , cdgKey
    , cdgDeviceId
    , cdgProjection
    , cdgOAuthToken
    , cdgFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryChromeosDevicesGet@ method which the
-- 'ChromeosDevicesGet'' request conforms to.
type ChromeosDevicesGetResource =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "chromeos" :>
             Capture "deviceId" Text :>
               QueryParam "projection" ChromeosDevicesGetProjection
                 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ChromeOSDevice

-- | Retrieve Chrome OS Device
--
-- /See:/ 'chromeosDevicesGet'' smart constructor.
data ChromeosDevicesGet' = ChromeosDevicesGet'
    { _cdgQuotaUser   :: !(Maybe Text)
    , _cdgPrettyPrint :: !Bool
    , _cdgUserIP      :: !(Maybe Text)
    , _cdgCustomerId  :: !Text
    , _cdgKey         :: !(Maybe AuthKey)
    , _cdgDeviceId    :: !Text
    , _cdgProjection  :: !(Maybe ChromeosDevicesGetProjection)
    , _cdgOAuthToken  :: !(Maybe OAuthToken)
    , _cdgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeosDevicesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdgQuotaUser'
--
-- * 'cdgPrettyPrint'
--
-- * 'cdgUserIP'
--
-- * 'cdgCustomerId'
--
-- * 'cdgKey'
--
-- * 'cdgDeviceId'
--
-- * 'cdgProjection'
--
-- * 'cdgOAuthToken'
--
-- * 'cdgFields'
chromeosDevicesGet'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'deviceId'
    -> ChromeosDevicesGet'
chromeosDevicesGet' pCdgCustomerId_ pCdgDeviceId_ =
    ChromeosDevicesGet'
    { _cdgQuotaUser = Nothing
    , _cdgPrettyPrint = True
    , _cdgUserIP = Nothing
    , _cdgCustomerId = pCdgCustomerId_
    , _cdgKey = Nothing
    , _cdgDeviceId = pCdgDeviceId_
    , _cdgProjection = Nothing
    , _cdgOAuthToken = Nothing
    , _cdgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdgQuotaUser :: Lens' ChromeosDevicesGet' (Maybe Text)
cdgQuotaUser
  = lens _cdgQuotaUser (\ s a -> s{_cdgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdgPrettyPrint :: Lens' ChromeosDevicesGet' Bool
cdgPrettyPrint
  = lens _cdgPrettyPrint
      (\ s a -> s{_cdgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdgUserIP :: Lens' ChromeosDevicesGet' (Maybe Text)
cdgUserIP
  = lens _cdgUserIP (\ s a -> s{_cdgUserIP = a})

-- | Immutable id of the Google Apps account
cdgCustomerId :: Lens' ChromeosDevicesGet' Text
cdgCustomerId
  = lens _cdgCustomerId
      (\ s a -> s{_cdgCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdgKey :: Lens' ChromeosDevicesGet' (Maybe AuthKey)
cdgKey = lens _cdgKey (\ s a -> s{_cdgKey = a})

-- | Immutable id of Chrome OS Device
cdgDeviceId :: Lens' ChromeosDevicesGet' Text
cdgDeviceId
  = lens _cdgDeviceId (\ s a -> s{_cdgDeviceId = a})

-- | Restrict information returned to a set of selected fields.
cdgProjection :: Lens' ChromeosDevicesGet' (Maybe ChromeosDevicesGetProjection)
cdgProjection
  = lens _cdgProjection
      (\ s a -> s{_cdgProjection = a})

-- | OAuth 2.0 token for the current user.
cdgOAuthToken :: Lens' ChromeosDevicesGet' (Maybe OAuthToken)
cdgOAuthToken
  = lens _cdgOAuthToken
      (\ s a -> s{_cdgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdgFields :: Lens' ChromeosDevicesGet' (Maybe Text)
cdgFields
  = lens _cdgFields (\ s a -> s{_cdgFields = a})

instance GoogleAuth ChromeosDevicesGet' where
        _AuthKey = cdgKey . _Just
        _AuthToken = cdgOAuthToken . _Just

instance GoogleRequest ChromeosDevicesGet' where
        type Rs ChromeosDevicesGet' = ChromeOSDevice
        request = requestWith directoryRequest
        requestWith rq ChromeosDevicesGet'{..}
          = go _cdgCustomerId _cdgDeviceId _cdgProjection
              _cdgQuotaUser
              (Just _cdgPrettyPrint)
              _cdgUserIP
              _cdgFields
              _cdgKey
              _cdgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ChromeosDevicesGetResource)
                      rq
