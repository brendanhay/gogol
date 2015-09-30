{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.RemarketingLists.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing remarketing list. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRemarketingListsPatch@.
module DFAReporting.RemarketingLists.Patch
    (
    -- * REST Resource
      RemarketingListsPatchAPI

    -- * Creating a Request
    , remarketingListsPatch
    , RemarketingListsPatch

    -- * Request Lenses
    , rlpQuotaUser
    , rlpPrettyPrint
    , rlpUserIp
    , rlpProfileId
    , rlpKey
    , rlpId
    , rlpOauthToken
    , rlpFields
    , rlpAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRemarketingListsPatch@ which the
-- 'RemarketingListsPatch' request conforms to.
type RemarketingListsPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingLists" :>
           QueryParam "id" Int64 :>
             Patch '[JSON] RemarketingList

-- | Updates an existing remarketing list. This method supports patch
-- semantics.
--
-- /See:/ 'remarketingListsPatch' smart constructor.
data RemarketingListsPatch = RemarketingListsPatch
    { _rlpQuotaUser   :: !(Maybe Text)
    , _rlpPrettyPrint :: !Bool
    , _rlpUserIp      :: !(Maybe Text)
    , _rlpProfileId   :: !Int64
    , _rlpKey         :: !(Maybe Text)
    , _rlpId          :: !Int64
    , _rlpOauthToken  :: !(Maybe Text)
    , _rlpFields      :: !(Maybe Text)
    , _rlpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlpQuotaUser'
--
-- * 'rlpPrettyPrint'
--
-- * 'rlpUserIp'
--
-- * 'rlpProfileId'
--
-- * 'rlpKey'
--
-- * 'rlpId'
--
-- * 'rlpOauthToken'
--
-- * 'rlpFields'
--
-- * 'rlpAlt'
remarketingListsPatch
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> RemarketingListsPatch
remarketingListsPatch pRlpProfileId_ pRlpId_ =
    RemarketingListsPatch
    { _rlpQuotaUser = Nothing
    , _rlpPrettyPrint = True
    , _rlpUserIp = Nothing
    , _rlpProfileId = pRlpProfileId_
    , _rlpKey = Nothing
    , _rlpId = pRlpId_
    , _rlpOauthToken = Nothing
    , _rlpFields = Nothing
    , _rlpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlpQuotaUser :: Lens' RemarketingListsPatch' (Maybe Text)
rlpQuotaUser
  = lens _rlpQuotaUser (\ s a -> s{_rlpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlpPrettyPrint :: Lens' RemarketingListsPatch' Bool
rlpPrettyPrint
  = lens _rlpPrettyPrint
      (\ s a -> s{_rlpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlpUserIp :: Lens' RemarketingListsPatch' (Maybe Text)
rlpUserIp
  = lens _rlpUserIp (\ s a -> s{_rlpUserIp = a})

-- | User profile ID associated with this request.
rlpProfileId :: Lens' RemarketingListsPatch' Int64
rlpProfileId
  = lens _rlpProfileId (\ s a -> s{_rlpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlpKey :: Lens' RemarketingListsPatch' (Maybe Text)
rlpKey = lens _rlpKey (\ s a -> s{_rlpKey = a})

-- | Remarketing list ID.
rlpId :: Lens' RemarketingListsPatch' Int64
rlpId = lens _rlpId (\ s a -> s{_rlpId = a})

-- | OAuth 2.0 token for the current user.
rlpOauthToken :: Lens' RemarketingListsPatch' (Maybe Text)
rlpOauthToken
  = lens _rlpOauthToken
      (\ s a -> s{_rlpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlpFields :: Lens' RemarketingListsPatch' (Maybe Text)
rlpFields
  = lens _rlpFields (\ s a -> s{_rlpFields = a})

-- | Data format for the response.
rlpAlt :: Lens' RemarketingListsPatch' Text
rlpAlt = lens _rlpAlt (\ s a -> s{_rlpAlt = a})

instance GoogleRequest RemarketingListsPatch' where
        type Rs RemarketingListsPatch' = RemarketingList
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u RemarketingListsPatch{..}
          = go _rlpQuotaUser _rlpPrettyPrint _rlpUserIp
              _rlpProfileId
              _rlpKey
              (Just _rlpId)
              _rlpOauthToken
              _rlpFields
              _rlpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RemarketingListsPatchAPI)
                      r
                      u
