{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.RemarketingLists.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new remarketing list.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.remarketingLists.insert@.
module Network.Google.API.DFAReporting.RemarketingLists.Insert
    (
    -- * REST Resource
      RemarketingListsInsertAPI

    -- * Creating a Request
    , remarketingListsInsert'
    , RemarketingListsInsert'

    -- * Request Lenses
    , rliQuotaUser
    , rliPrettyPrint
    , rliUserIp
    , rliProfileId
    , rliKey
    , rliOauthToken
    , rliFields
    , rliAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.remarketingLists.insert which the
-- 'RemarketingListsInsert'' request conforms to.
type RemarketingListsInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingLists" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] RemarketingList

-- | Inserts a new remarketing list.
--
-- /See:/ 'remarketingListsInsert'' smart constructor.
data RemarketingListsInsert' = RemarketingListsInsert'
    { _rliQuotaUser   :: !(Maybe Text)
    , _rliPrettyPrint :: !Bool
    , _rliUserIp      :: !(Maybe Text)
    , _rliProfileId   :: !Int64
    , _rliKey         :: !(Maybe Text)
    , _rliOauthToken  :: !(Maybe Text)
    , _rliFields      :: !(Maybe Text)
    , _rliAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rliQuotaUser'
--
-- * 'rliPrettyPrint'
--
-- * 'rliUserIp'
--
-- * 'rliProfileId'
--
-- * 'rliKey'
--
-- * 'rliOauthToken'
--
-- * 'rliFields'
--
-- * 'rliAlt'
remarketingListsInsert'
    :: Int64 -- ^ 'profileId'
    -> RemarketingListsInsert'
remarketingListsInsert' pRliProfileId_ =
    RemarketingListsInsert'
    { _rliQuotaUser = Nothing
    , _rliPrettyPrint = True
    , _rliUserIp = Nothing
    , _rliProfileId = pRliProfileId_
    , _rliKey = Nothing
    , _rliOauthToken = Nothing
    , _rliFields = Nothing
    , _rliAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rliQuotaUser :: Lens' RemarketingListsInsert' (Maybe Text)
rliQuotaUser
  = lens _rliQuotaUser (\ s a -> s{_rliQuotaUser = a})

-- | Returns response with indentations and line breaks.
rliPrettyPrint :: Lens' RemarketingListsInsert' Bool
rliPrettyPrint
  = lens _rliPrettyPrint
      (\ s a -> s{_rliPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rliUserIp :: Lens' RemarketingListsInsert' (Maybe Text)
rliUserIp
  = lens _rliUserIp (\ s a -> s{_rliUserIp = a})

-- | User profile ID associated with this request.
rliProfileId :: Lens' RemarketingListsInsert' Int64
rliProfileId
  = lens _rliProfileId (\ s a -> s{_rliProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rliKey :: Lens' RemarketingListsInsert' (Maybe Text)
rliKey = lens _rliKey (\ s a -> s{_rliKey = a})

-- | OAuth 2.0 token for the current user.
rliOauthToken :: Lens' RemarketingListsInsert' (Maybe Text)
rliOauthToken
  = lens _rliOauthToken
      (\ s a -> s{_rliOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rliFields :: Lens' RemarketingListsInsert' (Maybe Text)
rliFields
  = lens _rliFields (\ s a -> s{_rliFields = a})

-- | Data format for the response.
rliAlt :: Lens' RemarketingListsInsert' Alt
rliAlt = lens _rliAlt (\ s a -> s{_rliAlt = a})

instance GoogleRequest RemarketingListsInsert' where
        type Rs RemarketingListsInsert' = RemarketingList
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u RemarketingListsInsert'{..}
          = go _rliQuotaUser (Just _rliPrettyPrint) _rliUserIp
              _rliProfileId
              _rliKey
              _rliOauthToken
              _rliFields
              (Just _rliAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RemarketingListsInsertAPI)
                      r
                      u
