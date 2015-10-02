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
module Network.Google.Resource.DFAReporting.Placements.Patch
    (
    -- * REST Resource
      PlacementsPatchResource

    -- * Creating a Request
    , placementsPatch'
    , PlacementsPatch'

    -- * Request Lenses
    , ppQuotaUser
    , ppPrettyPrint
    , ppUserIP
    , ppProfileId
    , ppKey
    , ppId
    , ppOAuthToken
    , ppPlacement
    , ppFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementsPatch@ which the
-- 'PlacementsPatch'' request conforms to.
type PlacementsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Placement :> Patch '[JSON] Placement

-- | Updates an existing placement. This method supports patch semantics.
--
-- /See:/ 'placementsPatch'' smart constructor.
data PlacementsPatch' = PlacementsPatch'
    { _ppQuotaUser   :: !(Maybe Text)
    , _ppPrettyPrint :: !Bool
    , _ppUserIP      :: !(Maybe Text)
    , _ppProfileId   :: !Int64
    , _ppKey         :: !(Maybe Key)
    , _ppId          :: !Int64
    , _ppOAuthToken  :: !(Maybe OAuthToken)
    , _ppPlacement   :: !Placement
    , _ppFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppQuotaUser'
--
-- * 'ppPrettyPrint'
--
-- * 'ppUserIP'
--
-- * 'ppProfileId'
--
-- * 'ppKey'
--
-- * 'ppId'
--
-- * 'ppOAuthToken'
--
-- * 'ppPlacement'
--
-- * 'ppFields'
placementsPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> Placement -- ^ 'Placement'
    -> PlacementsPatch'
placementsPatch' pPpProfileId_ pPpId_ pPpPlacement_ =
    PlacementsPatch'
    { _ppQuotaUser = Nothing
    , _ppPrettyPrint = True
    , _ppUserIP = Nothing
    , _ppProfileId = pPpProfileId_
    , _ppKey = Nothing
    , _ppId = pPpId_
    , _ppOAuthToken = Nothing
    , _ppPlacement = pPpPlacement_
    , _ppFields = Nothing
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
ppUserIP :: Lens' PlacementsPatch' (Maybe Text)
ppUserIP = lens _ppUserIP (\ s a -> s{_ppUserIP = a})

-- | User profile ID associated with this request.
ppProfileId :: Lens' PlacementsPatch' Int64
ppProfileId
  = lens _ppProfileId (\ s a -> s{_ppProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ppKey :: Lens' PlacementsPatch' (Maybe Key)
ppKey = lens _ppKey (\ s a -> s{_ppKey = a})

-- | Placement ID.
ppId :: Lens' PlacementsPatch' Int64
ppId = lens _ppId (\ s a -> s{_ppId = a})

-- | OAuth 2.0 token for the current user.
ppOAuthToken :: Lens' PlacementsPatch' (Maybe OAuthToken)
ppOAuthToken
  = lens _ppOAuthToken (\ s a -> s{_ppOAuthToken = a})

-- | Multipart request metadata.
ppPlacement :: Lens' PlacementsPatch' Placement
ppPlacement
  = lens _ppPlacement (\ s a -> s{_ppPlacement = a})

-- | Selector specifying which fields to include in a partial response.
ppFields :: Lens' PlacementsPatch' (Maybe Text)
ppFields = lens _ppFields (\ s a -> s{_ppFields = a})

instance GoogleAuth PlacementsPatch' where
        authKey = ppKey . _Just
        authToken = ppOAuthToken . _Just

instance GoogleRequest PlacementsPatch' where
        type Rs PlacementsPatch' = Placement
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementsPatch'{..}
          = go _ppProfileId (Just _ppId) _ppQuotaUser
              (Just _ppPrettyPrint)
              _ppUserIP
              _ppFields
              _ppKey
              _ppOAuthToken
              (Just AltJSON)
              _ppPlacement
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementsPatchResource)
                      r
                      u
