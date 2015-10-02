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
module Network.Google.Resource.DFAReporting.PlacementGroups.Patch
    (
    -- * REST Resource
      PlacementGroupsPatchResource

    -- * Creating a Request
    , placementGroupsPatch'
    , PlacementGroupsPatch'

    -- * Request Lenses
    , pgpQuotaUser
    , pgpPrettyPrint
    , pgpUserIP
    , pgpProfileId
    , pgpKey
    , pgpId
    , pgpOAuthToken
    , pgpPlacementGroup
    , pgpFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementGroupsPatch@ which the
-- 'PlacementGroupsPatch'' request conforms to.
type PlacementGroupsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PlacementGroup :>
                             Patch '[JSON] PlacementGroup

-- | Updates an existing placement group. This method supports patch
-- semantics.
--
-- /See:/ 'placementGroupsPatch'' smart constructor.
data PlacementGroupsPatch' = PlacementGroupsPatch'
    { _pgpQuotaUser      :: !(Maybe Text)
    , _pgpPrettyPrint    :: !Bool
    , _pgpUserIP         :: !(Maybe Text)
    , _pgpProfileId      :: !Int64
    , _pgpKey            :: !(Maybe Key)
    , _pgpId             :: !Int64
    , _pgpOAuthToken     :: !(Maybe OAuthToken)
    , _pgpPlacementGroup :: !PlacementGroup
    , _pgpFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementGroupsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgpQuotaUser'
--
-- * 'pgpPrettyPrint'
--
-- * 'pgpUserIP'
--
-- * 'pgpProfileId'
--
-- * 'pgpKey'
--
-- * 'pgpId'
--
-- * 'pgpOAuthToken'
--
-- * 'pgpPlacementGroup'
--
-- * 'pgpFields'
placementGroupsPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementGroup -- ^ 'PlacementGroup'
    -> PlacementGroupsPatch'
placementGroupsPatch' pPgpProfileId_ pPgpId_ pPgpPlacementGroup_ =
    PlacementGroupsPatch'
    { _pgpQuotaUser = Nothing
    , _pgpPrettyPrint = True
    , _pgpUserIP = Nothing
    , _pgpProfileId = pPgpProfileId_
    , _pgpKey = Nothing
    , _pgpId = pPgpId_
    , _pgpOAuthToken = Nothing
    , _pgpPlacementGroup = pPgpPlacementGroup_
    , _pgpFields = Nothing
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
pgpUserIP :: Lens' PlacementGroupsPatch' (Maybe Text)
pgpUserIP
  = lens _pgpUserIP (\ s a -> s{_pgpUserIP = a})

-- | User profile ID associated with this request.
pgpProfileId :: Lens' PlacementGroupsPatch' Int64
pgpProfileId
  = lens _pgpProfileId (\ s a -> s{_pgpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgpKey :: Lens' PlacementGroupsPatch' (Maybe Key)
pgpKey = lens _pgpKey (\ s a -> s{_pgpKey = a})

-- | Placement group ID.
pgpId :: Lens' PlacementGroupsPatch' Int64
pgpId = lens _pgpId (\ s a -> s{_pgpId = a})

-- | OAuth 2.0 token for the current user.
pgpOAuthToken :: Lens' PlacementGroupsPatch' (Maybe OAuthToken)
pgpOAuthToken
  = lens _pgpOAuthToken
      (\ s a -> s{_pgpOAuthToken = a})

-- | Multipart request metadata.
pgpPlacementGroup :: Lens' PlacementGroupsPatch' PlacementGroup
pgpPlacementGroup
  = lens _pgpPlacementGroup
      (\ s a -> s{_pgpPlacementGroup = a})

-- | Selector specifying which fields to include in a partial response.
pgpFields :: Lens' PlacementGroupsPatch' (Maybe Text)
pgpFields
  = lens _pgpFields (\ s a -> s{_pgpFields = a})

instance GoogleAuth PlacementGroupsPatch' where
        authKey = pgpKey . _Just
        authToken = pgpOAuthToken . _Just

instance GoogleRequest PlacementGroupsPatch' where
        type Rs PlacementGroupsPatch' = PlacementGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementGroupsPatch'{..}
          = go _pgpQuotaUser (Just _pgpPrettyPrint) _pgpUserIP
              _pgpProfileId
              _pgpKey
              (Just _pgpId)
              _pgpOAuthToken
              _pgpFields
              (Just AltJSON)
              _pgpPlacementGroup
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementGroupsPatchResource)
                      r
                      u
