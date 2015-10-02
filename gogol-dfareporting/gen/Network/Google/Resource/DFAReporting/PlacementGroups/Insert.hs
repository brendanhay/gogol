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
-- Module      : Network.Google.Resource.DFAReporting.PlacementGroups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new placement group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementGroupsInsert@.
module Network.Google.Resource.DFAReporting.PlacementGroups.Insert
    (
    -- * REST Resource
      PlacementGroupsInsertResource

    -- * Creating a Request
    , placementGroupsInsert'
    , PlacementGroupsInsert'

    -- * Request Lenses
    , pgiQuotaUser
    , pgiPrettyPrint
    , pgiUserIP
    , pgiProfileId
    , pgiKey
    , pgiOAuthToken
    , pgiPlacementGroup
    , pgiFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementGroupsInsert@ which the
-- 'PlacementGroupsInsert'' request conforms to.
type PlacementGroupsInsertResource =
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
                           Post '[JSON] PlacementGroup

-- | Inserts a new placement group.
--
-- /See:/ 'placementGroupsInsert'' smart constructor.
data PlacementGroupsInsert' = PlacementGroupsInsert'
    { _pgiQuotaUser      :: !(Maybe Text)
    , _pgiPrettyPrint    :: !Bool
    , _pgiUserIP         :: !(Maybe Text)
    , _pgiProfileId      :: !Int64
    , _pgiKey            :: !(Maybe Key)
    , _pgiOAuthToken     :: !(Maybe OAuthToken)
    , _pgiPlacementGroup :: !PlacementGroup
    , _pgiFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementGroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgiQuotaUser'
--
-- * 'pgiPrettyPrint'
--
-- * 'pgiUserIP'
--
-- * 'pgiProfileId'
--
-- * 'pgiKey'
--
-- * 'pgiOAuthToken'
--
-- * 'pgiPlacementGroup'
--
-- * 'pgiFields'
placementGroupsInsert'
    :: Int64 -- ^ 'profileId'
    -> PlacementGroup -- ^ 'PlacementGroup'
    -> PlacementGroupsInsert'
placementGroupsInsert' pPgiProfileId_ pPgiPlacementGroup_ =
    PlacementGroupsInsert'
    { _pgiQuotaUser = Nothing
    , _pgiPrettyPrint = True
    , _pgiUserIP = Nothing
    , _pgiProfileId = pPgiProfileId_
    , _pgiKey = Nothing
    , _pgiOAuthToken = Nothing
    , _pgiPlacementGroup = pPgiPlacementGroup_
    , _pgiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgiQuotaUser :: Lens' PlacementGroupsInsert' (Maybe Text)
pgiQuotaUser
  = lens _pgiQuotaUser (\ s a -> s{_pgiQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgiPrettyPrint :: Lens' PlacementGroupsInsert' Bool
pgiPrettyPrint
  = lens _pgiPrettyPrint
      (\ s a -> s{_pgiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgiUserIP :: Lens' PlacementGroupsInsert' (Maybe Text)
pgiUserIP
  = lens _pgiUserIP (\ s a -> s{_pgiUserIP = a})

-- | User profile ID associated with this request.
pgiProfileId :: Lens' PlacementGroupsInsert' Int64
pgiProfileId
  = lens _pgiProfileId (\ s a -> s{_pgiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgiKey :: Lens' PlacementGroupsInsert' (Maybe Key)
pgiKey = lens _pgiKey (\ s a -> s{_pgiKey = a})

-- | OAuth 2.0 token for the current user.
pgiOAuthToken :: Lens' PlacementGroupsInsert' (Maybe OAuthToken)
pgiOAuthToken
  = lens _pgiOAuthToken
      (\ s a -> s{_pgiOAuthToken = a})

-- | Multipart request metadata.
pgiPlacementGroup :: Lens' PlacementGroupsInsert' PlacementGroup
pgiPlacementGroup
  = lens _pgiPlacementGroup
      (\ s a -> s{_pgiPlacementGroup = a})

-- | Selector specifying which fields to include in a partial response.
pgiFields :: Lens' PlacementGroupsInsert' (Maybe Text)
pgiFields
  = lens _pgiFields (\ s a -> s{_pgiFields = a})

instance GoogleAuth PlacementGroupsInsert' where
        authKey = pgiKey . _Just
        authToken = pgiOAuthToken . _Just

instance GoogleRequest PlacementGroupsInsert' where
        type Rs PlacementGroupsInsert' = PlacementGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementGroupsInsert'{..}
          = go _pgiQuotaUser (Just _pgiPrettyPrint) _pgiUserIP
              _pgiProfileId
              _pgiKey
              _pgiOAuthToken
              _pgiFields
              (Just AltJSON)
              _pgiPlacementGroup
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementGroupsInsertResource)
                      r
                      u
