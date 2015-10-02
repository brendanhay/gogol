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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightConfigurations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one floodlight configuration by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightConfigurationsGet@.
module Network.Google.Resource.DFAReporting.FloodlightConfigurations.Get
    (
    -- * REST Resource
      FloodlightConfigurationsGetResource

    -- * Creating a Request
    , floodlightConfigurationsGet'
    , FloodlightConfigurationsGet'

    -- * Request Lenses
    , fcgQuotaUser
    , fcgPrettyPrint
    , fcgUserIP
    , fcgProfileId
    , fcgKey
    , fcgId
    , fcgOAuthToken
    , fcgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightConfigurationsGet@ which the
-- 'FloodlightConfigurationsGet'' request conforms to.
type FloodlightConfigurationsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightConfigurations" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] FloodlightConfiguration

-- | Gets one floodlight configuration by ID.
--
-- /See:/ 'floodlightConfigurationsGet'' smart constructor.
data FloodlightConfigurationsGet' = FloodlightConfigurationsGet'
    { _fcgQuotaUser   :: !(Maybe Text)
    , _fcgPrettyPrint :: !Bool
    , _fcgUserIP      :: !(Maybe Text)
    , _fcgProfileId   :: !Int64
    , _fcgKey         :: !(Maybe Key)
    , _fcgId          :: !Int64
    , _fcgOAuthToken  :: !(Maybe OAuthToken)
    , _fcgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightConfigurationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcgQuotaUser'
--
-- * 'fcgPrettyPrint'
--
-- * 'fcgUserIP'
--
-- * 'fcgProfileId'
--
-- * 'fcgKey'
--
-- * 'fcgId'
--
-- * 'fcgOAuthToken'
--
-- * 'fcgFields'
floodlightConfigurationsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> FloodlightConfigurationsGet'
floodlightConfigurationsGet' pFcgProfileId_ pFcgId_ =
    FloodlightConfigurationsGet'
    { _fcgQuotaUser = Nothing
    , _fcgPrettyPrint = True
    , _fcgUserIP = Nothing
    , _fcgProfileId = pFcgProfileId_
    , _fcgKey = Nothing
    , _fcgId = pFcgId_
    , _fcgOAuthToken = Nothing
    , _fcgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fcgQuotaUser :: Lens' FloodlightConfigurationsGet' (Maybe Text)
fcgQuotaUser
  = lens _fcgQuotaUser (\ s a -> s{_fcgQuotaUser = a})

-- | Returns response with indentations and line breaks.
fcgPrettyPrint :: Lens' FloodlightConfigurationsGet' Bool
fcgPrettyPrint
  = lens _fcgPrettyPrint
      (\ s a -> s{_fcgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fcgUserIP :: Lens' FloodlightConfigurationsGet' (Maybe Text)
fcgUserIP
  = lens _fcgUserIP (\ s a -> s{_fcgUserIP = a})

-- | User profile ID associated with this request.
fcgProfileId :: Lens' FloodlightConfigurationsGet' Int64
fcgProfileId
  = lens _fcgProfileId (\ s a -> s{_fcgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fcgKey :: Lens' FloodlightConfigurationsGet' (Maybe Key)
fcgKey = lens _fcgKey (\ s a -> s{_fcgKey = a})

-- | Floodlight configuration ID.
fcgId :: Lens' FloodlightConfigurationsGet' Int64
fcgId = lens _fcgId (\ s a -> s{_fcgId = a})

-- | OAuth 2.0 token for the current user.
fcgOAuthToken :: Lens' FloodlightConfigurationsGet' (Maybe OAuthToken)
fcgOAuthToken
  = lens _fcgOAuthToken
      (\ s a -> s{_fcgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fcgFields :: Lens' FloodlightConfigurationsGet' (Maybe Text)
fcgFields
  = lens _fcgFields (\ s a -> s{_fcgFields = a})

instance GoogleAuth FloodlightConfigurationsGet'
         where
        authKey = fcgKey . _Just
        authToken = fcgOAuthToken . _Just

instance GoogleRequest FloodlightConfigurationsGet'
         where
        type Rs FloodlightConfigurationsGet' =
             FloodlightConfiguration
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightConfigurationsGet'{..}
          = go _fcgProfileId _fcgId _fcgQuotaUser
              (Just _fcgPrettyPrint)
              _fcgUserIP
              _fcgFields
              _fcgKey
              _fcgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightConfigurationsGetResource)
                      r
                      u
