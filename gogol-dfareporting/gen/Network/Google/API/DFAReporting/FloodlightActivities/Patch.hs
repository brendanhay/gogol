{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.FloodlightActivities.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing floodlight activity. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivities.patch@.
module Network.Google.API.DFAReporting.FloodlightActivities.Patch
    (
    -- * REST Resource
      FloodlightActivitiesPatchAPI

    -- * Creating a Request
    , floodlightActivitiesPatch'
    , FloodlightActivitiesPatch'

    -- * Request Lenses
    , fapQuotaUser
    , fapPrettyPrint
    , fapUserIp
    , fapProfileId
    , fapKey
    , fapId
    , fapOauthToken
    , fapFields
    , fapAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.floodlightActivities.patch which the
-- 'FloodlightActivitiesPatch'' request conforms to.
type FloodlightActivitiesPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivities" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Patch '[JSON] FloodlightActivity

-- | Updates an existing floodlight activity. This method supports patch
-- semantics.
--
-- /See:/ 'floodlightActivitiesPatch'' smart constructor.
data FloodlightActivitiesPatch' = FloodlightActivitiesPatch'
    { _fapQuotaUser   :: !(Maybe Text)
    , _fapPrettyPrint :: !Bool
    , _fapUserIp      :: !(Maybe Text)
    , _fapProfileId   :: !Int64
    , _fapKey         :: !(Maybe Text)
    , _fapId          :: !Int64
    , _fapOauthToken  :: !(Maybe Text)
    , _fapFields      :: !(Maybe Text)
    , _fapAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fapQuotaUser'
--
-- * 'fapPrettyPrint'
--
-- * 'fapUserIp'
--
-- * 'fapProfileId'
--
-- * 'fapKey'
--
-- * 'fapId'
--
-- * 'fapOauthToken'
--
-- * 'fapFields'
--
-- * 'fapAlt'
floodlightActivitiesPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> FloodlightActivitiesPatch'
floodlightActivitiesPatch' pFapProfileId_ pFapId_ =
    FloodlightActivitiesPatch'
    { _fapQuotaUser = Nothing
    , _fapPrettyPrint = True
    , _fapUserIp = Nothing
    , _fapProfileId = pFapProfileId_
    , _fapKey = Nothing
    , _fapId = pFapId_
    , _fapOauthToken = Nothing
    , _fapFields = Nothing
    , _fapAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fapQuotaUser :: Lens' FloodlightActivitiesPatch' (Maybe Text)
fapQuotaUser
  = lens _fapQuotaUser (\ s a -> s{_fapQuotaUser = a})

-- | Returns response with indentations and line breaks.
fapPrettyPrint :: Lens' FloodlightActivitiesPatch' Bool
fapPrettyPrint
  = lens _fapPrettyPrint
      (\ s a -> s{_fapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fapUserIp :: Lens' FloodlightActivitiesPatch' (Maybe Text)
fapUserIp
  = lens _fapUserIp (\ s a -> s{_fapUserIp = a})

-- | User profile ID associated with this request.
fapProfileId :: Lens' FloodlightActivitiesPatch' Int64
fapProfileId
  = lens _fapProfileId (\ s a -> s{_fapProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fapKey :: Lens' FloodlightActivitiesPatch' (Maybe Text)
fapKey = lens _fapKey (\ s a -> s{_fapKey = a})

-- | Floodlight activity ID.
fapId :: Lens' FloodlightActivitiesPatch' Int64
fapId = lens _fapId (\ s a -> s{_fapId = a})

-- | OAuth 2.0 token for the current user.
fapOauthToken :: Lens' FloodlightActivitiesPatch' (Maybe Text)
fapOauthToken
  = lens _fapOauthToken
      (\ s a -> s{_fapOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fapFields :: Lens' FloodlightActivitiesPatch' (Maybe Text)
fapFields
  = lens _fapFields (\ s a -> s{_fapFields = a})

-- | Data format for the response.
fapAlt :: Lens' FloodlightActivitiesPatch' Alt
fapAlt = lens _fapAlt (\ s a -> s{_fapAlt = a})

instance GoogleRequest FloodlightActivitiesPatch'
         where
        type Rs FloodlightActivitiesPatch' =
             FloodlightActivity
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightActivitiesPatch'{..}
          = go _fapQuotaUser (Just _fapPrettyPrint) _fapUserIp
              _fapProfileId
              _fapKey
              (Just _fapId)
              _fapOauthToken
              _fapFields
              (Just _fapAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivitiesPatchAPI)
                      r
                      u
