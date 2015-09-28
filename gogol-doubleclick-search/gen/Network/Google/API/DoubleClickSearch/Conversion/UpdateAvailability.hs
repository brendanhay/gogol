{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DoubleClickSearch.Conversion.UpdateAvailability
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the availabilities of a batch of floodlight activities in
-- DoubleClick Search.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @doubleclicksearch.conversion.updateAvailability@.
module Network.Google.API.DoubleClickSearch.Conversion.UpdateAvailability
    (
    -- * REST Resource
      ConversionUpdateAvailabilityAPI

    -- * Creating a Request
    , conversionUpdateAvailability'
    , ConversionUpdateAvailability'

    -- * Request Lenses
    , cuaQuotaUser
    , cuaPrettyPrint
    , cuaUserIp
    , cuaKey
    , cuaOauthToken
    , cuaFields
    , cuaAlt
    ) where

import           Network.Google.DoubleClick.Search.Types
import           Network.Google.Prelude

-- | A resource alias for doubleclicksearch.conversion.updateAvailability which the
-- 'ConversionUpdateAvailability'' request conforms to.
type ConversionUpdateAvailabilityAPI =
     "conversion" :>
       "updateAvailability" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] UpdateAvailabilityResponse

-- | Updates the availabilities of a batch of floodlight activities in
-- DoubleClick Search.
--
-- /See:/ 'conversionUpdateAvailability'' smart constructor.
data ConversionUpdateAvailability' = ConversionUpdateAvailability'
    { _cuaQuotaUser   :: !(Maybe Text)
    , _cuaPrettyPrint :: !Bool
    , _cuaUserIp      :: !(Maybe Text)
    , _cuaKey         :: !(Maybe Text)
    , _cuaOauthToken  :: !(Maybe Text)
    , _cuaFields      :: !(Maybe Text)
    , _cuaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConversionUpdateAvailability'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuaQuotaUser'
--
-- * 'cuaPrettyPrint'
--
-- * 'cuaUserIp'
--
-- * 'cuaKey'
--
-- * 'cuaOauthToken'
--
-- * 'cuaFields'
--
-- * 'cuaAlt'
conversionUpdateAvailability'
    :: ConversionUpdateAvailability'
conversionUpdateAvailability' =
    ConversionUpdateAvailability'
    { _cuaQuotaUser = Nothing
    , _cuaPrettyPrint = True
    , _cuaUserIp = Nothing
    , _cuaKey = Nothing
    , _cuaOauthToken = Nothing
    , _cuaFields = Nothing
    , _cuaAlt = JSON
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
cuaUserIp :: Lens' ConversionUpdateAvailability' (Maybe Text)
cuaUserIp
  = lens _cuaUserIp (\ s a -> s{_cuaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuaKey :: Lens' ConversionUpdateAvailability' (Maybe Text)
cuaKey = lens _cuaKey (\ s a -> s{_cuaKey = a})

-- | OAuth 2.0 token for the current user.
cuaOauthToken :: Lens' ConversionUpdateAvailability' (Maybe Text)
cuaOauthToken
  = lens _cuaOauthToken
      (\ s a -> s{_cuaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuaFields :: Lens' ConversionUpdateAvailability' (Maybe Text)
cuaFields
  = lens _cuaFields (\ s a -> s{_cuaFields = a})

-- | Data format for the response.
cuaAlt :: Lens' ConversionUpdateAvailability' Alt
cuaAlt = lens _cuaAlt (\ s a -> s{_cuaAlt = a})

instance GoogleRequest ConversionUpdateAvailability'
         where
        type Rs ConversionUpdateAvailability' =
             UpdateAvailabilityResponse
        request
          = requestWithRoute defReq doubleClickSearchURL
        requestWithRoute r u
          ConversionUpdateAvailability'{..}
          = go _cuaQuotaUser (Just _cuaPrettyPrint) _cuaUserIp
              _cuaKey
              _cuaOauthToken
              _cuaFields
              (Just _cuaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ConversionUpdateAvailabilityAPI)
                      r
                      u
