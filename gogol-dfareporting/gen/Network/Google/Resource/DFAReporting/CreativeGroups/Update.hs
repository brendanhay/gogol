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
-- Module      : Network.Google.Resource.DFAReporting.CreativeGroups.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing creative group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeGroupsUpdate@.
module Network.Google.Resource.DFAReporting.CreativeGroups.Update
    (
    -- * REST Resource
      CreativeGroupsUpdateResource

    -- * Creating a Request
    , creativeGroupsUpdate'
    , CreativeGroupsUpdate'

    -- * Request Lenses
    , cguQuotaUser
    , cguPrettyPrint
    , cguUserIP
    , cguProfileId
    , cguCreativeGroup
    , cguKey
    , cguOAuthToken
    , cguFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeGroupsUpdate@ which the
-- 'CreativeGroupsUpdate'' request conforms to.
type CreativeGroupsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CreativeGroup :>
                           Put '[JSON] CreativeGroup

-- | Updates an existing creative group.
--
-- /See:/ 'creativeGroupsUpdate'' smart constructor.
data CreativeGroupsUpdate' = CreativeGroupsUpdate'
    { _cguQuotaUser     :: !(Maybe Text)
    , _cguPrettyPrint   :: !Bool
    , _cguUserIP        :: !(Maybe Text)
    , _cguProfileId     :: !Int64
    , _cguCreativeGroup :: !CreativeGroup
    , _cguKey           :: !(Maybe Key)
    , _cguOAuthToken    :: !(Maybe OAuthToken)
    , _cguFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeGroupsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cguQuotaUser'
--
-- * 'cguPrettyPrint'
--
-- * 'cguUserIP'
--
-- * 'cguProfileId'
--
-- * 'cguCreativeGroup'
--
-- * 'cguKey'
--
-- * 'cguOAuthToken'
--
-- * 'cguFields'
creativeGroupsUpdate'
    :: Int64 -- ^ 'profileId'
    -> CreativeGroup -- ^ 'CreativeGroup'
    -> CreativeGroupsUpdate'
creativeGroupsUpdate' pCguProfileId_ pCguCreativeGroup_ =
    CreativeGroupsUpdate'
    { _cguQuotaUser = Nothing
    , _cguPrettyPrint = True
    , _cguUserIP = Nothing
    , _cguProfileId = pCguProfileId_
    , _cguCreativeGroup = pCguCreativeGroup_
    , _cguKey = Nothing
    , _cguOAuthToken = Nothing
    , _cguFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cguQuotaUser :: Lens' CreativeGroupsUpdate' (Maybe Text)
cguQuotaUser
  = lens _cguQuotaUser (\ s a -> s{_cguQuotaUser = a})

-- | Returns response with indentations and line breaks.
cguPrettyPrint :: Lens' CreativeGroupsUpdate' Bool
cguPrettyPrint
  = lens _cguPrettyPrint
      (\ s a -> s{_cguPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cguUserIP :: Lens' CreativeGroupsUpdate' (Maybe Text)
cguUserIP
  = lens _cguUserIP (\ s a -> s{_cguUserIP = a})

-- | User profile ID associated with this request.
cguProfileId :: Lens' CreativeGroupsUpdate' Int64
cguProfileId
  = lens _cguProfileId (\ s a -> s{_cguProfileId = a})

-- | Multipart request metadata.
cguCreativeGroup :: Lens' CreativeGroupsUpdate' CreativeGroup
cguCreativeGroup
  = lens _cguCreativeGroup
      (\ s a -> s{_cguCreativeGroup = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cguKey :: Lens' CreativeGroupsUpdate' (Maybe Key)
cguKey = lens _cguKey (\ s a -> s{_cguKey = a})

-- | OAuth 2.0 token for the current user.
cguOAuthToken :: Lens' CreativeGroupsUpdate' (Maybe OAuthToken)
cguOAuthToken
  = lens _cguOAuthToken
      (\ s a -> s{_cguOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cguFields :: Lens' CreativeGroupsUpdate' (Maybe Text)
cguFields
  = lens _cguFields (\ s a -> s{_cguFields = a})

instance GoogleAuth CreativeGroupsUpdate' where
        authKey = cguKey . _Just
        authToken = cguOAuthToken . _Just

instance GoogleRequest CreativeGroupsUpdate' where
        type Rs CreativeGroupsUpdate' = CreativeGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeGroupsUpdate'{..}
          = go _cguQuotaUser (Just _cguPrettyPrint) _cguUserIP
              _cguProfileId
              _cguKey
              _cguOAuthToken
              _cguFields
              (Just AltJSON)
              _cguCreativeGroup
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeGroupsUpdateResource)
                      r
                      u
