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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingLists.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing remarketing list.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRemarketingListsUpdate@.
module Network.Google.Resource.DFAReporting.RemarketingLists.Update
    (
    -- * REST Resource
      RemarketingListsUpdateResource

    -- * Creating a Request
    , remarketingListsUpdate'
    , RemarketingListsUpdate'

    -- * Request Lenses
    , rluQuotaUser
    , rluPrettyPrint
    , rluUserIp
    , rluProfileId
    , rluKey
    , rluOauthToken
    , rluFields
    , rluAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRemarketingListsUpdate@ which the
-- 'RemarketingListsUpdate'' request conforms to.
type RemarketingListsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingLists" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] RemarketingList

-- | Updates an existing remarketing list.
--
-- /See:/ 'remarketingListsUpdate'' smart constructor.
data RemarketingListsUpdate' = RemarketingListsUpdate'
    { _rluQuotaUser   :: !(Maybe Text)
    , _rluPrettyPrint :: !Bool
    , _rluUserIp      :: !(Maybe Text)
    , _rluProfileId   :: !Int64
    , _rluKey         :: !(Maybe Text)
    , _rluOauthToken  :: !(Maybe Text)
    , _rluFields      :: !(Maybe Text)
    , _rluAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rluQuotaUser'
--
-- * 'rluPrettyPrint'
--
-- * 'rluUserIp'
--
-- * 'rluProfileId'
--
-- * 'rluKey'
--
-- * 'rluOauthToken'
--
-- * 'rluFields'
--
-- * 'rluAlt'
remarketingListsUpdate'
    :: Int64 -- ^ 'profileId'
    -> RemarketingListsUpdate'
remarketingListsUpdate' pRluProfileId_ =
    RemarketingListsUpdate'
    { _rluQuotaUser = Nothing
    , _rluPrettyPrint = True
    , _rluUserIp = Nothing
    , _rluProfileId = pRluProfileId_
    , _rluKey = Nothing
    , _rluOauthToken = Nothing
    , _rluFields = Nothing
    , _rluAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rluQuotaUser :: Lens' RemarketingListsUpdate' (Maybe Text)
rluQuotaUser
  = lens _rluQuotaUser (\ s a -> s{_rluQuotaUser = a})

-- | Returns response with indentations and line breaks.
rluPrettyPrint :: Lens' RemarketingListsUpdate' Bool
rluPrettyPrint
  = lens _rluPrettyPrint
      (\ s a -> s{_rluPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rluUserIp :: Lens' RemarketingListsUpdate' (Maybe Text)
rluUserIp
  = lens _rluUserIp (\ s a -> s{_rluUserIp = a})

-- | User profile ID associated with this request.
rluProfileId :: Lens' RemarketingListsUpdate' Int64
rluProfileId
  = lens _rluProfileId (\ s a -> s{_rluProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rluKey :: Lens' RemarketingListsUpdate' (Maybe Text)
rluKey = lens _rluKey (\ s a -> s{_rluKey = a})

-- | OAuth 2.0 token for the current user.
rluOauthToken :: Lens' RemarketingListsUpdate' (Maybe Text)
rluOauthToken
  = lens _rluOauthToken
      (\ s a -> s{_rluOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rluFields :: Lens' RemarketingListsUpdate' (Maybe Text)
rluFields
  = lens _rluFields (\ s a -> s{_rluFields = a})

-- | Data format for the response.
rluAlt :: Lens' RemarketingListsUpdate' Alt
rluAlt = lens _rluAlt (\ s a -> s{_rluAlt = a})

instance GoogleRequest RemarketingListsUpdate' where
        type Rs RemarketingListsUpdate' = RemarketingList
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u RemarketingListsUpdate'{..}
          = go _rluQuotaUser (Just _rluPrettyPrint) _rluUserIp
              _rluProfileId
              _rluKey
              _rluOauthToken
              _rluFields
              (Just _rluAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RemarketingListsUpdateResource)
                      r
                      u
