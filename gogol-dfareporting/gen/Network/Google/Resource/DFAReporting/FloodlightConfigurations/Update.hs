{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module DFAReporting.FloodlightConfigurations.Update
    (
    -- * REST Resource
      FloodlightConfigurationsUpdateAPI

    -- * Creating a Request
    , floodlightConfigurationsUpdate
    , FloodlightConfigurationsUpdate

    -- * Request Lenses
    , fcuQuotaUser
    , fcuPrettyPrint
    , fcuUserIp
    , fcuProfileId
    , fcuKey
    , fcuOauthToken
    , fcuFields
    , fcuAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightConfigurationsUpdate@ which the
-- 'FloodlightConfigurationsUpdate' request conforms to.
type FloodlightConfigurationsUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightConfigurations" :>
           Put '[JSON] FloodlightConfiguration

-- | Updates an existing floodlight configuration.
--
-- /See:/ 'floodlightConfigurationsUpdate' smart constructor.
data FloodlightConfigurationsUpdate = FloodlightConfigurationsUpdate
    { _fcuQuotaUser   :: !(Maybe Text)
    , _fcuPrettyPrint :: !Bool
    , _fcuUserIp      :: !(Maybe Text)
    , _fcuProfileId   :: !Int64
    , _fcuKey         :: !(Maybe Text)
    , _fcuOauthToken  :: !(Maybe Text)
    , _fcuFields      :: !(Maybe Text)
    , _fcuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightConfigurationsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcuQuotaUser'
--
-- * 'fcuPrettyPrint'
--
-- * 'fcuUserIp'
--
-- * 'fcuProfileId'
--
-- * 'fcuKey'
--
-- * 'fcuOauthToken'
--
-- * 'fcuFields'
--
-- * 'fcuAlt'
floodlightConfigurationsUpdate
    :: Int64 -- ^ 'profileId'
    -> FloodlightConfigurationsUpdate
floodlightConfigurationsUpdate pFcuProfileId_ =
    FloodlightConfigurationsUpdate
    { _fcuQuotaUser = Nothing
    , _fcuPrettyPrint = True
    , _fcuUserIp = Nothing
    , _fcuProfileId = pFcuProfileId_
    , _fcuKey = Nothing
    , _fcuOauthToken = Nothing
    , _fcuFields = Nothing
    , _fcuAlt = "json"
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
fcuUserIp :: Lens' FloodlightConfigurationsUpdate' (Maybe Text)
fcuUserIp
  = lens _fcuUserIp (\ s a -> s{_fcuUserIp = a})

-- | User profile ID associated with this request.
fcuProfileId :: Lens' FloodlightConfigurationsUpdate' Int64
fcuProfileId
  = lens _fcuProfileId (\ s a -> s{_fcuProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fcuKey :: Lens' FloodlightConfigurationsUpdate' (Maybe Text)
fcuKey = lens _fcuKey (\ s a -> s{_fcuKey = a})

-- | OAuth 2.0 token for the current user.
fcuOauthToken :: Lens' FloodlightConfigurationsUpdate' (Maybe Text)
fcuOauthToken
  = lens _fcuOauthToken
      (\ s a -> s{_fcuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fcuFields :: Lens' FloodlightConfigurationsUpdate' (Maybe Text)
fcuFields
  = lens _fcuFields (\ s a -> s{_fcuFields = a})

-- | Data format for the response.
fcuAlt :: Lens' FloodlightConfigurationsUpdate' Text
fcuAlt = lens _fcuAlt (\ s a -> s{_fcuAlt = a})

instance GoogleRequest
         FloodlightConfigurationsUpdate' where
        type Rs FloodlightConfigurationsUpdate' =
             FloodlightConfiguration
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          FloodlightConfigurationsUpdate{..}
          = go _fcuQuotaUser _fcuPrettyPrint _fcuUserIp
              _fcuProfileId
              _fcuKey
              _fcuOauthToken
              _fcuFields
              _fcuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightConfigurationsUpdateAPI)
                      r
                      u
