{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Placements.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing placement.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementsUpdate@.
module DFAReporting.Placements.Update
    (
    -- * REST Resource
      PlacementsUpdateAPI

    -- * Creating a Request
    , placementsUpdate
    , PlacementsUpdate

    -- * Request Lenses
    , puQuotaUser
    , puPrettyPrint
    , puUserIp
    , puProfileId
    , puKey
    , puOauthToken
    , puFields
    , puAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementsUpdate@ which the
-- 'PlacementsUpdate' request conforms to.
type PlacementsUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :> Put '[JSON] Placement

-- | Updates an existing placement.
--
-- /See:/ 'placementsUpdate' smart constructor.
data PlacementsUpdate = PlacementsUpdate
    { _puQuotaUser   :: !(Maybe Text)
    , _puPrettyPrint :: !Bool
    , _puUserIp      :: !(Maybe Text)
    , _puProfileId   :: !Int64
    , _puKey         :: !(Maybe Text)
    , _puOauthToken  :: !(Maybe Text)
    , _puFields      :: !(Maybe Text)
    , _puAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puQuotaUser'
--
-- * 'puPrettyPrint'
--
-- * 'puUserIp'
--
-- * 'puProfileId'
--
-- * 'puKey'
--
-- * 'puOauthToken'
--
-- * 'puFields'
--
-- * 'puAlt'
placementsUpdate
    :: Int64 -- ^ 'profileId'
    -> PlacementsUpdate
placementsUpdate pPuProfileId_ =
    PlacementsUpdate
    { _puQuotaUser = Nothing
    , _puPrettyPrint = True
    , _puUserIp = Nothing
    , _puProfileId = pPuProfileId_
    , _puKey = Nothing
    , _puOauthToken = Nothing
    , _puFields = Nothing
    , _puAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puQuotaUser :: Lens' PlacementsUpdate' (Maybe Text)
puQuotaUser
  = lens _puQuotaUser (\ s a -> s{_puQuotaUser = a})

-- | Returns response with indentations and line breaks.
puPrettyPrint :: Lens' PlacementsUpdate' Bool
puPrettyPrint
  = lens _puPrettyPrint
      (\ s a -> s{_puPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puUserIp :: Lens' PlacementsUpdate' (Maybe Text)
puUserIp = lens _puUserIp (\ s a -> s{_puUserIp = a})

-- | User profile ID associated with this request.
puProfileId :: Lens' PlacementsUpdate' Int64
puProfileId
  = lens _puProfileId (\ s a -> s{_puProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puKey :: Lens' PlacementsUpdate' (Maybe Text)
puKey = lens _puKey (\ s a -> s{_puKey = a})

-- | OAuth 2.0 token for the current user.
puOauthToken :: Lens' PlacementsUpdate' (Maybe Text)
puOauthToken
  = lens _puOauthToken (\ s a -> s{_puOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
puFields :: Lens' PlacementsUpdate' (Maybe Text)
puFields = lens _puFields (\ s a -> s{_puFields = a})

-- | Data format for the response.
puAlt :: Lens' PlacementsUpdate' Text
puAlt = lens _puAlt (\ s a -> s{_puAlt = a})

instance GoogleRequest PlacementsUpdate' where
        type Rs PlacementsUpdate' = Placement
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementsUpdate{..}
          = go _puQuotaUser _puPrettyPrint _puUserIp
              _puProfileId
              _puKey
              _puOauthToken
              _puFields
              _puAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementsUpdateAPI)
                      r
                      u
