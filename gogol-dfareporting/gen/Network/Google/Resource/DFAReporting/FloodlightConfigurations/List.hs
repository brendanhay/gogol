{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.FloodlightConfigurations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of floodlight configurations, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightConfigurationsList@.
module DFAReporting.FloodlightConfigurations.List
    (
    -- * REST Resource
      FloodlightConfigurationsListAPI

    -- * Creating a Request
    , floodlightConfigurationsList
    , FloodlightConfigurationsList

    -- * Request Lenses
    , fclQuotaUser
    , fclPrettyPrint
    , fclUserIp
    , fclIds
    , fclProfileId
    , fclKey
    , fclOauthToken
    , fclFields
    , fclAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightConfigurationsList@ which the
-- 'FloodlightConfigurationsList' request conforms to.
type FloodlightConfigurationsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightConfigurations" :>
           QueryParams "ids" Int64 :>
             Get '[JSON] FloodlightConfigurationsListResponse

-- | Retrieves a list of floodlight configurations, possibly filtered.
--
-- /See:/ 'floodlightConfigurationsList' smart constructor.
data FloodlightConfigurationsList = FloodlightConfigurationsList
    { _fclQuotaUser   :: !(Maybe Text)
    , _fclPrettyPrint :: !Bool
    , _fclUserIp      :: !(Maybe Text)
    , _fclIds         :: !(Maybe Int64)
    , _fclProfileId   :: !Int64
    , _fclKey         :: !(Maybe Text)
    , _fclOauthToken  :: !(Maybe Text)
    , _fclFields      :: !(Maybe Text)
    , _fclAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightConfigurationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fclQuotaUser'
--
-- * 'fclPrettyPrint'
--
-- * 'fclUserIp'
--
-- * 'fclIds'
--
-- * 'fclProfileId'
--
-- * 'fclKey'
--
-- * 'fclOauthToken'
--
-- * 'fclFields'
--
-- * 'fclAlt'
floodlightConfigurationsList
    :: Int64 -- ^ 'profileId'
    -> FloodlightConfigurationsList
floodlightConfigurationsList pFclProfileId_ =
    FloodlightConfigurationsList
    { _fclQuotaUser = Nothing
    , _fclPrettyPrint = True
    , _fclUserIp = Nothing
    , _fclIds = Nothing
    , _fclProfileId = pFclProfileId_
    , _fclKey = Nothing
    , _fclOauthToken = Nothing
    , _fclFields = Nothing
    , _fclAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fclQuotaUser :: Lens' FloodlightConfigurationsList' (Maybe Text)
fclQuotaUser
  = lens _fclQuotaUser (\ s a -> s{_fclQuotaUser = a})

-- | Returns response with indentations and line breaks.
fclPrettyPrint :: Lens' FloodlightConfigurationsList' Bool
fclPrettyPrint
  = lens _fclPrettyPrint
      (\ s a -> s{_fclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fclUserIp :: Lens' FloodlightConfigurationsList' (Maybe Text)
fclUserIp
  = lens _fclUserIp (\ s a -> s{_fclUserIp = a})

-- | Set of IDs of floodlight configurations to retrieve. Required field;
-- otherwise an empty list will be returned.
fclIds :: Lens' FloodlightConfigurationsList' (Maybe Int64)
fclIds = lens _fclIds (\ s a -> s{_fclIds = a})

-- | User profile ID associated with this request.
fclProfileId :: Lens' FloodlightConfigurationsList' Int64
fclProfileId
  = lens _fclProfileId (\ s a -> s{_fclProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fclKey :: Lens' FloodlightConfigurationsList' (Maybe Text)
fclKey = lens _fclKey (\ s a -> s{_fclKey = a})

-- | OAuth 2.0 token for the current user.
fclOauthToken :: Lens' FloodlightConfigurationsList' (Maybe Text)
fclOauthToken
  = lens _fclOauthToken
      (\ s a -> s{_fclOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fclFields :: Lens' FloodlightConfigurationsList' (Maybe Text)
fclFields
  = lens _fclFields (\ s a -> s{_fclFields = a})

-- | Data format for the response.
fclAlt :: Lens' FloodlightConfigurationsList' Text
fclAlt = lens _fclAlt (\ s a -> s{_fclAlt = a})

instance GoogleRequest FloodlightConfigurationsList'
         where
        type Rs FloodlightConfigurationsList' =
             FloodlightConfigurationsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightConfigurationsList{..}
          = go _fclQuotaUser _fclPrettyPrint _fclUserIp _fclIds
              _fclProfileId
              _fclKey
              _fclOauthToken
              _fclFields
              _fclAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightConfigurationsListAPI)
                      r
                      u
