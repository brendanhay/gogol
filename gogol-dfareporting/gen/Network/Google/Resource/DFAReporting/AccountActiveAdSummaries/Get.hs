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
-- Module      : Network.Google.Resource.DFAReporting.AccountActiveAdSummaries.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the account\'s active ad summary by account ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountActiveAdSummariesGet@.
module Network.Google.Resource.DFAReporting.AccountActiveAdSummaries.Get
    (
    -- * REST Resource
      AccountActiveAdSummariesGetResource

    -- * Creating a Request
    , accountActiveAdSummariesGet'
    , AccountActiveAdSummariesGet'

    -- * Request Lenses
    , aaasgQuotaUser
    , aaasgPrettyPrint
    , aaasgUserIP
    , aaasgProFileId
    , aaasgKey
    , aaasgSummaryAccountId
    , aaasgOAuthToken
    , aaasgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountActiveAdSummariesGet@ method which the
-- 'AccountActiveAdSummariesGet'' request conforms to.
type AccountActiveAdSummariesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountActiveAdSummaries" :>
           Capture "summaryAccountId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AccountActiveAdSummary

-- | Gets the account\'s active ad summary by account ID.
--
-- /See:/ 'accountActiveAdSummariesGet'' smart constructor.
data AccountActiveAdSummariesGet' = AccountActiveAdSummariesGet'
    { _aaasgQuotaUser        :: !(Maybe Text)
    , _aaasgPrettyPrint      :: !Bool
    , _aaasgUserIP           :: !(Maybe Text)
    , _aaasgProFileId        :: !Int64
    , _aaasgKey              :: !(Maybe AuthKey)
    , _aaasgSummaryAccountId :: !Int64
    , _aaasgOAuthToken       :: !(Maybe OAuthToken)
    , _aaasgFields           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountActiveAdSummariesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaasgQuotaUser'
--
-- * 'aaasgPrettyPrint'
--
-- * 'aaasgUserIP'
--
-- * 'aaasgProFileId'
--
-- * 'aaasgKey'
--
-- * 'aaasgSummaryAccountId'
--
-- * 'aaasgOAuthToken'
--
-- * 'aaasgFields'
accountActiveAdSummariesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'summaryAccountId'
    -> AccountActiveAdSummariesGet'
accountActiveAdSummariesGet' pAaasgProFileId_ pAaasgSummaryAccountId_ =
    AccountActiveAdSummariesGet'
    { _aaasgQuotaUser = Nothing
    , _aaasgPrettyPrint = True
    , _aaasgUserIP = Nothing
    , _aaasgProFileId = pAaasgProFileId_
    , _aaasgKey = Nothing
    , _aaasgSummaryAccountId = pAaasgSummaryAccountId_
    , _aaasgOAuthToken = Nothing
    , _aaasgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaasgQuotaUser :: Lens' AccountActiveAdSummariesGet' (Maybe Text)
aaasgQuotaUser
  = lens _aaasgQuotaUser
      (\ s a -> s{_aaasgQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaasgPrettyPrint :: Lens' AccountActiveAdSummariesGet' Bool
aaasgPrettyPrint
  = lens _aaasgPrettyPrint
      (\ s a -> s{_aaasgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaasgUserIP :: Lens' AccountActiveAdSummariesGet' (Maybe Text)
aaasgUserIP
  = lens _aaasgUserIP (\ s a -> s{_aaasgUserIP = a})

-- | User profile ID associated with this request.
aaasgProFileId :: Lens' AccountActiveAdSummariesGet' Int64
aaasgProFileId
  = lens _aaasgProFileId
      (\ s a -> s{_aaasgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaasgKey :: Lens' AccountActiveAdSummariesGet' (Maybe AuthKey)
aaasgKey = lens _aaasgKey (\ s a -> s{_aaasgKey = a})

-- | Account ID.
aaasgSummaryAccountId :: Lens' AccountActiveAdSummariesGet' Int64
aaasgSummaryAccountId
  = lens _aaasgSummaryAccountId
      (\ s a -> s{_aaasgSummaryAccountId = a})

-- | OAuth 2.0 token for the current user.
aaasgOAuthToken :: Lens' AccountActiveAdSummariesGet' (Maybe OAuthToken)
aaasgOAuthToken
  = lens _aaasgOAuthToken
      (\ s a -> s{_aaasgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aaasgFields :: Lens' AccountActiveAdSummariesGet' (Maybe Text)
aaasgFields
  = lens _aaasgFields (\ s a -> s{_aaasgFields = a})

instance GoogleAuth AccountActiveAdSummariesGet'
         where
        _AuthKey = aaasgKey . _Just
        _AuthToken = aaasgOAuthToken . _Just

instance GoogleRequest AccountActiveAdSummariesGet'
         where
        type Rs AccountActiveAdSummariesGet' =
             AccountActiveAdSummary
        request = requestWith dFAReportingRequest
        requestWith rq AccountActiveAdSummariesGet'{..}
          = go _aaasgProFileId _aaasgSummaryAccountId
              _aaasgQuotaUser
              (Just _aaasgPrettyPrint)
              _aaasgUserIP
              _aaasgFields
              _aaasgKey
              _aaasgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountActiveAdSummariesGetResource)
                      rq
