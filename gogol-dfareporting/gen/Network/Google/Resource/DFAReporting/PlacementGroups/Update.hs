{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , pguProFileId
    , pguPayload
    , pguKey
    , pguOAuthToken
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
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] PlacementGroup :>
                           Put '[JSON] PlacementGroup

-- | Updates an existing placement group.
--
-- /See:/ 'placementGroupsUpdate'' smart constructor.
data PlacementGroupsUpdate' = PlacementGroupsUpdate'
    { _pguQuotaUser   :: !(Maybe Text)
    , _pguPrettyPrint :: !Bool
    , _pguUserIP      :: !(Maybe Text)
    , _pguProFileId   :: !Int64
    , _pguPayload     :: !PlacementGroup
    , _pguKey         :: !(Maybe AuthKey)
    , _pguOAuthToken  :: !(Maybe OAuthToken)
    , _pguFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'pguProFileId'
--
-- * 'pguPayload'
--
-- * 'pguKey'
--
-- * 'pguOAuthToken'
--
-- * 'pguFields'
placementGroupsUpdate'
    :: Int64 -- ^ 'profileId'
    -> PlacementGroup -- ^ 'payload'
    -> PlacementGroupsUpdate'
placementGroupsUpdate' pPguProFileId_ pPguPayload_ =
    PlacementGroupsUpdate'
    { _pguQuotaUser = Nothing
    , _pguPrettyPrint = True
    , _pguUserIP = Nothing
    , _pguProFileId = pPguProFileId_
    , _pguPayload = pPguPayload_
    , _pguKey = Nothing
    , _pguOAuthToken = Nothing
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
pguProFileId :: Lens' PlacementGroupsUpdate' Int64
pguProFileId
  = lens _pguProFileId (\ s a -> s{_pguProFileId = a})

-- | Multipart request metadata.
pguPayload :: Lens' PlacementGroupsUpdate' PlacementGroup
pguPayload
  = lens _pguPayload (\ s a -> s{_pguPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pguKey :: Lens' PlacementGroupsUpdate' (Maybe AuthKey)
pguKey = lens _pguKey (\ s a -> s{_pguKey = a})

-- | OAuth 2.0 token for the current user.
pguOAuthToken :: Lens' PlacementGroupsUpdate' (Maybe OAuthToken)
pguOAuthToken
  = lens _pguOAuthToken
      (\ s a -> s{_pguOAuthToken = a})

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
          = go _pguProFileId _pguQuotaUser
              (Just _pguPrettyPrint)
              _pguUserIP
              _pguFields
              _pguKey
              _pguOAuthToken
              (Just AltJSON)
              _pguPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementGroupsUpdateResource)
                      r
                      u
