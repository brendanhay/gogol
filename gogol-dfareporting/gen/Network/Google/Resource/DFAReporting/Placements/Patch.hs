{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Placements.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing placement. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementsPatch@.
module DFAReporting.Placements.Patch
    (
    -- * REST Resource
      PlacementsPatchAPI

    -- * Creating a Request
    , placementsPatch
    , PlacementsPatch

    -- * Request Lenses
    , plaQuotaUser
    , plaPrettyPrint
    , plaUserIp
    , plaProfileId
    , plaKey
    , plaId
    , plaOauthToken
    , plaFields
    , plaAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementsPatch@ which the
-- 'PlacementsPatch' request conforms to.
type PlacementsPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           QueryParam "id" Int64 :> Patch '[JSON] Placement

-- | Updates an existing placement. This method supports patch semantics.
--
-- /See:/ 'placementsPatch' smart constructor.
data PlacementsPatch = PlacementsPatch
    { _plaQuotaUser   :: !(Maybe Text)
    , _plaPrettyPrint :: !Bool
    , _plaUserIp      :: !(Maybe Text)
    , _plaProfileId   :: !Int64
    , _plaKey         :: !(Maybe Text)
    , _plaId          :: !Int64
    , _plaOauthToken  :: !(Maybe Text)
    , _plaFields      :: !(Maybe Text)
    , _plaAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaQuotaUser'
--
-- * 'plaPrettyPrint'
--
-- * 'plaUserIp'
--
-- * 'plaProfileId'
--
-- * 'plaKey'
--
-- * 'plaId'
--
-- * 'plaOauthToken'
--
-- * 'plaFields'
--
-- * 'plaAlt'
placementsPatch
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementsPatch
placementsPatch pPlaProfileId_ pPlaId_ =
    PlacementsPatch
    { _plaQuotaUser = Nothing
    , _plaPrettyPrint = True
    , _plaUserIp = Nothing
    , _plaProfileId = pPlaProfileId_
    , _plaKey = Nothing
    , _plaId = pPlaId_
    , _plaOauthToken = Nothing
    , _plaFields = Nothing
    , _plaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plaQuotaUser :: Lens' PlacementsPatch' (Maybe Text)
plaQuotaUser
  = lens _plaQuotaUser (\ s a -> s{_plaQuotaUser = a})

-- | Returns response with indentations and line breaks.
plaPrettyPrint :: Lens' PlacementsPatch' Bool
plaPrettyPrint
  = lens _plaPrettyPrint
      (\ s a -> s{_plaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plaUserIp :: Lens' PlacementsPatch' (Maybe Text)
plaUserIp
  = lens _plaUserIp (\ s a -> s{_plaUserIp = a})

-- | User profile ID associated with this request.
plaProfileId :: Lens' PlacementsPatch' Int64
plaProfileId
  = lens _plaProfileId (\ s a -> s{_plaProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plaKey :: Lens' PlacementsPatch' (Maybe Text)
plaKey = lens _plaKey (\ s a -> s{_plaKey = a})

-- | Placement ID.
plaId :: Lens' PlacementsPatch' Int64
plaId = lens _plaId (\ s a -> s{_plaId = a})

-- | OAuth 2.0 token for the current user.
plaOauthToken :: Lens' PlacementsPatch' (Maybe Text)
plaOauthToken
  = lens _plaOauthToken
      (\ s a -> s{_plaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
plaFields :: Lens' PlacementsPatch' (Maybe Text)
plaFields
  = lens _plaFields (\ s a -> s{_plaFields = a})

-- | Data format for the response.
plaAlt :: Lens' PlacementsPatch' Text
plaAlt = lens _plaAlt (\ s a -> s{_plaAlt = a})

instance GoogleRequest PlacementsPatch' where
        type Rs PlacementsPatch' = Placement
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementsPatch{..}
          = go _plaQuotaUser _plaPrettyPrint _plaUserIp
              _plaProfileId
              _plaKey
              (Just _plaId)
              _plaOauthToken
              _plaFields
              _plaAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PlacementsPatchAPI)
                      r
                      u
