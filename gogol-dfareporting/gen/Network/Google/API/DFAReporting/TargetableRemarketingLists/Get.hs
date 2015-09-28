{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.TargetableRemarketingLists.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one remarketing list by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.targetableRemarketingLists.get@.
module Network.Google.API.DFAReporting.TargetableRemarketingLists.Get
    (
    -- * REST Resource
      TargetableRemarketingListsGetAPI

    -- * Creating a Request
    , targetableRemarketingListsGet'
    , TargetableRemarketingListsGet'

    -- * Request Lenses
    , trlgQuotaUser
    , trlgPrettyPrint
    , trlgUserIp
    , trlgProfileId
    , trlgKey
    , trlgId
    , trlgOauthToken
    , trlgFields
    , trlgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.targetableRemarketingLists.get which the
-- 'TargetableRemarketingListsGet'' request conforms to.
type TargetableRemarketingListsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "targetableRemarketingLists" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] TargetableRemarketingList

-- | Gets one remarketing list by ID.
--
-- /See:/ 'targetableRemarketingListsGet'' smart constructor.
data TargetableRemarketingListsGet' = TargetableRemarketingListsGet'
    { _trlgQuotaUser   :: !(Maybe Text)
    , _trlgPrettyPrint :: !Bool
    , _trlgUserIp      :: !(Maybe Text)
    , _trlgProfileId   :: !Int64
    , _trlgKey         :: !(Maybe Text)
    , _trlgId          :: !Int64
    , _trlgOauthToken  :: !(Maybe Text)
    , _trlgFields      :: !(Maybe Text)
    , _trlgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetableRemarketingListsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trlgQuotaUser'
--
-- * 'trlgPrettyPrint'
--
-- * 'trlgUserIp'
--
-- * 'trlgProfileId'
--
-- * 'trlgKey'
--
-- * 'trlgId'
--
-- * 'trlgOauthToken'
--
-- * 'trlgFields'
--
-- * 'trlgAlt'
targetableRemarketingListsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> TargetableRemarketingListsGet'
targetableRemarketingListsGet' pTrlgProfileId_ pTrlgId_ =
    TargetableRemarketingListsGet'
    { _trlgQuotaUser = Nothing
    , _trlgPrettyPrint = True
    , _trlgUserIp = Nothing
    , _trlgProfileId = pTrlgProfileId_
    , _trlgKey = Nothing
    , _trlgId = pTrlgId_
    , _trlgOauthToken = Nothing
    , _trlgFields = Nothing
    , _trlgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
trlgQuotaUser :: Lens' TargetableRemarketingListsGet' (Maybe Text)
trlgQuotaUser
  = lens _trlgQuotaUser
      (\ s a -> s{_trlgQuotaUser = a})

-- | Returns response with indentations and line breaks.
trlgPrettyPrint :: Lens' TargetableRemarketingListsGet' Bool
trlgPrettyPrint
  = lens _trlgPrettyPrint
      (\ s a -> s{_trlgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
trlgUserIp :: Lens' TargetableRemarketingListsGet' (Maybe Text)
trlgUserIp
  = lens _trlgUserIp (\ s a -> s{_trlgUserIp = a})

-- | User profile ID associated with this request.
trlgProfileId :: Lens' TargetableRemarketingListsGet' Int64
trlgProfileId
  = lens _trlgProfileId
      (\ s a -> s{_trlgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
trlgKey :: Lens' TargetableRemarketingListsGet' (Maybe Text)
trlgKey = lens _trlgKey (\ s a -> s{_trlgKey = a})

-- | Remarketing list ID.
trlgId :: Lens' TargetableRemarketingListsGet' Int64
trlgId = lens _trlgId (\ s a -> s{_trlgId = a})

-- | OAuth 2.0 token for the current user.
trlgOauthToken :: Lens' TargetableRemarketingListsGet' (Maybe Text)
trlgOauthToken
  = lens _trlgOauthToken
      (\ s a -> s{_trlgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
trlgFields :: Lens' TargetableRemarketingListsGet' (Maybe Text)
trlgFields
  = lens _trlgFields (\ s a -> s{_trlgFields = a})

-- | Data format for the response.
trlgAlt :: Lens' TargetableRemarketingListsGet' Alt
trlgAlt = lens _trlgAlt (\ s a -> s{_trlgAlt = a})

instance GoogleRequest TargetableRemarketingListsGet'
         where
        type Rs TargetableRemarketingListsGet' =
             TargetableRemarketingList
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          TargetableRemarketingListsGet'{..}
          = go _trlgQuotaUser (Just _trlgPrettyPrint)
              _trlgUserIp
              _trlgProfileId
              _trlgKey
              _trlgId
              _trlgOauthToken
              _trlgFields
              (Just _trlgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetableRemarketingListsGetAPI)
                      r
                      u
