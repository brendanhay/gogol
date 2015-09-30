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
-- Module      : Network.Google.Resource.DFAReporting.CreativeGroups.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing creative group. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeGroupsPatch@.
module Network.Google.Resource.DFAReporting.CreativeGroups.Patch
    (
    -- * REST Resource
      CreativeGroupsPatchResource

    -- * Creating a Request
    , creativeGroupsPatch'
    , CreativeGroupsPatch'

    -- * Request Lenses
    , cgpQuotaUser
    , cgpPrettyPrint
    , cgpUserIp
    , cgpProfileId
    , cgpKey
    , cgpId
    , cgpOauthToken
    , cgpFields
    , cgpAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeGroupsPatch@ which the
-- 'CreativeGroupsPatch'' request conforms to.
type CreativeGroupsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] CreativeGroup

-- | Updates an existing creative group. This method supports patch
-- semantics.
--
-- /See:/ 'creativeGroupsPatch'' smart constructor.
data CreativeGroupsPatch' = CreativeGroupsPatch'
    { _cgpQuotaUser   :: !(Maybe Text)
    , _cgpPrettyPrint :: !Bool
    , _cgpUserIp      :: !(Maybe Text)
    , _cgpProfileId   :: !Int64
    , _cgpKey         :: !(Maybe Text)
    , _cgpId          :: !Int64
    , _cgpOauthToken  :: !(Maybe Text)
    , _cgpFields      :: !(Maybe Text)
    , _cgpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeGroupsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgpQuotaUser'
--
-- * 'cgpPrettyPrint'
--
-- * 'cgpUserIp'
--
-- * 'cgpProfileId'
--
-- * 'cgpKey'
--
-- * 'cgpId'
--
-- * 'cgpOauthToken'
--
-- * 'cgpFields'
--
-- * 'cgpAlt'
creativeGroupsPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CreativeGroupsPatch'
creativeGroupsPatch' pCgpProfileId_ pCgpId_ =
    CreativeGroupsPatch'
    { _cgpQuotaUser = Nothing
    , _cgpPrettyPrint = True
    , _cgpUserIp = Nothing
    , _cgpProfileId = pCgpProfileId_
    , _cgpKey = Nothing
    , _cgpId = pCgpId_
    , _cgpOauthToken = Nothing
    , _cgpFields = Nothing
    , _cgpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgpQuotaUser :: Lens' CreativeGroupsPatch' (Maybe Text)
cgpQuotaUser
  = lens _cgpQuotaUser (\ s a -> s{_cgpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgpPrettyPrint :: Lens' CreativeGroupsPatch' Bool
cgpPrettyPrint
  = lens _cgpPrettyPrint
      (\ s a -> s{_cgpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgpUserIp :: Lens' CreativeGroupsPatch' (Maybe Text)
cgpUserIp
  = lens _cgpUserIp (\ s a -> s{_cgpUserIp = a})

-- | User profile ID associated with this request.
cgpProfileId :: Lens' CreativeGroupsPatch' Int64
cgpProfileId
  = lens _cgpProfileId (\ s a -> s{_cgpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgpKey :: Lens' CreativeGroupsPatch' (Maybe Text)
cgpKey = lens _cgpKey (\ s a -> s{_cgpKey = a})

-- | Creative group ID.
cgpId :: Lens' CreativeGroupsPatch' Int64
cgpId = lens _cgpId (\ s a -> s{_cgpId = a})

-- | OAuth 2.0 token for the current user.
cgpOauthToken :: Lens' CreativeGroupsPatch' (Maybe Text)
cgpOauthToken
  = lens _cgpOauthToken
      (\ s a -> s{_cgpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgpFields :: Lens' CreativeGroupsPatch' (Maybe Text)
cgpFields
  = lens _cgpFields (\ s a -> s{_cgpFields = a})

-- | Data format for the response.
cgpAlt :: Lens' CreativeGroupsPatch' Alt
cgpAlt = lens _cgpAlt (\ s a -> s{_cgpAlt = a})

instance GoogleRequest CreativeGroupsPatch' where
        type Rs CreativeGroupsPatch' = CreativeGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeGroupsPatch'{..}
          = go _cgpQuotaUser (Just _cgpPrettyPrint) _cgpUserIp
              _cgpProfileId
              _cgpKey
              (Just _cgpId)
              _cgpOauthToken
              _cgpFields
              (Just _cgpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeGroupsPatchResource)
                      r
                      u
