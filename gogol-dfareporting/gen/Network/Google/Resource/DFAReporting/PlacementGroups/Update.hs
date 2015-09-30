{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.PlacementGroups.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing placement group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementGroupsUpdate@.
module DFAReporting.PlacementGroups.Update
    (
    -- * REST Resource
      PlacementGroupsUpdateAPI

    -- * Creating a Request
    , placementGroupsUpdate
    , PlacementGroupsUpdate

    -- * Request Lenses
    , pguQuotaUser
    , pguPrettyPrint
    , pguUserIp
    , pguProfileId
    , pguKey
    , pguOauthToken
    , pguFields
    , pguAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementGroupsUpdate@ which the
-- 'PlacementGroupsUpdate' request conforms to.
type PlacementGroupsUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementGroups" :> Put '[JSON] PlacementGroup

-- | Updates an existing placement group.
--
-- /See:/ 'placementGroupsUpdate' smart constructor.
data PlacementGroupsUpdate = PlacementGroupsUpdate
    { _pguQuotaUser   :: !(Maybe Text)
    , _pguPrettyPrint :: !Bool
    , _pguUserIp      :: !(Maybe Text)
    , _pguProfileId   :: !Int64
    , _pguKey         :: !(Maybe Text)
    , _pguOauthToken  :: !(Maybe Text)
    , _pguFields      :: !(Maybe Text)
    , _pguAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementGroupsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pguQuotaUser'
--
-- * 'pguPrettyPrint'
--
-- * 'pguUserIp'
--
-- * 'pguProfileId'
--
-- * 'pguKey'
--
-- * 'pguOauthToken'
--
-- * 'pguFields'
--
-- * 'pguAlt'
placementGroupsUpdate
    :: Int64 -- ^ 'profileId'
    -> PlacementGroupsUpdate
placementGroupsUpdate pPguProfileId_ =
    PlacementGroupsUpdate
    { _pguQuotaUser = Nothing
    , _pguPrettyPrint = True
    , _pguUserIp = Nothing
    , _pguProfileId = pPguProfileId_
    , _pguKey = Nothing
    , _pguOauthToken = Nothing
    , _pguFields = Nothing
    , _pguAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pguQuotaUser :: Lens' PlacementGroupsUpdate' (Maybe Text)
pguQuotaUser
  = lens _pguQuotaUser (\ s a -> s{_pguQuotaUser = a})

-- | Returns response with indentations and line breaks.
pguPrettyPrint :: Lens' PlacementGroupsUpdate' Bool
pguPrettyPrint
  = lens _pguPrettyPrint
      (\ s a -> s{_pguPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pguUserIp :: Lens' PlacementGroupsUpdate' (Maybe Text)
pguUserIp
  = lens _pguUserIp (\ s a -> s{_pguUserIp = a})

-- | User profile ID associated with this request.
pguProfileId :: Lens' PlacementGroupsUpdate' Int64
pguProfileId
  = lens _pguProfileId (\ s a -> s{_pguProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pguKey :: Lens' PlacementGroupsUpdate' (Maybe Text)
pguKey = lens _pguKey (\ s a -> s{_pguKey = a})

-- | OAuth 2.0 token for the current user.
pguOauthToken :: Lens' PlacementGroupsUpdate' (Maybe Text)
pguOauthToken
  = lens _pguOauthToken
      (\ s a -> s{_pguOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pguFields :: Lens' PlacementGroupsUpdate' (Maybe Text)
pguFields
  = lens _pguFields (\ s a -> s{_pguFields = a})

-- | Data format for the response.
pguAlt :: Lens' PlacementGroupsUpdate' Text
pguAlt = lens _pguAlt (\ s a -> s{_pguAlt = a})

instance GoogleRequest PlacementGroupsUpdate' where
        type Rs PlacementGroupsUpdate' = PlacementGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementGroupsUpdate{..}
          = go _pguQuotaUser _pguPrettyPrint _pguUserIp
              _pguProfileId
              _pguKey
              _pguOauthToken
              _pguFields
              _pguAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementGroupsUpdateAPI)
                      r
                      u
