{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.ChromeosDevices.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update Chrome OS Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryChromeosDevicesUpdate@.
module Network.Google.Resource.Directory.ChromeosDevices.Update
    (
    -- * REST Resource
      ChromeosDevicesUpdateResource

    -- * Creating a Request
    , chromeosDevicesUpdate'
    , ChromeosDevicesUpdate'

    -- * Request Lenses
    , cduQuotaUser
    , cduPrettyPrint
    , cduUserIP
    , cduPayload
    , cduCustomerId
    , cduKey
    , cduDeviceId
    , cduProjection
    , cduOAuthToken
    , cduFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryChromeosDevicesUpdate@ which the
-- 'ChromeosDevicesUpdate'' request conforms to.
type ChromeosDevicesUpdateResource =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "chromeos" :>
             Capture "deviceId" Text :>
               QueryParam "projection"
                 DirectoryChromeosDevicesUpdateProjection
                 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] ChromeOSDevice :>
                                 Put '[JSON] ChromeOSDevice

-- | Update Chrome OS Device
--
-- /See:/ 'chromeosDevicesUpdate'' smart constructor.
data ChromeosDevicesUpdate' = ChromeosDevicesUpdate'
    { _cduQuotaUser   :: !(Maybe Text)
    , _cduPrettyPrint :: !Bool
    , _cduUserIP      :: !(Maybe Text)
    , _cduPayload     :: !ChromeOSDevice
    , _cduCustomerId  :: !Text
    , _cduKey         :: !(Maybe Key)
    , _cduDeviceId    :: !Text
    , _cduProjection  :: !(Maybe DirectoryChromeosDevicesUpdateProjection)
    , _cduOAuthToken  :: !(Maybe OAuthToken)
    , _cduFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeosDevicesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cduQuotaUser'
--
-- * 'cduPrettyPrint'
--
-- * 'cduUserIP'
--
-- * 'cduPayload'
--
-- * 'cduCustomerId'
--
-- * 'cduKey'
--
-- * 'cduDeviceId'
--
-- * 'cduProjection'
--
-- * 'cduOAuthToken'
--
-- * 'cduFields'
chromeosDevicesUpdate'
    :: ChromeOSDevice -- ^ 'payload'
    -> Text -- ^ 'customerId'
    -> Text -- ^ 'deviceId'
    -> ChromeosDevicesUpdate'
chromeosDevicesUpdate' pCduPayload_ pCduCustomerId_ pCduDeviceId_ =
    ChromeosDevicesUpdate'
    { _cduQuotaUser = Nothing
    , _cduPrettyPrint = True
    , _cduUserIP = Nothing
    , _cduPayload = pCduPayload_
    , _cduCustomerId = pCduCustomerId_
    , _cduKey = Nothing
    , _cduDeviceId = pCduDeviceId_
    , _cduProjection = Nothing
    , _cduOAuthToken = Nothing
    , _cduFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cduQuotaUser :: Lens' ChromeosDevicesUpdate' (Maybe Text)
cduQuotaUser
  = lens _cduQuotaUser (\ s a -> s{_cduQuotaUser = a})

-- | Returns response with indentations and line breaks.
cduPrettyPrint :: Lens' ChromeosDevicesUpdate' Bool
cduPrettyPrint
  = lens _cduPrettyPrint
      (\ s a -> s{_cduPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cduUserIP :: Lens' ChromeosDevicesUpdate' (Maybe Text)
cduUserIP
  = lens _cduUserIP (\ s a -> s{_cduUserIP = a})

-- | Multipart request metadata.
cduPayload :: Lens' ChromeosDevicesUpdate' ChromeOSDevice
cduPayload
  = lens _cduPayload (\ s a -> s{_cduPayload = a})

-- | Immutable id of the Google Apps account
cduCustomerId :: Lens' ChromeosDevicesUpdate' Text
cduCustomerId
  = lens _cduCustomerId
      (\ s a -> s{_cduCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cduKey :: Lens' ChromeosDevicesUpdate' (Maybe Key)
cduKey = lens _cduKey (\ s a -> s{_cduKey = a})

-- | Immutable id of Chrome OS Device
cduDeviceId :: Lens' ChromeosDevicesUpdate' Text
cduDeviceId
  = lens _cduDeviceId (\ s a -> s{_cduDeviceId = a})

-- | Restrict information returned to a set of selected fields.
cduProjection :: Lens' ChromeosDevicesUpdate' (Maybe DirectoryChromeosDevicesUpdateProjection)
cduProjection
  = lens _cduProjection
      (\ s a -> s{_cduProjection = a})

-- | OAuth 2.0 token for the current user.
cduOAuthToken :: Lens' ChromeosDevicesUpdate' (Maybe OAuthToken)
cduOAuthToken
  = lens _cduOAuthToken
      (\ s a -> s{_cduOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cduFields :: Lens' ChromeosDevicesUpdate' (Maybe Text)
cduFields
  = lens _cduFields (\ s a -> s{_cduFields = a})

instance GoogleAuth ChromeosDevicesUpdate' where
        authKey = cduKey . _Just
        authToken = cduOAuthToken . _Just

instance GoogleRequest ChromeosDevicesUpdate' where
        type Rs ChromeosDevicesUpdate' = ChromeOSDevice
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u ChromeosDevicesUpdate'{..}
          = go _cduCustomerId _cduDeviceId _cduProjection
              _cduQuotaUser
              (Just _cduPrettyPrint)
              _cduUserIP
              _cduFields
              _cduKey
              _cduOAuthToken
              (Just AltJSON)
              _cduPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChromeosDevicesUpdateResource)
                      r
                      u
