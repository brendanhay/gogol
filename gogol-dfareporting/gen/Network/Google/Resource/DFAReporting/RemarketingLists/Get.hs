{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
module Network.Google.Resource.DFAReporting.RemarketingLists.Get
    (
    -- * REST Resource
      RemarketingListsGetResource

    -- * Creating a Request
    , remarketingListsGet'
    , RemarketingListsGet'

    -- * Request Lenses
    , rlgQuotaUser
    , rlgPrettyPrint
    , rlgUserIP
    , rlgProFileId
    , rlgKey
    , rlgId
    , rlgOAuthToken
    , rlgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRemarketingListsGet@ which the
-- 'RemarketingListsGet'' request conforms to.
type RemarketingListsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingLists" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] RemarketingList

-- | Gets one remarketing list by ID.
--
-- /See:/ 'remarketingListsGet'' smart constructor.
data RemarketingListsGet' = RemarketingListsGet'
    { _rlgQuotaUser   :: !(Maybe Text)
    , _rlgPrettyPrint :: !Bool
    , _rlgUserIP      :: !(Maybe Text)
    , _rlgProFileId   :: !Int64
    , _rlgKey         :: !(Maybe AuthKey)
    , _rlgId          :: !Int64
    , _rlgOAuthToken  :: !(Maybe OAuthToken)
    , _rlgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlgQuotaUser'
--
-- * 'rlgPrettyPrint'
--
-- * 'rlgUserIP'
--
-- * 'rlgProFileId'
--
-- * 'rlgKey'
--
-- * 'rlgId'
--
-- * 'rlgOAuthToken'
--
-- * 'rlgFields'
remarketingListsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> RemarketingListsGet'
remarketingListsGet' pRlgProFileId_ pRlgId_ =
    RemarketingListsGet'
    { _rlgQuotaUser = Nothing
    , _rlgPrettyPrint = True
    , _rlgUserIP = Nothing
    , _rlgProFileId = pRlgProFileId_
    , _rlgKey = Nothing
    , _rlgId = pRlgId_
    , _rlgOAuthToken = Nothing
    , _rlgFields = Nothing
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
rlgUserIP :: Lens' RemarketingListsGet' (Maybe Text)
rlgUserIP
  = lens _rlgUserIP (\ s a -> s{_rlgUserIP = a})

-- | User profile ID associated with this request.
rlgProFileId :: Lens' RemarketingListsGet' Int64
rlgProFileId
  = lens _rlgProFileId (\ s a -> s{_rlgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlgKey :: Lens' RemarketingListsGet' (Maybe AuthKey)
rlgKey = lens _rlgKey (\ s a -> s{_rlgKey = a})

-- | Remarketing list ID.
rlgId :: Lens' RemarketingListsGet' Int64
rlgId = lens _rlgId (\ s a -> s{_rlgId = a})

-- | OAuth 2.0 token for the current user.
rlgOAuthToken :: Lens' RemarketingListsGet' (Maybe OAuthToken)
rlgOAuthToken
  = lens _rlgOAuthToken
      (\ s a -> s{_rlgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlgFields :: Lens' RemarketingListsGet' (Maybe Text)
rlgFields
  = lens _rlgFields (\ s a -> s{_rlgFields = a})

instance GoogleAuth RemarketingListsGet' where
        authKey = rlgKey . _Just
        authToken = rlgOAuthToken . _Just

instance GoogleRequest RemarketingListsGet' where
        type Rs RemarketingListsGet' = RemarketingList
        request = requestWith dFAReportingRequest
        requestWith rq RemarketingListsGet'{..}
          = go _rlgProFileId _rlgId _rlgQuotaUser
              (Just _rlgPrettyPrint)
              _rlgUserIP
              _rlgFields
              _rlgKey
              _rlgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy RemarketingListsGetResource)
                      rq
