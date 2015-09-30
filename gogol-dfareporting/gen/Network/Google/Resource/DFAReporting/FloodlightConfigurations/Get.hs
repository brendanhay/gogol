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
    , fcgUserIp
    , fcgProfileId
    , fcgKey
    , fcgId
    , fcgOauthToken
    , fcgFields
    , fcgAlt
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
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] FloodlightConfiguration

-- | Gets one floodlight configuration by ID.
--
-- /See:/ 'floodlightConfigurationsGet'' smart constructor.
data FloodlightConfigurationsGet' = FloodlightConfigurationsGet'
    { _fcgQuotaUser   :: !(Maybe Text)
    , _fcgPrettyPrint :: !Bool
    , _fcgUserIp      :: !(Maybe Text)
    , _fcgProfileId   :: !Int64
    , _fcgKey         :: !(Maybe Text)
    , _fcgId          :: !Int64
    , _fcgOauthToken  :: !(Maybe Text)
    , _fcgFields      :: !(Maybe Text)
    , _fcgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightConfigurationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcgQuotaUser'
--
-- * 'fcgPrettyPrint'
--
-- * 'fcgUserIp'
--
-- * 'fcgProfileId'
--
-- * 'fcgKey'
--
-- * 'fcgId'
--
-- * 'fcgOauthToken'
--
-- * 'fcgFields'
--
-- * 'fcgAlt'
floodlightConfigurationsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> FloodlightConfigurationsGet'
floodlightConfigurationsGet' pFcgProfileId_ pFcgId_ =
    FloodlightConfigurationsGet'
    { _fcgQuotaUser = Nothing
    , _fcgPrettyPrint = True
    , _fcgUserIp = Nothing
    , _fcgProfileId = pFcgProfileId_
    , _fcgKey = Nothing
    , _fcgId = pFcgId_
    , _fcgOauthToken = Nothing
    , _fcgFields = Nothing
    , _fcgAlt = JSON
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
fcgUserIp :: Lens' FloodlightConfigurationsGet' (Maybe Text)
fcgUserIp
  = lens _fcgUserIp (\ s a -> s{_fcgUserIp = a})

-- | User profile ID associated with this request.
fcgProfileId :: Lens' FloodlightConfigurationsGet' Int64
fcgProfileId
  = lens _fcgProfileId (\ s a -> s{_fcgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fcgKey :: Lens' FloodlightConfigurationsGet' (Maybe Text)
fcgKey = lens _fcgKey (\ s a -> s{_fcgKey = a})

-- | Floodlight configuration ID.
fcgId :: Lens' FloodlightConfigurationsGet' Int64
fcgId = lens _fcgId (\ s a -> s{_fcgId = a})

-- | OAuth 2.0 token for the current user.
fcgOauthToken :: Lens' FloodlightConfigurationsGet' (Maybe Text)
fcgOauthToken
  = lens _fcgOauthToken
      (\ s a -> s{_fcgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fcgFields :: Lens' FloodlightConfigurationsGet' (Maybe Text)
fcgFields
  = lens _fcgFields (\ s a -> s{_fcgFields = a})

-- | Data format for the response.
fcgAlt :: Lens' FloodlightConfigurationsGet' Alt
fcgAlt = lens _fcgAlt (\ s a -> s{_fcgAlt = a})

instance GoogleRequest FloodlightConfigurationsGet'
         where
        type Rs FloodlightConfigurationsGet' =
             FloodlightConfiguration
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightConfigurationsGet'{..}
          = go _fcgQuotaUser (Just _fcgPrettyPrint) _fcgUserIp
              _fcgProfileId
              _fcgKey
              _fcgId
              _fcgOauthToken
              _fcgFields
              (Just _fcgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightConfigurationsGetResource)
                      r
                      u
