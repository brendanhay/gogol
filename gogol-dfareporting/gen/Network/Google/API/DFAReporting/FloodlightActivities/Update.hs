{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.FloodlightActivities.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing floodlight activity.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivities.update@.
module Network.Google.API.DFAReporting.FloodlightActivities.Update
    (
    -- * REST Resource
      FloodlightActivitiesUpdateAPI

    -- * Creating a Request
    , floodlightActivitiesUpdate'
    , FloodlightActivitiesUpdate'

    -- * Request Lenses
    , fauQuotaUser
    , fauPrettyPrint
    , fauUserIp
    , fauProfileId
    , fauKey
    , fauOauthToken
    , fauFields
    , fauAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.floodlightActivities.update which the
-- 'FloodlightActivitiesUpdate'' request conforms to.
type FloodlightActivitiesUpdateAPI =
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
                         Put '[JSON] FloodlightActivity

-- | Updates an existing floodlight activity.
--
-- /See:/ 'floodlightActivitiesUpdate'' smart constructor.
data FloodlightActivitiesUpdate' = FloodlightActivitiesUpdate'
    { _fauQuotaUser   :: !(Maybe Text)
    , _fauPrettyPrint :: !Bool
    , _fauUserIp      :: !(Maybe Text)
    , _fauProfileId   :: !Int64
    , _fauKey         :: !(Maybe Text)
    , _fauOauthToken  :: !(Maybe Text)
    , _fauFields      :: !(Maybe Text)
    , _fauAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fauQuotaUser'
--
-- * 'fauPrettyPrint'
--
-- * 'fauUserIp'
--
-- * 'fauProfileId'
--
-- * 'fauKey'
--
-- * 'fauOauthToken'
--
-- * 'fauFields'
--
-- * 'fauAlt'
floodlightActivitiesUpdate'
    :: Int64 -- ^ 'profileId'
    -> FloodlightActivitiesUpdate'
floodlightActivitiesUpdate' pFauProfileId_ =
    FloodlightActivitiesUpdate'
    { _fauQuotaUser = Nothing
    , _fauPrettyPrint = True
    , _fauUserIp = Nothing
    , _fauProfileId = pFauProfileId_
    , _fauKey = Nothing
    , _fauOauthToken = Nothing
    , _fauFields = Nothing
    , _fauAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fauQuotaUser :: Lens' FloodlightActivitiesUpdate' (Maybe Text)
fauQuotaUser
  = lens _fauQuotaUser (\ s a -> s{_fauQuotaUser = a})

-- | Returns response with indentations and line breaks.
fauPrettyPrint :: Lens' FloodlightActivitiesUpdate' Bool
fauPrettyPrint
  = lens _fauPrettyPrint
      (\ s a -> s{_fauPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fauUserIp :: Lens' FloodlightActivitiesUpdate' (Maybe Text)
fauUserIp
  = lens _fauUserIp (\ s a -> s{_fauUserIp = a})

-- | User profile ID associated with this request.
fauProfileId :: Lens' FloodlightActivitiesUpdate' Int64
fauProfileId
  = lens _fauProfileId (\ s a -> s{_fauProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fauKey :: Lens' FloodlightActivitiesUpdate' (Maybe Text)
fauKey = lens _fauKey (\ s a -> s{_fauKey = a})

-- | OAuth 2.0 token for the current user.
fauOauthToken :: Lens' FloodlightActivitiesUpdate' (Maybe Text)
fauOauthToken
  = lens _fauOauthToken
      (\ s a -> s{_fauOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fauFields :: Lens' FloodlightActivitiesUpdate' (Maybe Text)
fauFields
  = lens _fauFields (\ s a -> s{_fauFields = a})

-- | Data format for the response.
fauAlt :: Lens' FloodlightActivitiesUpdate' Alt
fauAlt = lens _fauAlt (\ s a -> s{_fauAlt = a})

instance GoogleRequest FloodlightActivitiesUpdate'
         where
        type Rs FloodlightActivitiesUpdate' =
             FloodlightActivity
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightActivitiesUpdate'{..}
          = go _fauQuotaUser (Just _fauPrettyPrint) _fauUserIp
              _fauProfileId
              _fauKey
              _fauOauthToken
              _fauFields
              (Just _fauAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivitiesUpdateAPI)
                      r
                      u
