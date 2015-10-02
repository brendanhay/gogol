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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightConfigurations.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing floodlight configuration.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightConfigurationsUpdate@.
module Network.Google.Resource.DFAReporting.FloodlightConfigurations.Update
    (
    -- * REST Resource
      FloodlightConfigurationsUpdateResource

    -- * Creating a Request
    , floodlightConfigurationsUpdate'
    , FloodlightConfigurationsUpdate'

    -- * Request Lenses
    , fcuQuotaUser
    , fcuPrettyPrint
    , fcuUserIP
    , fcuProfileId
    , fcuKey
    , fcuFloodlightConfiguration
    , fcuOAuthToken
    , fcuFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightConfigurationsUpdate@ which the
-- 'FloodlightConfigurationsUpdate'' request conforms to.
type FloodlightConfigurationsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightConfigurations" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] FloodlightConfiguration :>
                           Put '[JSON] FloodlightConfiguration

-- | Updates an existing floodlight configuration.
--
-- /See:/ 'floodlightConfigurationsUpdate'' smart constructor.
data FloodlightConfigurationsUpdate' = FloodlightConfigurationsUpdate'
    { _fcuQuotaUser               :: !(Maybe Text)
    , _fcuPrettyPrint             :: !Bool
    , _fcuUserIP                  :: !(Maybe Text)
    , _fcuProfileId               :: !Int64
    , _fcuKey                     :: !(Maybe Key)
    , _fcuFloodlightConfiguration :: !FloodlightConfiguration
    , _fcuOAuthToken              :: !(Maybe OAuthToken)
    , _fcuFields                  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightConfigurationsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcuQuotaUser'
--
-- * 'fcuPrettyPrint'
--
-- * 'fcuUserIP'
--
-- * 'fcuProfileId'
--
-- * 'fcuKey'
--
-- * 'fcuFloodlightConfiguration'
--
-- * 'fcuOAuthToken'
--
-- * 'fcuFields'
floodlightConfigurationsUpdate'
    :: Int64 -- ^ 'profileId'
    -> FloodlightConfiguration -- ^ 'FloodlightConfiguration'
    -> FloodlightConfigurationsUpdate'
floodlightConfigurationsUpdate' pFcuProfileId_ pFcuFloodlightConfiguration_ =
    FloodlightConfigurationsUpdate'
    { _fcuQuotaUser = Nothing
    , _fcuPrettyPrint = True
    , _fcuUserIP = Nothing
    , _fcuProfileId = pFcuProfileId_
    , _fcuKey = Nothing
    , _fcuFloodlightConfiguration = pFcuFloodlightConfiguration_
    , _fcuOAuthToken = Nothing
    , _fcuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fcuQuotaUser :: Lens' FloodlightConfigurationsUpdate' (Maybe Text)
fcuQuotaUser
  = lens _fcuQuotaUser (\ s a -> s{_fcuQuotaUser = a})

-- | Returns response with indentations and line breaks.
fcuPrettyPrint :: Lens' FloodlightConfigurationsUpdate' Bool
fcuPrettyPrint
  = lens _fcuPrettyPrint
      (\ s a -> s{_fcuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fcuUserIP :: Lens' FloodlightConfigurationsUpdate' (Maybe Text)
fcuUserIP
  = lens _fcuUserIP (\ s a -> s{_fcuUserIP = a})

-- | User profile ID associated with this request.
fcuProfileId :: Lens' FloodlightConfigurationsUpdate' Int64
fcuProfileId
  = lens _fcuProfileId (\ s a -> s{_fcuProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fcuKey :: Lens' FloodlightConfigurationsUpdate' (Maybe Key)
fcuKey = lens _fcuKey (\ s a -> s{_fcuKey = a})

-- | Multipart request metadata.
fcuFloodlightConfiguration :: Lens' FloodlightConfigurationsUpdate' FloodlightConfiguration
fcuFloodlightConfiguration
  = lens _fcuFloodlightConfiguration
      (\ s a -> s{_fcuFloodlightConfiguration = a})

-- | OAuth 2.0 token for the current user.
fcuOAuthToken :: Lens' FloodlightConfigurationsUpdate' (Maybe OAuthToken)
fcuOAuthToken
  = lens _fcuOAuthToken
      (\ s a -> s{_fcuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fcuFields :: Lens' FloodlightConfigurationsUpdate' (Maybe Text)
fcuFields
  = lens _fcuFields (\ s a -> s{_fcuFields = a})

instance GoogleAuth FloodlightConfigurationsUpdate'
         where
        authKey = fcuKey . _Just
        authToken = fcuOAuthToken . _Just

instance GoogleRequest
         FloodlightConfigurationsUpdate' where
        type Rs FloodlightConfigurationsUpdate' =
             FloodlightConfiguration
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          FloodlightConfigurationsUpdate'{..}
          = go _fcuQuotaUser (Just _fcuPrettyPrint) _fcuUserIP
              _fcuProfileId
              _fcuKey
              _fcuOAuthToken
              _fcuFields
              (Just AltJSON)
              _fcuFloodlightConfiguration
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy FloodlightConfigurationsUpdateResource)
                      r
                      u
