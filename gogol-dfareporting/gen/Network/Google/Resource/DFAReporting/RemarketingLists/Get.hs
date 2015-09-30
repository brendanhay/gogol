{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.RemarketingLists.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one remarketing list by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRemarketingListsGet@.
module DFAReporting.RemarketingLists.Get
    (
    -- * REST Resource
      RemarketingListsGetAPI

    -- * Creating a Request
    , remarketingListsGet
    , RemarketingListsGet

    -- * Request Lenses
    , rlgQuotaUser
    , rlgPrettyPrint
    , rlgUserIp
    , rlgProfileId
    , rlgKey
    , rlgId
    , rlgOauthToken
    , rlgFields
    , rlgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRemarketingListsGet@ which the
-- 'RemarketingListsGet' request conforms to.
type RemarketingListsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingLists" :>
           Capture "id" Int64 :> Get '[JSON] RemarketingList

-- | Gets one remarketing list by ID.
--
-- /See:/ 'remarketingListsGet' smart constructor.
data RemarketingListsGet = RemarketingListsGet
    { _rlgQuotaUser   :: !(Maybe Text)
    , _rlgPrettyPrint :: !Bool
    , _rlgUserIp      :: !(Maybe Text)
    , _rlgProfileId   :: !Int64
    , _rlgKey         :: !(Maybe Text)
    , _rlgId          :: !Int64
    , _rlgOauthToken  :: !(Maybe Text)
    , _rlgFields      :: !(Maybe Text)
    , _rlgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlgQuotaUser'
--
-- * 'rlgPrettyPrint'
--
-- * 'rlgUserIp'
--
-- * 'rlgProfileId'
--
-- * 'rlgKey'
--
-- * 'rlgId'
--
-- * 'rlgOauthToken'
--
-- * 'rlgFields'
--
-- * 'rlgAlt'
remarketingListsGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> RemarketingListsGet
remarketingListsGet pRlgProfileId_ pRlgId_ =
    RemarketingListsGet
    { _rlgQuotaUser = Nothing
    , _rlgPrettyPrint = True
    , _rlgUserIp = Nothing
    , _rlgProfileId = pRlgProfileId_
    , _rlgKey = Nothing
    , _rlgId = pRlgId_
    , _rlgOauthToken = Nothing
    , _rlgFields = Nothing
    , _rlgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlgQuotaUser :: Lens' RemarketingListsGet' (Maybe Text)
rlgQuotaUser
  = lens _rlgQuotaUser (\ s a -> s{_rlgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlgPrettyPrint :: Lens' RemarketingListsGet' Bool
rlgPrettyPrint
  = lens _rlgPrettyPrint
      (\ s a -> s{_rlgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlgUserIp :: Lens' RemarketingListsGet' (Maybe Text)
rlgUserIp
  = lens _rlgUserIp (\ s a -> s{_rlgUserIp = a})

-- | User profile ID associated with this request.
rlgProfileId :: Lens' RemarketingListsGet' Int64
rlgProfileId
  = lens _rlgProfileId (\ s a -> s{_rlgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlgKey :: Lens' RemarketingListsGet' (Maybe Text)
rlgKey = lens _rlgKey (\ s a -> s{_rlgKey = a})

-- | Remarketing list ID.
rlgId :: Lens' RemarketingListsGet' Int64
rlgId = lens _rlgId (\ s a -> s{_rlgId = a})

-- | OAuth 2.0 token for the current user.
rlgOauthToken :: Lens' RemarketingListsGet' (Maybe Text)
rlgOauthToken
  = lens _rlgOauthToken
      (\ s a -> s{_rlgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlgFields :: Lens' RemarketingListsGet' (Maybe Text)
rlgFields
  = lens _rlgFields (\ s a -> s{_rlgFields = a})

-- | Data format for the response.
rlgAlt :: Lens' RemarketingListsGet' Text
rlgAlt = lens _rlgAlt (\ s a -> s{_rlgAlt = a})

instance GoogleRequest RemarketingListsGet' where
        type Rs RemarketingListsGet' = RemarketingList
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u RemarketingListsGet{..}
          = go _rlgQuotaUser _rlgPrettyPrint _rlgUserIp
              _rlgProfileId
              _rlgKey
              _rlgId
              _rlgOauthToken
              _rlgFields
              _rlgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RemarketingListsGetAPI)
                      r
                      u
