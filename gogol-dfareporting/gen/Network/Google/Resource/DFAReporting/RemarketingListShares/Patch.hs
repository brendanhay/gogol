{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.RemarketingListShares.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing remarketing list share. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRemarketingListSharesPatch@.
module DFAReporting.RemarketingListShares.Patch
    (
    -- * REST Resource
      RemarketingListSharesPatchAPI

    -- * Creating a Request
    , remarketingListSharesPatch
    , RemarketingListSharesPatch

    -- * Request Lenses
    , rlspQuotaUser
    , rlspPrettyPrint
    , rlspUserIp
    , rlspProfileId
    , rlspRemarketingListId
    , rlspKey
    , rlspOauthToken
    , rlspFields
    , rlspAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRemarketingListSharesPatch@ which the
-- 'RemarketingListSharesPatch' request conforms to.
type RemarketingListSharesPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingListShares" :>
           QueryParam "remarketingListId" Int64 :>
             Patch '[JSON] RemarketingListShare

-- | Updates an existing remarketing list share. This method supports patch
-- semantics.
--
-- /See:/ 'remarketingListSharesPatch' smart constructor.
data RemarketingListSharesPatch = RemarketingListSharesPatch
    { _rlspQuotaUser         :: !(Maybe Text)
    , _rlspPrettyPrint       :: !Bool
    , _rlspUserIp            :: !(Maybe Text)
    , _rlspProfileId         :: !Int64
    , _rlspRemarketingListId :: !Int64
    , _rlspKey               :: !(Maybe Text)
    , _rlspOauthToken        :: !(Maybe Text)
    , _rlspFields            :: !(Maybe Text)
    , _rlspAlt               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListSharesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlspQuotaUser'
--
-- * 'rlspPrettyPrint'
--
-- * 'rlspUserIp'
--
-- * 'rlspProfileId'
--
-- * 'rlspRemarketingListId'
--
-- * 'rlspKey'
--
-- * 'rlspOauthToken'
--
-- * 'rlspFields'
--
-- * 'rlspAlt'
remarketingListSharesPatch
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'remarketingListId'
    -> RemarketingListSharesPatch
remarketingListSharesPatch pRlspProfileId_ pRlspRemarketingListId_ =
    RemarketingListSharesPatch
    { _rlspQuotaUser = Nothing
    , _rlspPrettyPrint = True
    , _rlspUserIp = Nothing
    , _rlspProfileId = pRlspProfileId_
    , _rlspRemarketingListId = pRlspRemarketingListId_
    , _rlspKey = Nothing
    , _rlspOauthToken = Nothing
    , _rlspFields = Nothing
    , _rlspAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlspQuotaUser :: Lens' RemarketingListSharesPatch' (Maybe Text)
rlspQuotaUser
  = lens _rlspQuotaUser
      (\ s a -> s{_rlspQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlspPrettyPrint :: Lens' RemarketingListSharesPatch' Bool
rlspPrettyPrint
  = lens _rlspPrettyPrint
      (\ s a -> s{_rlspPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlspUserIp :: Lens' RemarketingListSharesPatch' (Maybe Text)
rlspUserIp
  = lens _rlspUserIp (\ s a -> s{_rlspUserIp = a})

-- | User profile ID associated with this request.
rlspProfileId :: Lens' RemarketingListSharesPatch' Int64
rlspProfileId
  = lens _rlspProfileId
      (\ s a -> s{_rlspProfileId = a})

-- | Remarketing list ID.
rlspRemarketingListId :: Lens' RemarketingListSharesPatch' Int64
rlspRemarketingListId
  = lens _rlspRemarketingListId
      (\ s a -> s{_rlspRemarketingListId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlspKey :: Lens' RemarketingListSharesPatch' (Maybe Text)
rlspKey = lens _rlspKey (\ s a -> s{_rlspKey = a})

-- | OAuth 2.0 token for the current user.
rlspOauthToken :: Lens' RemarketingListSharesPatch' (Maybe Text)
rlspOauthToken
  = lens _rlspOauthToken
      (\ s a -> s{_rlspOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlspFields :: Lens' RemarketingListSharesPatch' (Maybe Text)
rlspFields
  = lens _rlspFields (\ s a -> s{_rlspFields = a})

-- | Data format for the response.
rlspAlt :: Lens' RemarketingListSharesPatch' Text
rlspAlt = lens _rlspAlt (\ s a -> s{_rlspAlt = a})

instance GoogleRequest RemarketingListSharesPatch'
         where
        type Rs RemarketingListSharesPatch' =
             RemarketingListShare
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u RemarketingListSharesPatch{..}
          = go _rlspQuotaUser _rlspPrettyPrint _rlspUserIp
              _rlspProfileId
              (Just _rlspRemarketingListId)
              _rlspKey
              _rlspOauthToken
              _rlspFields
              _rlspAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RemarketingListSharesPatchAPI)
                      r
                      u
