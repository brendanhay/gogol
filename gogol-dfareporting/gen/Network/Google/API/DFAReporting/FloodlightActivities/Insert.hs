{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.FloodlightActivities.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new floodlight activity.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivities.insert@.
module Network.Google.API.DFAReporting.FloodlightActivities.Insert
    (
    -- * REST Resource
      FloodlightActivitiesInsertAPI

    -- * Creating a Request
    , floodlightActivitiesInsert'
    , FloodlightActivitiesInsert'

    -- * Request Lenses
    , faiQuotaUser
    , faiPrettyPrint
    , faiUserIp
    , faiProfileId
    , faiKey
    , faiOauthToken
    , faiFields
    , faiAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.floodlightActivities.insert which the
-- 'FloodlightActivitiesInsert'' request conforms to.
type FloodlightActivitiesInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivities" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Post '[JSON] FloodlightActivity

-- | Inserts a new floodlight activity.
--
-- /See:/ 'floodlightActivitiesInsert'' smart constructor.
data FloodlightActivitiesInsert' = FloodlightActivitiesInsert'
    { _faiQuotaUser   :: !(Maybe Text)
    , _faiPrettyPrint :: !Bool
    , _faiUserIp      :: !(Maybe Text)
    , _faiProfileId   :: !Int64
    , _faiKey         :: !(Maybe Text)
    , _faiOauthToken  :: !(Maybe Text)
    , _faiFields      :: !(Maybe Text)
    , _faiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faiQuotaUser'
--
-- * 'faiPrettyPrint'
--
-- * 'faiUserIp'
--
-- * 'faiProfileId'
--
-- * 'faiKey'
--
-- * 'faiOauthToken'
--
-- * 'faiFields'
--
-- * 'faiAlt'
floodlightActivitiesInsert'
    :: Int64 -- ^ 'profileId'
    -> FloodlightActivitiesInsert'
floodlightActivitiesInsert' pFaiProfileId_ =
    FloodlightActivitiesInsert'
    { _faiQuotaUser = Nothing
    , _faiPrettyPrint = True
    , _faiUserIp = Nothing
    , _faiProfileId = pFaiProfileId_
    , _faiKey = Nothing
    , _faiOauthToken = Nothing
    , _faiFields = Nothing
    , _faiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
faiQuotaUser :: Lens' FloodlightActivitiesInsert' (Maybe Text)
faiQuotaUser
  = lens _faiQuotaUser (\ s a -> s{_faiQuotaUser = a})

-- | Returns response with indentations and line breaks.
faiPrettyPrint :: Lens' FloodlightActivitiesInsert' Bool
faiPrettyPrint
  = lens _faiPrettyPrint
      (\ s a -> s{_faiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
faiUserIp :: Lens' FloodlightActivitiesInsert' (Maybe Text)
faiUserIp
  = lens _faiUserIp (\ s a -> s{_faiUserIp = a})

-- | User profile ID associated with this request.
faiProfileId :: Lens' FloodlightActivitiesInsert' Int64
faiProfileId
  = lens _faiProfileId (\ s a -> s{_faiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
faiKey :: Lens' FloodlightActivitiesInsert' (Maybe Text)
faiKey = lens _faiKey (\ s a -> s{_faiKey = a})

-- | OAuth 2.0 token for the current user.
faiOauthToken :: Lens' FloodlightActivitiesInsert' (Maybe Text)
faiOauthToken
  = lens _faiOauthToken
      (\ s a -> s{_faiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
faiFields :: Lens' FloodlightActivitiesInsert' (Maybe Text)
faiFields
  = lens _faiFields (\ s a -> s{_faiFields = a})

-- | Data format for the response.
faiAlt :: Lens' FloodlightActivitiesInsert' Alt
faiAlt = lens _faiAlt (\ s a -> s{_faiAlt = a})

instance GoogleRequest FloodlightActivitiesInsert'
         where
        type Rs FloodlightActivitiesInsert' =
             FloodlightActivity
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightActivitiesInsert'{..}
          = go _faiQuotaUser (Just _faiPrettyPrint) _faiUserIp
              _faiProfileId
              _faiKey
              _faiOauthToken
              _faiFields
              (Just _faiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivitiesInsertAPI)
                      r
                      u
