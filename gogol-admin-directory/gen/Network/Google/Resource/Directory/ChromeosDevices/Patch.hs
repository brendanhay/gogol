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
-- Module      : Network.Google.Resource.Directory.ChromeosDevices.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update Chrome OS Device. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryChromeosDevicesPatch@.
module Network.Google.Resource.Directory.ChromeosDevices.Patch
    (
    -- * REST Resource
      ChromeosDevicesPatchResource

    -- * Creating a Request
    , chromeosDevicesPatch'
    , ChromeosDevicesPatch'

    -- * Request Lenses
    , cdpQuotaUser
    , cdpPrettyPrint
    , cdpChromeOSDevice
    , cdpUserIP
    , cdpCustomerId
    , cdpKey
    , cdpDeviceId
    , cdpProjection
    , cdpOAuthToken
    , cdpFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryChromeosDevicesPatch@ which the
-- 'ChromeosDevicesPatch'' request conforms to.
type ChromeosDevicesPatchResource =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "chromeos" :>
             Capture "deviceId" Text :>
               QueryParam "projection"
                 DirectoryChromeosDevicesPatchProjection
                 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] ChromeOSDevice :>
                                 Patch '[JSON] ChromeOSDevice

-- | Update Chrome OS Device. This method supports patch semantics.
--
-- /See:/ 'chromeosDevicesPatch'' smart constructor.
data ChromeosDevicesPatch' = ChromeosDevicesPatch'
    { _cdpQuotaUser      :: !(Maybe Text)
    , _cdpPrettyPrint    :: !Bool
    , _cdpChromeOSDevice :: !ChromeOSDevice
    , _cdpUserIP         :: !(Maybe Text)
    , _cdpCustomerId     :: !Text
    , _cdpKey            :: !(Maybe Key)
    , _cdpDeviceId       :: !Text
    , _cdpProjection     :: !(Maybe DirectoryChromeosDevicesPatchProjection)
    , _cdpOAuthToken     :: !(Maybe OAuthToken)
    , _cdpFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeosDevicesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdpQuotaUser'
--
-- * 'cdpPrettyPrint'
--
-- * 'cdpChromeOSDevice'
--
-- * 'cdpUserIP'
--
-- * 'cdpCustomerId'
--
-- * 'cdpKey'
--
-- * 'cdpDeviceId'
--
-- * 'cdpProjection'
--
-- * 'cdpOAuthToken'
--
-- * 'cdpFields'
chromeosDevicesPatch'
    :: ChromeOSDevice -- ^ 'ChromeOSDevice'
    -> Text -- ^ 'customerId'
    -> Text -- ^ 'deviceId'
    -> ChromeosDevicesPatch'
chromeosDevicesPatch' pCdpChromeOSDevice_ pCdpCustomerId_ pCdpDeviceId_ =
    ChromeosDevicesPatch'
    { _cdpQuotaUser = Nothing
    , _cdpPrettyPrint = True
    , _cdpChromeOSDevice = pCdpChromeOSDevice_
    , _cdpUserIP = Nothing
    , _cdpCustomerId = pCdpCustomerId_
    , _cdpKey = Nothing
    , _cdpDeviceId = pCdpDeviceId_
    , _cdpProjection = Nothing
    , _cdpOAuthToken = Nothing
    , _cdpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdpQuotaUser :: Lens' ChromeosDevicesPatch' (Maybe Text)
cdpQuotaUser
  = lens _cdpQuotaUser (\ s a -> s{_cdpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdpPrettyPrint :: Lens' ChromeosDevicesPatch' Bool
cdpPrettyPrint
  = lens _cdpPrettyPrint
      (\ s a -> s{_cdpPrettyPrint = a})

-- | Multipart request metadata.
cdpChromeOSDevice :: Lens' ChromeosDevicesPatch' ChromeOSDevice
cdpChromeOSDevice
  = lens _cdpChromeOSDevice
      (\ s a -> s{_cdpChromeOSDevice = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdpUserIP :: Lens' ChromeosDevicesPatch' (Maybe Text)
cdpUserIP
  = lens _cdpUserIP (\ s a -> s{_cdpUserIP = a})

-- | Immutable id of the Google Apps account
cdpCustomerId :: Lens' ChromeosDevicesPatch' Text
cdpCustomerId
  = lens _cdpCustomerId
      (\ s a -> s{_cdpCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdpKey :: Lens' ChromeosDevicesPatch' (Maybe Key)
cdpKey = lens _cdpKey (\ s a -> s{_cdpKey = a})

-- | Immutable id of Chrome OS Device
cdpDeviceId :: Lens' ChromeosDevicesPatch' Text
cdpDeviceId
  = lens _cdpDeviceId (\ s a -> s{_cdpDeviceId = a})

-- | Restrict information returned to a set of selected fields.
cdpProjection :: Lens' ChromeosDevicesPatch' (Maybe DirectoryChromeosDevicesPatchProjection)
cdpProjection
  = lens _cdpProjection
      (\ s a -> s{_cdpProjection = a})

-- | OAuth 2.0 token for the current user.
cdpOAuthToken :: Lens' ChromeosDevicesPatch' (Maybe OAuthToken)
cdpOAuthToken
  = lens _cdpOAuthToken
      (\ s a -> s{_cdpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdpFields :: Lens' ChromeosDevicesPatch' (Maybe Text)
cdpFields
  = lens _cdpFields (\ s a -> s{_cdpFields = a})

instance GoogleAuth ChromeosDevicesPatch' where
        authKey = cdpKey . _Just
        authToken = cdpOAuthToken . _Just

instance GoogleRequest ChromeosDevicesPatch' where
        type Rs ChromeosDevicesPatch' = ChromeOSDevice
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u ChromeosDevicesPatch'{..}
          = go _cdpProjection _cdpCustomerId _cdpDeviceId
              _cdpQuotaUser
              (Just _cdpPrettyPrint)
              _cdpUserIP
              _cdpFields
              _cdpKey
              _cdpOAuthToken
              (Just AltJSON)
              _cdpChromeOSDevice
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChromeosDevicesPatchResource)
                      r
                      u
