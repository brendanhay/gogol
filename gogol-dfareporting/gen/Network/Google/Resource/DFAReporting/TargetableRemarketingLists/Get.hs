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
-- Module      : Network.Google.Resource.DFAReporting.TargetableRemarketingLists.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one remarketing list by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingTargetableRemarketingListsGet@.
module Network.Google.Resource.DFAReporting.TargetableRemarketingLists.Get
    (
    -- * REST Resource
      TargetableRemarketingListsGetResource

    -- * Creating a Request
    , targetableRemarketingListsGet'
    , TargetableRemarketingListsGet'

    -- * Request Lenses
    , trlgQuotaUser
    , trlgPrettyPrint
    , trlgUserIP
    , trlgProfileId
    , trlgKey
    , trlgId
    , trlgOAuthToken
    , trlgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingTargetableRemarketingListsGet@ which the
-- 'TargetableRemarketingListsGet'' request conforms to.
type TargetableRemarketingListsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "targetableRemarketingLists" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] TargetableRemarketingList

-- | Gets one remarketing list by ID.
--
-- /See:/ 'targetableRemarketingListsGet'' smart constructor.
data TargetableRemarketingListsGet' = TargetableRemarketingListsGet'
    { _trlgQuotaUser   :: !(Maybe Text)
    , _trlgPrettyPrint :: !Bool
    , _trlgUserIP      :: !(Maybe Text)
    , _trlgProfileId   :: !Int64
    , _trlgKey         :: !(Maybe Key)
    , _trlgId          :: !Int64
    , _trlgOAuthToken  :: !(Maybe OAuthToken)
    , _trlgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetableRemarketingListsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trlgQuotaUser'
--
-- * 'trlgPrettyPrint'
--
-- * 'trlgUserIP'
--
-- * 'trlgProfileId'
--
-- * 'trlgKey'
--
-- * 'trlgId'
--
-- * 'trlgOAuthToken'
--
-- * 'trlgFields'
targetableRemarketingListsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> TargetableRemarketingListsGet'
targetableRemarketingListsGet' pTrlgProfileId_ pTrlgId_ =
    TargetableRemarketingListsGet'
    { _trlgQuotaUser = Nothing
    , _trlgPrettyPrint = True
    , _trlgUserIP = Nothing
    , _trlgProfileId = pTrlgProfileId_
    , _trlgKey = Nothing
    , _trlgId = pTrlgId_
    , _trlgOAuthToken = Nothing
    , _trlgFields = Nothing
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
trlgUserIP :: Lens' TargetableRemarketingListsGet' (Maybe Text)
trlgUserIP
  = lens _trlgUserIP (\ s a -> s{_trlgUserIP = a})

-- | User profile ID associated with this request.
trlgProfileId :: Lens' TargetableRemarketingListsGet' Int64
trlgProfileId
  = lens _trlgProfileId
      (\ s a -> s{_trlgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
trlgKey :: Lens' TargetableRemarketingListsGet' (Maybe Key)
trlgKey = lens _trlgKey (\ s a -> s{_trlgKey = a})

-- | Remarketing list ID.
trlgId :: Lens' TargetableRemarketingListsGet' Int64
trlgId = lens _trlgId (\ s a -> s{_trlgId = a})

-- | OAuth 2.0 token for the current user.
trlgOAuthToken :: Lens' TargetableRemarketingListsGet' (Maybe OAuthToken)
trlgOAuthToken
  = lens _trlgOAuthToken
      (\ s a -> s{_trlgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
trlgFields :: Lens' TargetableRemarketingListsGet' (Maybe Text)
trlgFields
  = lens _trlgFields (\ s a -> s{_trlgFields = a})

instance GoogleAuth TargetableRemarketingListsGet'
         where
        authKey = trlgKey . _Just
        authToken = trlgOAuthToken . _Just

instance GoogleRequest TargetableRemarketingListsGet'
         where
        type Rs TargetableRemarketingListsGet' =
             TargetableRemarketingList
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          TargetableRemarketingListsGet'{..}
          = go _trlgQuotaUser (Just _trlgPrettyPrint)
              _trlgUserIP
              _trlgProfileId
              _trlgKey
              _trlgId
              _trlgOAuthToken
              _trlgFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy TargetableRemarketingListsGetResource)
                      r
                      u
