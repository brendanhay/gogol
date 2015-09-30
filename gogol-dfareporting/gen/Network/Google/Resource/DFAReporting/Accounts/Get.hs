{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Accounts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one account by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountsGet@.
module DFAReporting.Accounts.Get
    (
    -- * REST Resource
      AccountsGetAPI

    -- * Creating a Request
    , accountsGet
    , AccountsGet

    -- * Request Lenses
    , accQuotaUser
    , accPrettyPrint
    , accUserIp
    , accProfileId
    , accKey
    , accId
    , accOauthToken
    , accFields
    , accAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountsGet@ which the
-- 'AccountsGet' request conforms to.
type AccountsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accounts" :>
           Capture "id" Int64 :> Get '[JSON] Account

-- | Gets one account by ID.
--
-- /See:/ 'accountsGet' smart constructor.
data AccountsGet = AccountsGet
    { _accQuotaUser   :: !(Maybe Text)
    , _accPrettyPrint :: !Bool
    , _accUserIp      :: !(Maybe Text)
    , _accProfileId   :: !Int64
    , _accKey         :: !(Maybe Text)
    , _accId          :: !Int64
    , _accOauthToken  :: !(Maybe Text)
    , _accFields      :: !(Maybe Text)
    , _accAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accQuotaUser'
--
-- * 'accPrettyPrint'
--
-- * 'accUserIp'
--
-- * 'accProfileId'
--
-- * 'accKey'
--
-- * 'accId'
--
-- * 'accOauthToken'
--
-- * 'accFields'
--
-- * 'accAlt'
accountsGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AccountsGet
accountsGet pAccProfileId_ pAccId_ =
    AccountsGet
    { _accQuotaUser = Nothing
    , _accPrettyPrint = True
    , _accUserIp = Nothing
    , _accProfileId = pAccProfileId_
    , _accKey = Nothing
    , _accId = pAccId_
    , _accOauthToken = Nothing
    , _accFields = Nothing
    , _accAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
accQuotaUser :: Lens' AccountsGet' (Maybe Text)
accQuotaUser
  = lens _accQuotaUser (\ s a -> s{_accQuotaUser = a})

-- | Returns response with indentations and line breaks.
accPrettyPrint :: Lens' AccountsGet' Bool
accPrettyPrint
  = lens _accPrettyPrint
      (\ s a -> s{_accPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
accUserIp :: Lens' AccountsGet' (Maybe Text)
accUserIp
  = lens _accUserIp (\ s a -> s{_accUserIp = a})

-- | User profile ID associated with this request.
accProfileId :: Lens' AccountsGet' Int64
accProfileId
  = lens _accProfileId (\ s a -> s{_accProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
accKey :: Lens' AccountsGet' (Maybe Text)
accKey = lens _accKey (\ s a -> s{_accKey = a})

-- | Account ID.
accId :: Lens' AccountsGet' Int64
accId = lens _accId (\ s a -> s{_accId = a})

-- | OAuth 2.0 token for the current user.
accOauthToken :: Lens' AccountsGet' (Maybe Text)
accOauthToken
  = lens _accOauthToken
      (\ s a -> s{_accOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
accFields :: Lens' AccountsGet' (Maybe Text)
accFields
  = lens _accFields (\ s a -> s{_accFields = a})

-- | Data format for the response.
accAlt :: Lens' AccountsGet' Text
accAlt = lens _accAlt (\ s a -> s{_accAlt = a})

instance GoogleRequest AccountsGet' where
        type Rs AccountsGet' = Account
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountsGet{..}
          = go _accQuotaUser _accPrettyPrint _accUserIp
              _accProfileId
              _accKey
              _accId
              _accOauthToken
              _accFields
              _accAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AccountsGetAPI) r u
