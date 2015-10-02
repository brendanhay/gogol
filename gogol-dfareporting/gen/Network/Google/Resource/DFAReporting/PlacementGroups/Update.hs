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
module Network.Google.Resource.DFAReporting.PlacementGroups.Update
    (
    -- * REST Resource
      PlacementGroupsUpdateResource

    -- * Creating a Request
    , placementGroupsUpdate'
    , PlacementGroupsUpdate'

    -- * Request Lenses
    , pguQuotaUser
    , pguPrettyPrint
    , pguUserIP
    , pguProfileId
    , pguKey
    , pguOAuthToken
    , pguPlacementGroup
    , pguFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementGroupsUpdate@ which the
-- 'PlacementGroupsUpdate'' request conforms to.
type PlacementGroupsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] PlacementGroup :>
                           Put '[JSON] PlacementGroup

-- | Updates an existing placement group.
--
-- /See:/ 'placementGroupsUpdate'' smart constructor.
data PlacementGroupsUpdate' = PlacementGroupsUpdate'
    { _pguQuotaUser      :: !(Maybe Text)
    , _pguPrettyPrint    :: !Bool
    , _pguUserIP         :: !(Maybe Text)
    , _pguProfileId      :: !Int64
    , _pguKey            :: !(Maybe Key)
    , _pguOAuthToken     :: !(Maybe OAuthToken)
    , _pguPlacementGroup :: !PlacementGroup
    , _pguFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementGroupsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pguQuotaUser'
--
-- * 'pguPrettyPrint'
--
-- * 'pguUserIP'
--
-- * 'pguProfileId'
--
-- * 'pguKey'
--
-- * 'pguOAuthToken'
--
-- * 'pguPlacementGroup'
--
-- * 'pguFields'
placementGroupsUpdate'
    :: Int64 -- ^ 'profileId'
    -> PlacementGroup -- ^ 'PlacementGroup'
    -> PlacementGroupsUpdate'
placementGroupsUpdate' pPguProfileId_ pPguPlacementGroup_ =
    PlacementGroupsUpdate'
    { _pguQuotaUser = Nothing
    , _pguPrettyPrint = True
    , _pguUserIP = Nothing
    , _pguProfileId = pPguProfileId_
    , _pguKey = Nothing
    , _pguOAuthToken = Nothing
    , _pguPlacementGroup = pPguPlacementGroup_
    , _pguFields = Nothing
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
pguUserIP :: Lens' PlacementGroupsUpdate' (Maybe Text)
pguUserIP
  = lens _pguUserIP (\ s a -> s{_pguUserIP = a})

-- | User profile ID associated with this request.
pguProfileId :: Lens' PlacementGroupsUpdate' Int64
pguProfileId
  = lens _pguProfileId (\ s a -> s{_pguProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pguKey :: Lens' PlacementGroupsUpdate' (Maybe Key)
pguKey = lens _pguKey (\ s a -> s{_pguKey = a})

-- | OAuth 2.0 token for the current user.
pguOAuthToken :: Lens' PlacementGroupsUpdate' (Maybe OAuthToken)
pguOAuthToken
  = lens _pguOAuthToken
      (\ s a -> s{_pguOAuthToken = a})

-- | Multipart request metadata.
pguPlacementGroup :: Lens' PlacementGroupsUpdate' PlacementGroup
pguPlacementGroup
  = lens _pguPlacementGroup
      (\ s a -> s{_pguPlacementGroup = a})

-- | Selector specifying which fields to include in a partial response.
pguFields :: Lens' PlacementGroupsUpdate' (Maybe Text)
pguFields
  = lens _pguFields (\ s a -> s{_pguFields = a})

instance GoogleAuth PlacementGroupsUpdate' where
        authKey = pguKey . _Just
        authToken = pguOAuthToken . _Just

instance GoogleRequest PlacementGroupsUpdate' where
        type Rs PlacementGroupsUpdate' = PlacementGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementGroupsUpdate'{..}
          = go _pguQuotaUser (Just _pguPrettyPrint) _pguUserIP
              _pguProfileId
              _pguKey
              _pguOAuthToken
              _pguFields
              (Just AltJSON)
              _pguPlacementGroup
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementGroupsUpdateResource)
                      r
                      u
