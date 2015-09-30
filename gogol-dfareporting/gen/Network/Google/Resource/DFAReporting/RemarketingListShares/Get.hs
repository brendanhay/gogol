{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.RemarketingListShares.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one remarketing list share by remarketing list ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRemarketingListSharesGet@.
module DFAReporting.RemarketingListShares.Get
    (
    -- * REST Resource
      RemarketingListSharesGetAPI

    -- * Creating a Request
    , remarketingListSharesGet
    , RemarketingListSharesGet

    -- * Request Lenses
    , rlsgQuotaUser
    , rlsgPrettyPrint
    , rlsgUserIp
    , rlsgProfileId
    , rlsgRemarketingListId
    , rlsgKey
    , rlsgOauthToken
    , rlsgFields
    , rlsgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRemarketingListSharesGet@ which the
-- 'RemarketingListSharesGet' request conforms to.
type RemarketingListSharesGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingListShares" :>
           Capture "remarketingListId" Int64 :>
             Get '[JSON] RemarketingListShare

-- | Gets one remarketing list share by remarketing list ID.
--
-- /See:/ 'remarketingListSharesGet' smart constructor.
data RemarketingListSharesGet = RemarketingListSharesGet
    { _rlsgQuotaUser         :: !(Maybe Text)
    , _rlsgPrettyPrint       :: !Bool
    , _rlsgUserIp            :: !(Maybe Text)
    , _rlsgProfileId         :: !Int64
    , _rlsgRemarketingListId :: !Int64
    , _rlsgKey               :: !(Maybe Text)
    , _rlsgOauthToken        :: !(Maybe Text)
    , _rlsgFields            :: !(Maybe Text)
    , _rlsgAlt               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListSharesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlsgQuotaUser'
--
-- * 'rlsgPrettyPrint'
--
-- * 'rlsgUserIp'
--
-- * 'rlsgProfileId'
--
-- * 'rlsgRemarketingListId'
--
-- * 'rlsgKey'
--
-- * 'rlsgOauthToken'
--
-- * 'rlsgFields'
--
-- * 'rlsgAlt'
remarketingListSharesGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'remarketingListId'
    -> RemarketingListSharesGet
remarketingListSharesGet pRlsgProfileId_ pRlsgRemarketingListId_ =
    RemarketingListSharesGet
    { _rlsgQuotaUser = Nothing
    , _rlsgPrettyPrint = True
    , _rlsgUserIp = Nothing
    , _rlsgProfileId = pRlsgProfileId_
    , _rlsgRemarketingListId = pRlsgRemarketingListId_
    , _rlsgKey = Nothing
    , _rlsgOauthToken = Nothing
    , _rlsgFields = Nothing
    , _rlsgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlsgQuotaUser :: Lens' RemarketingListSharesGet' (Maybe Text)
rlsgQuotaUser
  = lens _rlsgQuotaUser
      (\ s a -> s{_rlsgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlsgPrettyPrint :: Lens' RemarketingListSharesGet' Bool
rlsgPrettyPrint
  = lens _rlsgPrettyPrint
      (\ s a -> s{_rlsgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlsgUserIp :: Lens' RemarketingListSharesGet' (Maybe Text)
rlsgUserIp
  = lens _rlsgUserIp (\ s a -> s{_rlsgUserIp = a})

-- | User profile ID associated with this request.
rlsgProfileId :: Lens' RemarketingListSharesGet' Int64
rlsgProfileId
  = lens _rlsgProfileId
      (\ s a -> s{_rlsgProfileId = a})

-- | Remarketing list ID.
rlsgRemarketingListId :: Lens' RemarketingListSharesGet' Int64
rlsgRemarketingListId
  = lens _rlsgRemarketingListId
      (\ s a -> s{_rlsgRemarketingListId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlsgKey :: Lens' RemarketingListSharesGet' (Maybe Text)
rlsgKey = lens _rlsgKey (\ s a -> s{_rlsgKey = a})

-- | OAuth 2.0 token for the current user.
rlsgOauthToken :: Lens' RemarketingListSharesGet' (Maybe Text)
rlsgOauthToken
  = lens _rlsgOauthToken
      (\ s a -> s{_rlsgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlsgFields :: Lens' RemarketingListSharesGet' (Maybe Text)
rlsgFields
  = lens _rlsgFields (\ s a -> s{_rlsgFields = a})

-- | Data format for the response.
rlsgAlt :: Lens' RemarketingListSharesGet' Text
rlsgAlt = lens _rlsgAlt (\ s a -> s{_rlsgAlt = a})

instance GoogleRequest RemarketingListSharesGet'
         where
        type Rs RemarketingListSharesGet' =
             RemarketingListShare
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u RemarketingListSharesGet{..}
          = go _rlsgQuotaUser _rlsgPrettyPrint _rlsgUserIp
              _rlsgProfileId
              _rlsgRemarketingListId
              _rlsgKey
              _rlsgOauthToken
              _rlsgFields
              _rlsgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RemarketingListSharesGetAPI)
                      r
                      u
