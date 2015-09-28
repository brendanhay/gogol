{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Placements.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing placement. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placements.patch@.
module Network.Google.API.DFAReporting.Placements.Patch
    (
    -- * REST Resource
      PlacementsPatchAPI

    -- * Creating a Request
    , placementsPatch'
    , PlacementsPatch'

    -- * Request Lenses
    , ppQuotaUser
    , ppPrettyPrint
    , ppUserIp
    , ppProfileId
    , ppKey
    , ppId
    , ppOauthToken
    , ppFields
    , ppAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.placements.patch which the
-- 'PlacementsPatch'' request conforms to.
type PlacementsPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] Placement

-- | Updates an existing placement. This method supports patch semantics.
--
-- /See:/ 'placementsPatch'' smart constructor.
data PlacementsPatch' = PlacementsPatch'
    { _ppQuotaUser   :: !(Maybe Text)
    , _ppPrettyPrint :: !Bool
    , _ppUserIp      :: !(Maybe Text)
    , _ppProfileId   :: !Int64
    , _ppKey         :: !(Maybe Text)
    , _ppId          :: !Int64
    , _ppOauthToken  :: !(Maybe Text)
    , _ppFields      :: !(Maybe Text)
    , _ppAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppQuotaUser'
--
-- * 'ppPrettyPrint'
--
-- * 'ppUserIp'
--
-- * 'ppProfileId'
--
-- * 'ppKey'
--
-- * 'ppId'
--
-- * 'ppOauthToken'
--
-- * 'ppFields'
--
-- * 'ppAlt'
placementsPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementsPatch'
placementsPatch' pPpProfileId_ pPpId_ =
    PlacementsPatch'
    { _ppQuotaUser = Nothing
    , _ppPrettyPrint = True
    , _ppUserIp = Nothing
    , _ppProfileId = pPpProfileId_
    , _ppKey = Nothing
    , _ppId = pPpId_
    , _ppOauthToken = Nothing
    , _ppFields = Nothing
    , _ppAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ppQuotaUser :: Lens' PlacementsPatch' (Maybe Text)
ppQuotaUser
  = lens _ppQuotaUser (\ s a -> s{_ppQuotaUser = a})

-- | Returns response with indentations and line breaks.
ppPrettyPrint :: Lens' PlacementsPatch' Bool
ppPrettyPrint
  = lens _ppPrettyPrint
      (\ s a -> s{_ppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ppUserIp :: Lens' PlacementsPatch' (Maybe Text)
ppUserIp = lens _ppUserIp (\ s a -> s{_ppUserIp = a})

-- | User profile ID associated with this request.
ppProfileId :: Lens' PlacementsPatch' Int64
ppProfileId
  = lens _ppProfileId (\ s a -> s{_ppProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ppKey :: Lens' PlacementsPatch' (Maybe Text)
ppKey = lens _ppKey (\ s a -> s{_ppKey = a})

-- | Placement ID.
ppId :: Lens' PlacementsPatch' Int64
ppId = lens _ppId (\ s a -> s{_ppId = a})

-- | OAuth 2.0 token for the current user.
ppOauthToken :: Lens' PlacementsPatch' (Maybe Text)
ppOauthToken
  = lens _ppOauthToken (\ s a -> s{_ppOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ppFields :: Lens' PlacementsPatch' (Maybe Text)
ppFields = lens _ppFields (\ s a -> s{_ppFields = a})

-- | Data format for the response.
ppAlt :: Lens' PlacementsPatch' Alt
ppAlt = lens _ppAlt (\ s a -> s{_ppAlt = a})

instance GoogleRequest PlacementsPatch' where
        type Rs PlacementsPatch' = Placement
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementsPatch'{..}
          = go _ppQuotaUser (Just _ppPrettyPrint) _ppUserIp
              _ppProfileId
              _ppKey
              (Just _ppId)
              _ppOauthToken
              _ppFields
              (Just _ppAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PlacementsPatchAPI)
                      r
                      u
