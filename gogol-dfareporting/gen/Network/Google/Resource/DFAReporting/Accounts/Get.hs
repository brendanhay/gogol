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
module Network.Google.Resource.DFAReporting.Accounts.Get
    (
    -- * REST Resource
      AccountsGetResource

    -- * Creating a Request
    , accountsGet'
    , AccountsGet'

    -- * Request Lenses
    , ag1QuotaUser
    , ag1PrettyPrint
    , ag1UserIP
    , ag1ProFileId
    , ag1Key
    , ag1Id
    , ag1OAuthToken
    , ag1Fields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountsGet@ which the
-- 'AccountsGet'' request conforms to.
type AccountsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accounts" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Account

-- | Gets one account by ID.
--
-- /See:/ 'accountsGet'' smart constructor.
data AccountsGet' = AccountsGet'
    { _ag1QuotaUser   :: !(Maybe Text)
    , _ag1PrettyPrint :: !Bool
    , _ag1UserIP      :: !(Maybe Text)
    , _ag1ProFileId   :: !Int64
    , _ag1Key         :: !(Maybe AuthKey)
    , _ag1Id          :: !Int64
    , _ag1OAuthToken  :: !(Maybe OAuthToken)
    , _ag1Fields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ag1QuotaUser'
--
-- * 'ag1PrettyPrint'
--
-- * 'ag1UserIP'
--
-- * 'ag1ProFileId'
--
-- * 'ag1Key'
--
-- * 'ag1Id'
--
-- * 'ag1OAuthToken'
--
-- * 'ag1Fields'
accountsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AccountsGet'
accountsGet' pAg1ProFileId_ pAg1Id_ =
    AccountsGet'
    { _ag1QuotaUser = Nothing
    , _ag1PrettyPrint = True
    , _ag1UserIP = Nothing
    , _ag1ProFileId = pAg1ProFileId_
    , _ag1Key = Nothing
    , _ag1Id = pAg1Id_
    , _ag1OAuthToken = Nothing
    , _ag1Fields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ag1QuotaUser :: Lens' AccountsGet' (Maybe Text)
ag1QuotaUser
  = lens _ag1QuotaUser (\ s a -> s{_ag1QuotaUser = a})

-- | Returns response with indentations and line breaks.
ag1PrettyPrint :: Lens' AccountsGet' Bool
ag1PrettyPrint
  = lens _ag1PrettyPrint
      (\ s a -> s{_ag1PrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ag1UserIP :: Lens' AccountsGet' (Maybe Text)
ag1UserIP
  = lens _ag1UserIP (\ s a -> s{_ag1UserIP = a})

-- | User profile ID associated with this request.
ag1ProFileId :: Lens' AccountsGet' Int64
ag1ProFileId
  = lens _ag1ProFileId (\ s a -> s{_ag1ProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ag1Key :: Lens' AccountsGet' (Maybe AuthKey)
ag1Key = lens _ag1Key (\ s a -> s{_ag1Key = a})

-- | Account ID.
ag1Id :: Lens' AccountsGet' Int64
ag1Id = lens _ag1Id (\ s a -> s{_ag1Id = a})

-- | OAuth 2.0 token for the current user.
ag1OAuthToken :: Lens' AccountsGet' (Maybe OAuthToken)
ag1OAuthToken
  = lens _ag1OAuthToken
      (\ s a -> s{_ag1OAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ag1Fields :: Lens' AccountsGet' (Maybe Text)
ag1Fields
  = lens _ag1Fields (\ s a -> s{_ag1Fields = a})

instance GoogleAuth AccountsGet' where
        authKey = ag1Key . _Just
        authToken = ag1OAuthToken . _Just

instance GoogleRequest AccountsGet' where
        type Rs AccountsGet' = Account
        request = requestWith dFAReportingRequest
        requestWith rq AccountsGet'{..}
          = go _ag1ProFileId _ag1Id _ag1QuotaUser
              (Just _ag1PrettyPrint)
              _ag1UserIP
              _ag1Fields
              _ag1Key
              _ag1OAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy AccountsGetResource) rq
