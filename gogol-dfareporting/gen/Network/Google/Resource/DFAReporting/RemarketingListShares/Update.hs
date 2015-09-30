{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.RemarketingListShares.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing remarketing list share.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRemarketingListSharesUpdate@.
module DFAReporting.RemarketingListShares.Update
    (
    -- * REST Resource
      RemarketingListSharesUpdateAPI

    -- * Creating a Request
    , remarketingListSharesUpdate
    , RemarketingListSharesUpdate

    -- * Request Lenses
    , rlsuQuotaUser
    , rlsuPrettyPrint
    , rlsuUserIp
    , rlsuProfileId
    , rlsuKey
    , rlsuOauthToken
    , rlsuFields
    , rlsuAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRemarketingListSharesUpdate@ which the
-- 'RemarketingListSharesUpdate' request conforms to.
type RemarketingListSharesUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingListShares" :>
           Put '[JSON] RemarketingListShare

-- | Updates an existing remarketing list share.
--
-- /See:/ 'remarketingListSharesUpdate' smart constructor.
data RemarketingListSharesUpdate = RemarketingListSharesUpdate
    { _rlsuQuotaUser   :: !(Maybe Text)
    , _rlsuPrettyPrint :: !Bool
    , _rlsuUserIp      :: !(Maybe Text)
    , _rlsuProfileId   :: !Int64
    , _rlsuKey         :: !(Maybe Text)
    , _rlsuOauthToken  :: !(Maybe Text)
    , _rlsuFields      :: !(Maybe Text)
    , _rlsuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListSharesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlsuQuotaUser'
--
-- * 'rlsuPrettyPrint'
--
-- * 'rlsuUserIp'
--
-- * 'rlsuProfileId'
--
-- * 'rlsuKey'
--
-- * 'rlsuOauthToken'
--
-- * 'rlsuFields'
--
-- * 'rlsuAlt'
remarketingListSharesUpdate
    :: Int64 -- ^ 'profileId'
    -> RemarketingListSharesUpdate
remarketingListSharesUpdate pRlsuProfileId_ =
    RemarketingListSharesUpdate
    { _rlsuQuotaUser = Nothing
    , _rlsuPrettyPrint = True
    , _rlsuUserIp = Nothing
    , _rlsuProfileId = pRlsuProfileId_
    , _rlsuKey = Nothing
    , _rlsuOauthToken = Nothing
    , _rlsuFields = Nothing
    , _rlsuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlsuQuotaUser :: Lens' RemarketingListSharesUpdate' (Maybe Text)
rlsuQuotaUser
  = lens _rlsuQuotaUser
      (\ s a -> s{_rlsuQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlsuPrettyPrint :: Lens' RemarketingListSharesUpdate' Bool
rlsuPrettyPrint
  = lens _rlsuPrettyPrint
      (\ s a -> s{_rlsuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlsuUserIp :: Lens' RemarketingListSharesUpdate' (Maybe Text)
rlsuUserIp
  = lens _rlsuUserIp (\ s a -> s{_rlsuUserIp = a})

-- | User profile ID associated with this request.
rlsuProfileId :: Lens' RemarketingListSharesUpdate' Int64
rlsuProfileId
  = lens _rlsuProfileId
      (\ s a -> s{_rlsuProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlsuKey :: Lens' RemarketingListSharesUpdate' (Maybe Text)
rlsuKey = lens _rlsuKey (\ s a -> s{_rlsuKey = a})

-- | OAuth 2.0 token for the current user.
rlsuOauthToken :: Lens' RemarketingListSharesUpdate' (Maybe Text)
rlsuOauthToken
  = lens _rlsuOauthToken
      (\ s a -> s{_rlsuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlsuFields :: Lens' RemarketingListSharesUpdate' (Maybe Text)
rlsuFields
  = lens _rlsuFields (\ s a -> s{_rlsuFields = a})

-- | Data format for the response.
rlsuAlt :: Lens' RemarketingListSharesUpdate' Text
rlsuAlt = lens _rlsuAlt (\ s a -> s{_rlsuAlt = a})

instance GoogleRequest RemarketingListSharesUpdate'
         where
        type Rs RemarketingListSharesUpdate' =
             RemarketingListShare
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u RemarketingListSharesUpdate{..}
          = go _rlsuQuotaUser _rlsuPrettyPrint _rlsuUserIp
              _rlsuProfileId
              _rlsuKey
              _rlsuOauthToken
              _rlsuFields
              _rlsuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RemarketingListSharesUpdateAPI)
                      r
                      u
