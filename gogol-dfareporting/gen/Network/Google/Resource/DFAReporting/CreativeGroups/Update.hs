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
    , cguUserIp
    , cguProfileId
    , cguKey
    , cguOauthToken
    , cguFields
    , cguAlt
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
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] CreativeGroup

-- | Updates an existing creative group.
--
-- /See:/ 'creativeGroupsUpdate'' smart constructor.
data CreativeGroupsUpdate' = CreativeGroupsUpdate'
    { _cguQuotaUser   :: !(Maybe Text)
    , _cguPrettyPrint :: !Bool
    , _cguUserIp      :: !(Maybe Text)
    , _cguProfileId   :: !Int64
    , _cguKey         :: !(Maybe Text)
    , _cguOauthToken  :: !(Maybe Text)
    , _cguFields      :: !(Maybe Text)
    , _cguAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeGroupsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cguQuotaUser'
--
-- * 'cguPrettyPrint'
--
-- * 'cguUserIp'
--
-- * 'cguProfileId'
--
-- * 'cguKey'
--
-- * 'cguOauthToken'
--
-- * 'cguFields'
--
-- * 'cguAlt'
creativeGroupsUpdate'
    :: Int64 -- ^ 'profileId'
    -> CreativeGroupsUpdate'
creativeGroupsUpdate' pCguProfileId_ =
    CreativeGroupsUpdate'
    { _cguQuotaUser = Nothing
    , _cguPrettyPrint = True
    , _cguUserIp = Nothing
    , _cguProfileId = pCguProfileId_
    , _cguKey = Nothing
    , _cguOauthToken = Nothing
    , _cguFields = Nothing
    , _cguAlt = JSON
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
cguUserIp :: Lens' CreativeGroupsUpdate' (Maybe Text)
cguUserIp
  = lens _cguUserIp (\ s a -> s{_cguUserIp = a})

-- | User profile ID associated with this request.
cguProfileId :: Lens' CreativeGroupsUpdate' Int64
cguProfileId
  = lens _cguProfileId (\ s a -> s{_cguProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cguKey :: Lens' CreativeGroupsUpdate' (Maybe Text)
cguKey = lens _cguKey (\ s a -> s{_cguKey = a})

-- | OAuth 2.0 token for the current user.
cguOauthToken :: Lens' CreativeGroupsUpdate' (Maybe Text)
cguOauthToken
  = lens _cguOauthToken
      (\ s a -> s{_cguOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cguFields :: Lens' CreativeGroupsUpdate' (Maybe Text)
cguFields
  = lens _cguFields (\ s a -> s{_cguFields = a})

-- | Data format for the response.
cguAlt :: Lens' CreativeGroupsUpdate' Alt
cguAlt = lens _cguAlt (\ s a -> s{_cguAlt = a})

instance GoogleRequest CreativeGroupsUpdate' where
        type Rs CreativeGroupsUpdate' = CreativeGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeGroupsUpdate'{..}
          = go _cguQuotaUser (Just _cguPrettyPrint) _cguUserIp
              _cguProfileId
              _cguKey
              _cguOauthToken
              _cguFields
              (Just _cguAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeGroupsUpdateResource)
                      r
                      u
