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
-- Module      : Network.Google.Resource.DoubleClickSearch.Conversion.UpdateAvailability
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the availabilities of a batch of floodlight activities in
-- DoubleClick Search.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleClicksearchConversionUpdateAvailability@.
module Network.Google.Resource.DoubleClickSearch.Conversion.UpdateAvailability
    (
    -- * REST Resource
      ConversionUpdateAvailabilityResource

    -- * Creating a Request
    , conversionUpdateAvailability'
    , ConversionUpdateAvailability'

    -- * Request Lenses
    , cuaQuotaUser
    , cuaPrettyPrint
    , cuaUserIP
    , cuaPayload
    , cuaKey
    , cuaOAuthToken
    , cuaFields
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClicksearchConversionUpdateAvailability@ which the
-- 'ConversionUpdateAvailability'' request conforms to.
type ConversionUpdateAvailabilityResource =
     "conversion" :>
       "updateAvailability" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[OctetStream] UpdateAvailabilityRequest :>
                         Post '[JSON] UpdateAvailabilityResponse

-- | Updates the availabilities of a batch of floodlight activities in
-- DoubleClick Search.
--
-- /See:/ 'conversionUpdateAvailability'' smart constructor.
data ConversionUpdateAvailability' = ConversionUpdateAvailability'
    { _cuaQuotaUser   :: !(Maybe Text)
    , _cuaPrettyPrint :: !Bool
    , _cuaUserIP      :: !(Maybe Text)
    , _cuaPayload     :: !UpdateAvailabilityRequest
    , _cuaKey         :: !(Maybe Key)
    , _cuaOAuthToken  :: !(Maybe OAuthToken)
    , _cuaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConversionUpdateAvailability'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuaQuotaUser'
--
-- * 'cuaPrettyPrint'
--
-- * 'cuaUserIP'
--
-- * 'cuaPayload'
--
-- * 'cuaKey'
--
-- * 'cuaOAuthToken'
--
-- * 'cuaFields'
conversionUpdateAvailability'
    :: UpdateAvailabilityRequest -- ^ 'payload'
    -> ConversionUpdateAvailability'
conversionUpdateAvailability' pCuaPayload_ =
    ConversionUpdateAvailability'
    { _cuaQuotaUser = Nothing
    , _cuaPrettyPrint = True
    , _cuaUserIP = Nothing
    , _cuaPayload = pCuaPayload_
    , _cuaKey = Nothing
    , _cuaOAuthToken = Nothing
    , _cuaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuaQuotaUser :: Lens' ConversionUpdateAvailability' (Maybe Text)
cuaQuotaUser
  = lens _cuaQuotaUser (\ s a -> s{_cuaQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuaPrettyPrint :: Lens' ConversionUpdateAvailability' Bool
cuaPrettyPrint
  = lens _cuaPrettyPrint
      (\ s a -> s{_cuaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuaUserIP :: Lens' ConversionUpdateAvailability' (Maybe Text)
cuaUserIP
  = lens _cuaUserIP (\ s a -> s{_cuaUserIP = a})

-- | Multipart request metadata.
cuaPayload :: Lens' ConversionUpdateAvailability' UpdateAvailabilityRequest
cuaPayload
  = lens _cuaPayload (\ s a -> s{_cuaPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuaKey :: Lens' ConversionUpdateAvailability' (Maybe Key)
cuaKey = lens _cuaKey (\ s a -> s{_cuaKey = a})

-- | OAuth 2.0 token for the current user.
cuaOAuthToken :: Lens' ConversionUpdateAvailability' (Maybe OAuthToken)
cuaOAuthToken
  = lens _cuaOAuthToken
      (\ s a -> s{_cuaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuaFields :: Lens' ConversionUpdateAvailability' (Maybe Text)
cuaFields
  = lens _cuaFields (\ s a -> s{_cuaFields = a})

instance GoogleAuth ConversionUpdateAvailability'
         where
        authKey = cuaKey . _Just
        authToken = cuaOAuthToken . _Just

instance GoogleRequest ConversionUpdateAvailability'
         where
        type Rs ConversionUpdateAvailability' =
             UpdateAvailabilityResponse
        request
          = requestWithRoute defReq doubleClickSearchURL
        requestWithRoute r u
          ConversionUpdateAvailability'{..}
          = go _cuaQuotaUser (Just _cuaPrettyPrint) _cuaUserIP
              _cuaFields
              _cuaKey
              _cuaOAuthToken
              (Just AltJSON)
              _cuaPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ConversionUpdateAvailabilityResource)
                      r
                      u
