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
module Network.Google.Resource.DFAReporting.PlacementGroups.Get
    (
    -- * REST Resource
      PlacementGroupsGetResource

    -- * Creating a Request
    , placementGroupsGet'
    , PlacementGroupsGet'

    -- * Request Lenses
    , pggQuotaUser
    , pggPrettyPrint
    , pggUserIP
    , pggProfileId
    , pggKey
    , pggId
    , pggOAuthToken
    , pggFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementGroupsGet@ which the
-- 'PlacementGroupsGet'' request conforms to.
type PlacementGroupsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementGroups" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] PlacementGroup

-- | Gets one placement group by ID.
--
-- /See:/ 'placementGroupsGet'' smart constructor.
data PlacementGroupsGet' = PlacementGroupsGet'
    { _pggQuotaUser   :: !(Maybe Text)
    , _pggPrettyPrint :: !Bool
    , _pggUserIP      :: !(Maybe Text)
    , _pggProfileId   :: !Int64
    , _pggKey         :: !(Maybe Key)
    , _pggId          :: !Int64
    , _pggOAuthToken  :: !(Maybe OAuthToken)
    , _pggFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pggQuotaUser'
--
-- * 'pggPrettyPrint'
--
-- * 'pggUserIP'
--
-- * 'pggProfileId'
--
-- * 'pggKey'
--
-- * 'pggId'
--
-- * 'pggOAuthToken'
--
-- * 'pggFields'
placementGroupsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementGroupsGet'
placementGroupsGet' pPggProfileId_ pPggId_ =
    PlacementGroupsGet'
    { _pggQuotaUser = Nothing
    , _pggPrettyPrint = True
    , _pggUserIP = Nothing
    , _pggProfileId = pPggProfileId_
    , _pggKey = Nothing
    , _pggId = pPggId_
    , _pggOAuthToken = Nothing
    , _pggFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pggQuotaUser :: Lens' PlacementGroupsGet' (Maybe Text)
pggQuotaUser
  = lens _pggQuotaUser (\ s a -> s{_pggQuotaUser = a})

-- | Returns response with indentations and line breaks.
pggPrettyPrint :: Lens' PlacementGroupsGet' Bool
pggPrettyPrint
  = lens _pggPrettyPrint
      (\ s a -> s{_pggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pggUserIP :: Lens' PlacementGroupsGet' (Maybe Text)
pggUserIP
  = lens _pggUserIP (\ s a -> s{_pggUserIP = a})

-- | User profile ID associated with this request.
pggProfileId :: Lens' PlacementGroupsGet' Int64
pggProfileId
  = lens _pggProfileId (\ s a -> s{_pggProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pggKey :: Lens' PlacementGroupsGet' (Maybe Key)
pggKey = lens _pggKey (\ s a -> s{_pggKey = a})

-- | Placement group ID.
pggId :: Lens' PlacementGroupsGet' Int64
pggId = lens _pggId (\ s a -> s{_pggId = a})

-- | OAuth 2.0 token for the current user.
pggOAuthToken :: Lens' PlacementGroupsGet' (Maybe OAuthToken)
pggOAuthToken
  = lens _pggOAuthToken
      (\ s a -> s{_pggOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pggFields :: Lens' PlacementGroupsGet' (Maybe Text)
pggFields
  = lens _pggFields (\ s a -> s{_pggFields = a})

instance GoogleAuth PlacementGroupsGet' where
        authKey = pggKey . _Just
        authToken = pggOAuthToken . _Just

instance GoogleRequest PlacementGroupsGet' where
        type Rs PlacementGroupsGet' = PlacementGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementGroupsGet'{..}
          = go _pggProfileId _pggId _pggQuotaUser
              (Just _pggPrettyPrint)
              _pggUserIP
              _pggFields
              _pggKey
              _pggOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementGroupsGetResource)
                      r
                      u
