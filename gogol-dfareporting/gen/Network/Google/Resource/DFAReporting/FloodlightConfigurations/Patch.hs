{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.FloodlightConfigurations.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing floodlight configuration. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightConfigurationsPatch@.
module DFAReporting.FloodlightConfigurations.Patch
    (
    -- * REST Resource
      FloodlightConfigurationsPatchAPI

    -- * Creating a Request
    , floodlightConfigurationsPatch
    , FloodlightConfigurationsPatch

    -- * Request Lenses
    , fcpQuotaUser
    , fcpPrettyPrint
    , fcpUserIp
    , fcpProfileId
    , fcpKey
    , fcpId
    , fcpOauthToken
    , fcpFields
    , fcpAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightConfigurationsPatch@ which the
-- 'FloodlightConfigurationsPatch' request conforms to.
type FloodlightConfigurationsPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightConfigurations" :>
           QueryParam "id" Int64 :>
             Patch '[JSON] FloodlightConfiguration

-- | Updates an existing floodlight configuration. This method supports patch
-- semantics.
--
-- /See:/ 'floodlightConfigurationsPatch' smart constructor.
data FloodlightConfigurationsPatch = FloodlightConfigurationsPatch
    { _fcpQuotaUser   :: !(Maybe Text)
    , _fcpPrettyPrint :: !Bool
    , _fcpUserIp      :: !(Maybe Text)
    , _fcpProfileId   :: !Int64
    , _fcpKey         :: !(Maybe Text)
    , _fcpId          :: !Int64
    , _fcpOauthToken  :: !(Maybe Text)
    , _fcpFields      :: !(Maybe Text)
    , _fcpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightConfigurationsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcpQuotaUser'
--
-- * 'fcpPrettyPrint'
--
-- * 'fcpUserIp'
--
-- * 'fcpProfileId'
--
-- * 'fcpKey'
--
-- * 'fcpId'
--
-- * 'fcpOauthToken'
--
-- * 'fcpFields'
--
-- * 'fcpAlt'
floodlightConfigurationsPatch
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> FloodlightConfigurationsPatch
floodlightConfigurationsPatch pFcpProfileId_ pFcpId_ =
    FloodlightConfigurationsPatch
    { _fcpQuotaUser = Nothing
    , _fcpPrettyPrint = True
    , _fcpUserIp = Nothing
    , _fcpProfileId = pFcpProfileId_
    , _fcpKey = Nothing
    , _fcpId = pFcpId_
    , _fcpOauthToken = Nothing
    , _fcpFields = Nothing
    , _fcpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fcpQuotaUser :: Lens' FloodlightConfigurationsPatch' (Maybe Text)
fcpQuotaUser
  = lens _fcpQuotaUser (\ s a -> s{_fcpQuotaUser = a})

-- | Returns response with indentations and line breaks.
fcpPrettyPrint :: Lens' FloodlightConfigurationsPatch' Bool
fcpPrettyPrint
  = lens _fcpPrettyPrint
      (\ s a -> s{_fcpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fcpUserIp :: Lens' FloodlightConfigurationsPatch' (Maybe Text)
fcpUserIp
  = lens _fcpUserIp (\ s a -> s{_fcpUserIp = a})

-- | User profile ID associated with this request.
fcpProfileId :: Lens' FloodlightConfigurationsPatch' Int64
fcpProfileId
  = lens _fcpProfileId (\ s a -> s{_fcpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fcpKey :: Lens' FloodlightConfigurationsPatch' (Maybe Text)
fcpKey = lens _fcpKey (\ s a -> s{_fcpKey = a})

-- | Floodlight configuration ID.
fcpId :: Lens' FloodlightConfigurationsPatch' Int64
fcpId = lens _fcpId (\ s a -> s{_fcpId = a})

-- | OAuth 2.0 token for the current user.
fcpOauthToken :: Lens' FloodlightConfigurationsPatch' (Maybe Text)
fcpOauthToken
  = lens _fcpOauthToken
      (\ s a -> s{_fcpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fcpFields :: Lens' FloodlightConfigurationsPatch' (Maybe Text)
fcpFields
  = lens _fcpFields (\ s a -> s{_fcpFields = a})

-- | Data format for the response.
fcpAlt :: Lens' FloodlightConfigurationsPatch' Text
fcpAlt = lens _fcpAlt (\ s a -> s{_fcpAlt = a})

instance GoogleRequest FloodlightConfigurationsPatch'
         where
        type Rs FloodlightConfigurationsPatch' =
             FloodlightConfiguration
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          FloodlightConfigurationsPatch{..}
          = go _fcpQuotaUser _fcpPrettyPrint _fcpUserIp
              _fcpProfileId
              _fcpKey
              (Just _fcpId)
              _fcpOauthToken
              _fcpFields
              _fcpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightConfigurationsPatchAPI)
                      r
                      u
