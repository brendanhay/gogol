{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.PlacementGroups.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing placement group. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementGroupsPatch@.
module DFAReporting.PlacementGroups.Patch
    (
    -- * REST Resource
      PlacementGroupsPatchAPI

    -- * Creating a Request
    , placementGroupsPatch
    , PlacementGroupsPatch

    -- * Request Lenses
    , pgpQuotaUser
    , pgpPrettyPrint
    , pgpUserIp
    , pgpProfileId
    , pgpKey
    , pgpId
    , pgpOauthToken
    , pgpFields
    , pgpAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementGroupsPatch@ which the
-- 'PlacementGroupsPatch' request conforms to.
type PlacementGroupsPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementGroups" :>
           QueryParam "id" Int64 :> Patch '[JSON] PlacementGroup

-- | Updates an existing placement group. This method supports patch
-- semantics.
--
-- /See:/ 'placementGroupsPatch' smart constructor.
data PlacementGroupsPatch = PlacementGroupsPatch
    { _pgpQuotaUser   :: !(Maybe Text)
    , _pgpPrettyPrint :: !Bool
    , _pgpUserIp      :: !(Maybe Text)
    , _pgpProfileId   :: !Int64
    , _pgpKey         :: !(Maybe Text)
    , _pgpId          :: !Int64
    , _pgpOauthToken  :: !(Maybe Text)
    , _pgpFields      :: !(Maybe Text)
    , _pgpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementGroupsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgpQuotaUser'
--
-- * 'pgpPrettyPrint'
--
-- * 'pgpUserIp'
--
-- * 'pgpProfileId'
--
-- * 'pgpKey'
--
-- * 'pgpId'
--
-- * 'pgpOauthToken'
--
-- * 'pgpFields'
--
-- * 'pgpAlt'
placementGroupsPatch
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementGroupsPatch
placementGroupsPatch pPgpProfileId_ pPgpId_ =
    PlacementGroupsPatch
    { _pgpQuotaUser = Nothing
    , _pgpPrettyPrint = True
    , _pgpUserIp = Nothing
    , _pgpProfileId = pPgpProfileId_
    , _pgpKey = Nothing
    , _pgpId = pPgpId_
    , _pgpOauthToken = Nothing
    , _pgpFields = Nothing
    , _pgpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgpQuotaUser :: Lens' PlacementGroupsPatch' (Maybe Text)
pgpQuotaUser
  = lens _pgpQuotaUser (\ s a -> s{_pgpQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgpPrettyPrint :: Lens' PlacementGroupsPatch' Bool
pgpPrettyPrint
  = lens _pgpPrettyPrint
      (\ s a -> s{_pgpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgpUserIp :: Lens' PlacementGroupsPatch' (Maybe Text)
pgpUserIp
  = lens _pgpUserIp (\ s a -> s{_pgpUserIp = a})

-- | User profile ID associated with this request.
pgpProfileId :: Lens' PlacementGroupsPatch' Int64
pgpProfileId
  = lens _pgpProfileId (\ s a -> s{_pgpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgpKey :: Lens' PlacementGroupsPatch' (Maybe Text)
pgpKey = lens _pgpKey (\ s a -> s{_pgpKey = a})

-- | Placement group ID.
pgpId :: Lens' PlacementGroupsPatch' Int64
pgpId = lens _pgpId (\ s a -> s{_pgpId = a})

-- | OAuth 2.0 token for the current user.
pgpOauthToken :: Lens' PlacementGroupsPatch' (Maybe Text)
pgpOauthToken
  = lens _pgpOauthToken
      (\ s a -> s{_pgpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgpFields :: Lens' PlacementGroupsPatch' (Maybe Text)
pgpFields
  = lens _pgpFields (\ s a -> s{_pgpFields = a})

-- | Data format for the response.
pgpAlt :: Lens' PlacementGroupsPatch' Text
pgpAlt = lens _pgpAlt (\ s a -> s{_pgpAlt = a})

instance GoogleRequest PlacementGroupsPatch' where
        type Rs PlacementGroupsPatch' = PlacementGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementGroupsPatch{..}
          = go _pgpQuotaUser _pgpPrettyPrint _pgpUserIp
              _pgpProfileId
              _pgpKey
              (Just _pgpId)
              _pgpOauthToken
              _pgpFields
              _pgpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementGroupsPatchAPI)
                      r
                      u
