{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.PlacementGroups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one placement group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementGroupsGet@.
module DFAReporting.PlacementGroups.Get
    (
    -- * REST Resource
      PlacementGroupsGetAPI

    -- * Creating a Request
    , placementGroupsGet
    , PlacementGroupsGet

    -- * Request Lenses
    , pgggQuotaUser
    , pgggPrettyPrint
    , pgggUserIp
    , pgggProfileId
    , pgggKey
    , pgggId
    , pgggOauthToken
    , pgggFields
    , pgggAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementGroupsGet@ which the
-- 'PlacementGroupsGet' request conforms to.
type PlacementGroupsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementGroups" :>
           Capture "id" Int64 :> Get '[JSON] PlacementGroup

-- | Gets one placement group by ID.
--
-- /See:/ 'placementGroupsGet' smart constructor.
data PlacementGroupsGet = PlacementGroupsGet
    { _pgggQuotaUser   :: !(Maybe Text)
    , _pgggPrettyPrint :: !Bool
    , _pgggUserIp      :: !(Maybe Text)
    , _pgggProfileId   :: !Int64
    , _pgggKey         :: !(Maybe Text)
    , _pgggId          :: !Int64
    , _pgggOauthToken  :: !(Maybe Text)
    , _pgggFields      :: !(Maybe Text)
    , _pgggAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgggQuotaUser'
--
-- * 'pgggPrettyPrint'
--
-- * 'pgggUserIp'
--
-- * 'pgggProfileId'
--
-- * 'pgggKey'
--
-- * 'pgggId'
--
-- * 'pgggOauthToken'
--
-- * 'pgggFields'
--
-- * 'pgggAlt'
placementGroupsGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementGroupsGet
placementGroupsGet pPgggProfileId_ pPgggId_ =
    PlacementGroupsGet
    { _pgggQuotaUser = Nothing
    , _pgggPrettyPrint = True
    , _pgggUserIp = Nothing
    , _pgggProfileId = pPgggProfileId_
    , _pgggKey = Nothing
    , _pgggId = pPgggId_
    , _pgggOauthToken = Nothing
    , _pgggFields = Nothing
    , _pgggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgggQuotaUser :: Lens' PlacementGroupsGet' (Maybe Text)
pgggQuotaUser
  = lens _pgggQuotaUser
      (\ s a -> s{_pgggQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgggPrettyPrint :: Lens' PlacementGroupsGet' Bool
pgggPrettyPrint
  = lens _pgggPrettyPrint
      (\ s a -> s{_pgggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgggUserIp :: Lens' PlacementGroupsGet' (Maybe Text)
pgggUserIp
  = lens _pgggUserIp (\ s a -> s{_pgggUserIp = a})

-- | User profile ID associated with this request.
pgggProfileId :: Lens' PlacementGroupsGet' Int64
pgggProfileId
  = lens _pgggProfileId
      (\ s a -> s{_pgggProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgggKey :: Lens' PlacementGroupsGet' (Maybe Text)
pgggKey = lens _pgggKey (\ s a -> s{_pgggKey = a})

-- | Placement group ID.
pgggId :: Lens' PlacementGroupsGet' Int64
pgggId = lens _pgggId (\ s a -> s{_pgggId = a})

-- | OAuth 2.0 token for the current user.
pgggOauthToken :: Lens' PlacementGroupsGet' (Maybe Text)
pgggOauthToken
  = lens _pgggOauthToken
      (\ s a -> s{_pgggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgggFields :: Lens' PlacementGroupsGet' (Maybe Text)
pgggFields
  = lens _pgggFields (\ s a -> s{_pgggFields = a})

-- | Data format for the response.
pgggAlt :: Lens' PlacementGroupsGet' Text
pgggAlt = lens _pgggAlt (\ s a -> s{_pgggAlt = a})

instance GoogleRequest PlacementGroupsGet' where
        type Rs PlacementGroupsGet' = PlacementGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementGroupsGet{..}
          = go _pgggQuotaUser _pgggPrettyPrint _pgggUserIp
              _pgggProfileId
              _pgggKey
              _pgggId
              _pgggOauthToken
              _pgggFields
              _pgggAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementGroupsGetAPI)
                      r
                      u
