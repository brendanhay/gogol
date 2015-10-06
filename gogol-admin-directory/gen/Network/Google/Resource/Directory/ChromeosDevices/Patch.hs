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
    , cdpUserIP
    , cdpPayload
    , cdpCustomerId
    , cdpKey
    , cdpDeviceId
    , cdpProjection
    , cdpOAuthToken
    , cdpFields
    ) where

import           Network.Google.Directory.Types
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
                 ChromeosDevicesPatchProjection
                 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] ChromeOSDevice :>
                                 Patch '[JSON] ChromeOSDevice

-- | Update Chrome OS Device. This method supports patch semantics.
--
-- /See:/ 'chromeosDevicesPatch'' smart constructor.
data ChromeosDevicesPatch' = ChromeosDevicesPatch'
    { _cdpQuotaUser   :: !(Maybe Text)
    , _cdpPrettyPrint :: !Bool
    , _cdpUserIP      :: !(Maybe Text)
    , _cdpPayload     :: !ChromeOSDevice
    , _cdpCustomerId  :: !Text
    , _cdpKey         :: !(Maybe AuthKey)
    , _cdpDeviceId    :: !Text
    , _cdpProjection  :: !(Maybe ChromeosDevicesPatchProjection)
    , _cdpOAuthToken  :: !(Maybe OAuthToken)
    , _cdpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeosDevicesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdpQuotaUser'
--
-- * 'cdpPrettyPrint'
--
-- * 'cdpUserIP'
--
-- * 'cdpPayload'
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
    :: ChromeOSDevice -- ^ 'payload'
    -> Text -- ^ 'customerId'
    -> Text -- ^ 'deviceId'
    -> ChromeosDevicesPatch'
chromeosDevicesPatch' pCdpPayload_ pCdpCustomerId_ pCdpDeviceId_ =
    ChromeosDevicesPatch'
    { _cdpQuotaUser = Nothing
    , _cdpPrettyPrint = True
    , _cdpUserIP = Nothing
    , _cdpPayload = pCdpPayload_
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

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdpUserIP :: Lens' ChromeosDevicesPatch' (Maybe Text)
cdpUserIP
  = lens _cdpUserIP (\ s a -> s{_cdpUserIP = a})

-- | Multipart request metadata.
cdpPayload :: Lens' ChromeosDevicesPatch' ChromeOSDevice
cdpPayload
  = lens _cdpPayload (\ s a -> s{_cdpPayload = a})

-- | Immutable id of the Google Apps account
cdpCustomerId :: Lens' ChromeosDevicesPatch' Text
cdpCustomerId
  = lens _cdpCustomerId
      (\ s a -> s{_cdpCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdpKey :: Lens' ChromeosDevicesPatch' (Maybe AuthKey)
cdpKey = lens _cdpKey (\ s a -> s{_cdpKey = a})

-- | Immutable id of Chrome OS Device
cdpDeviceId :: Lens' ChromeosDevicesPatch' Text
cdpDeviceId
  = lens _cdpDeviceId (\ s a -> s{_cdpDeviceId = a})

-- | Restrict information returned to a set of selected fields.
cdpProjection :: Lens' ChromeosDevicesPatch' (Maybe ChromeosDevicesPatchProjection)
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
        request = requestWith directoryRequest
        requestWith rq ChromeosDevicesPatch'{..}
          = go _cdpCustomerId _cdpDeviceId _cdpProjection
              _cdpQuotaUser
              (Just _cdpPrettyPrint)
              _cdpUserIP
              _cdpFields
              _cdpKey
              _cdpOAuthToken
              (Just AltJSON)
              _cdpPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ChromeosDevicesPatchResource)
                      rq
