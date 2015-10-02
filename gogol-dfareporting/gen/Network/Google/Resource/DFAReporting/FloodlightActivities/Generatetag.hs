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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Generatetag
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Generates a tag for a floodlight activity.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivitiesGeneratetag@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Generatetag
    (
    -- * REST Resource
      FloodlightActivitiesGeneratetagResource

    -- * Creating a Request
    , floodlightActivitiesGeneratetag'
    , FloodlightActivitiesGeneratetag'

    -- * Request Lenses
    , fagQuotaUser
    , fagPrettyPrint
    , fagUserIP
    , fagFloodlightActivityId
    , fagProfileId
    , fagKey
    , fagOAuthToken
    , fagFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivitiesGeneratetag@ which the
-- 'FloodlightActivitiesGeneratetag'' request conforms to.
type FloodlightActivitiesGeneratetagResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivities" :>
           "generatetag" :>
             QueryParam "floodlightActivityId" Int64 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Post '[JSON]
                               FloodlightActivitiesGenerateTagResponse

-- | Generates a tag for a floodlight activity.
--
-- /See:/ 'floodlightActivitiesGeneratetag'' smart constructor.
data FloodlightActivitiesGeneratetag' = FloodlightActivitiesGeneratetag'
    { _fagQuotaUser            :: !(Maybe Text)
    , _fagPrettyPrint          :: !Bool
    , _fagUserIP               :: !(Maybe Text)
    , _fagFloodlightActivityId :: !(Maybe Int64)
    , _fagProfileId            :: !Int64
    , _fagKey                  :: !(Maybe Key)
    , _fagOAuthToken           :: !(Maybe OAuthToken)
    , _fagFields               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesGeneratetag'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fagQuotaUser'
--
-- * 'fagPrettyPrint'
--
-- * 'fagUserIP'
--
-- * 'fagFloodlightActivityId'
--
-- * 'fagProfileId'
--
-- * 'fagKey'
--
-- * 'fagOAuthToken'
--
-- * 'fagFields'
floodlightActivitiesGeneratetag'
    :: Int64 -- ^ 'profileId'
    -> FloodlightActivitiesGeneratetag'
floodlightActivitiesGeneratetag' pFagProfileId_ =
    FloodlightActivitiesGeneratetag'
    { _fagQuotaUser = Nothing
    , _fagPrettyPrint = True
    , _fagUserIP = Nothing
    , _fagFloodlightActivityId = Nothing
    , _fagProfileId = pFagProfileId_
    , _fagKey = Nothing
    , _fagOAuthToken = Nothing
    , _fagFields = Nothing
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
fagUserIP :: Lens' FloodlightActivitiesGeneratetag' (Maybe Text)
fagUserIP
  = lens _fagUserIP (\ s a -> s{_fagUserIP = a})

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
fagKey :: Lens' FloodlightActivitiesGeneratetag' (Maybe Key)
fagKey = lens _fagKey (\ s a -> s{_fagKey = a})

-- | OAuth 2.0 token for the current user.
fagOAuthToken :: Lens' FloodlightActivitiesGeneratetag' (Maybe OAuthToken)
fagOAuthToken
  = lens _fagOAuthToken
      (\ s a -> s{_fagOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fagFields :: Lens' FloodlightActivitiesGeneratetag' (Maybe Text)
fagFields
  = lens _fagFields (\ s a -> s{_fagFields = a})

instance GoogleAuth FloodlightActivitiesGeneratetag'
         where
        authKey = fagKey . _Just
        authToken = fagOAuthToken . _Just

instance GoogleRequest
         FloodlightActivitiesGeneratetag' where
        type Rs FloodlightActivitiesGeneratetag' =
             FloodlightActivitiesGenerateTagResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          FloodlightActivitiesGeneratetag'{..}
          = go _fagFloodlightActivityId _fagProfileId
              _fagQuotaUser
              (Just _fagPrettyPrint)
              _fagUserIP
              _fagFields
              _fagKey
              _fagOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy FloodlightActivitiesGeneratetagResource)
                      r
                      u
