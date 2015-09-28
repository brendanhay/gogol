{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.FloodlightActivities.Generatetag
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Generates a tag for a floodlight activity.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivities.generatetag@.
module Network.Google.API.DFAReporting.FloodlightActivities.Generatetag
    (
    -- * REST Resource
      FloodlightActivitiesGeneratetagAPI

    -- * Creating a Request
    , floodlightActivitiesGeneratetag'
    , FloodlightActivitiesGeneratetag'

    -- * Request Lenses
    , fagQuotaUser
    , fagPrettyPrint
    , fagUserIp
    , fagFloodlightActivityId
    , fagProfileId
    , fagKey
    , fagOauthToken
    , fagFields
    , fagAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.floodlightActivities.generatetag which the
-- 'FloodlightActivitiesGeneratetag'' request conforms to.
type FloodlightActivitiesGeneratetagAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivities" :>
           "generatetag" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "floodlightActivityId" Int64 :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Post '[JSON]
                               FloodlightActivitiesGenerateTagResponse

-- | Generates a tag for a floodlight activity.
--
-- /See:/ 'floodlightActivitiesGeneratetag'' smart constructor.
data FloodlightActivitiesGeneratetag' = FloodlightActivitiesGeneratetag'
    { _fagQuotaUser            :: !(Maybe Text)
    , _fagPrettyPrint          :: !Bool
    , _fagUserIp               :: !(Maybe Text)
    , _fagFloodlightActivityId :: !(Maybe Int64)
    , _fagProfileId            :: !Int64
    , _fagKey                  :: !(Maybe Text)
    , _fagOauthToken           :: !(Maybe Text)
    , _fagFields               :: !(Maybe Text)
    , _fagAlt                  :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesGeneratetag'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fagQuotaUser'
--
-- * 'fagPrettyPrint'
--
-- * 'fagUserIp'
--
-- * 'fagFloodlightActivityId'
--
-- * 'fagProfileId'
--
-- * 'fagKey'
--
-- * 'fagOauthToken'
--
-- * 'fagFields'
--
-- * 'fagAlt'
floodlightActivitiesGeneratetag'
    :: Int64 -- ^ 'profileId'
    -> FloodlightActivitiesGeneratetag'
floodlightActivitiesGeneratetag' pFagProfileId_ =
    FloodlightActivitiesGeneratetag'
    { _fagQuotaUser = Nothing
    , _fagPrettyPrint = True
    , _fagUserIp = Nothing
    , _fagFloodlightActivityId = Nothing
    , _fagProfileId = pFagProfileId_
    , _fagKey = Nothing
    , _fagOauthToken = Nothing
    , _fagFields = Nothing
    , _fagAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fagQuotaUser :: Lens' FloodlightActivitiesGeneratetag' (Maybe Text)
fagQuotaUser
  = lens _fagQuotaUser (\ s a -> s{_fagQuotaUser = a})

-- | Returns response with indentations and line breaks.
fagPrettyPrint :: Lens' FloodlightActivitiesGeneratetag' Bool
fagPrettyPrint
  = lens _fagPrettyPrint
      (\ s a -> s{_fagPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fagUserIp :: Lens' FloodlightActivitiesGeneratetag' (Maybe Text)
fagUserIp
  = lens _fagUserIp (\ s a -> s{_fagUserIp = a})

-- | Floodlight activity ID for which we want to generate a tag.
fagFloodlightActivityId :: Lens' FloodlightActivitiesGeneratetag' (Maybe Int64)
fagFloodlightActivityId
  = lens _fagFloodlightActivityId
      (\ s a -> s{_fagFloodlightActivityId = a})

-- | User profile ID associated with this request.
fagProfileId :: Lens' FloodlightActivitiesGeneratetag' Int64
fagProfileId
  = lens _fagProfileId (\ s a -> s{_fagProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fagKey :: Lens' FloodlightActivitiesGeneratetag' (Maybe Text)
fagKey = lens _fagKey (\ s a -> s{_fagKey = a})

-- | OAuth 2.0 token for the current user.
fagOauthToken :: Lens' FloodlightActivitiesGeneratetag' (Maybe Text)
fagOauthToken
  = lens _fagOauthToken
      (\ s a -> s{_fagOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fagFields :: Lens' FloodlightActivitiesGeneratetag' (Maybe Text)
fagFields
  = lens _fagFields (\ s a -> s{_fagFields = a})

-- | Data format for the response.
fagAlt :: Lens' FloodlightActivitiesGeneratetag' Alt
fagAlt = lens _fagAlt (\ s a -> s{_fagAlt = a})

instance GoogleRequest
         FloodlightActivitiesGeneratetag' where
        type Rs FloodlightActivitiesGeneratetag' =
             FloodlightActivitiesGenerateTagResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          FloodlightActivitiesGeneratetag'{..}
          = go _fagQuotaUser (Just _fagPrettyPrint) _fagUserIp
              _fagFloodlightActivityId
              _fagProfileId
              _fagKey
              _fagOauthToken
              _fagFields
              (Just _fagAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivitiesGeneratetagAPI)
                      r
                      u
