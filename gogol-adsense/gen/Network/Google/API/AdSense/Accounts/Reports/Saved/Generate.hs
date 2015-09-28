{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdSense.Accounts.Reports.Saved.Generate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Generate an AdSense report based on the saved report ID sent in the
-- query parameters.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.reports.saved.generate@.
module Network.Google.API.AdSense.Accounts.Reports.Saved.Generate
    (
    -- * REST Resource
      AccountsReportsSavedGenerateAPI

    -- * Creating a Request
    , accountsReportsSavedGenerate'
    , AccountsReportsSavedGenerate'

    -- * Request Lenses
    , arsgQuotaUser
    , arsgPrettyPrint
    , arsgUserIp
    , arsgLocale
    , arsgSavedReportId
    , arsgAccountId
    , arsgKey
    , arsgOauthToken
    , arsgStartIndex
    , arsgMaxResults
    , arsgFields
    , arsgAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for adsense.accounts.reports.saved.generate which the
-- 'AccountsReportsSavedGenerate'' request conforms to.
type AccountsReportsSavedGenerateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "reports" :>
           Capture "savedReportId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "locale" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "startIndex" Int32 :>
                           QueryParam "maxResults" Int32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] AdsenseReportsGenerateResponse

-- | Generate an AdSense report based on the saved report ID sent in the
-- query parameters.
--
-- /See:/ 'accountsReportsSavedGenerate'' smart constructor.
data AccountsReportsSavedGenerate' = AccountsReportsSavedGenerate'
    { _arsgQuotaUser     :: !(Maybe Text)
    , _arsgPrettyPrint   :: !Bool
    , _arsgUserIp        :: !(Maybe Text)
    , _arsgLocale        :: !(Maybe Text)
    , _arsgSavedReportId :: !Text
    , _arsgAccountId     :: !Text
    , _arsgKey           :: !(Maybe Text)
    , _arsgOauthToken    :: !(Maybe Text)
    , _arsgStartIndex    :: !(Maybe Int32)
    , _arsgMaxResults    :: !(Maybe Int32)
    , _arsgFields        :: !(Maybe Text)
    , _arsgAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsReportsSavedGenerate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arsgQuotaUser'
--
-- * 'arsgPrettyPrint'
--
-- * 'arsgUserIp'
--
-- * 'arsgLocale'
--
-- * 'arsgSavedReportId'
--
-- * 'arsgAccountId'
--
-- * 'arsgKey'
--
-- * 'arsgOauthToken'
--
-- * 'arsgStartIndex'
--
-- * 'arsgMaxResults'
--
-- * 'arsgFields'
--
-- * 'arsgAlt'
accountsReportsSavedGenerate'
    :: Text -- ^ 'savedReportId'
    -> Text -- ^ 'accountId'
    -> AccountsReportsSavedGenerate'
accountsReportsSavedGenerate' pArsgSavedReportId_ pArsgAccountId_ =
    AccountsReportsSavedGenerate'
    { _arsgQuotaUser = Nothing
    , _arsgPrettyPrint = True
    , _arsgUserIp = Nothing
    , _arsgLocale = Nothing
    , _arsgSavedReportId = pArsgSavedReportId_
    , _arsgAccountId = pArsgAccountId_
    , _arsgKey = Nothing
    , _arsgOauthToken = Nothing
    , _arsgStartIndex = Nothing
    , _arsgMaxResults = Nothing
    , _arsgFields = Nothing
    , _arsgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
arsgQuotaUser :: Lens' AccountsReportsSavedGenerate' (Maybe Text)
arsgQuotaUser
  = lens _arsgQuotaUser
      (\ s a -> s{_arsgQuotaUser = a})

-- | Returns response with indentations and line breaks.
arsgPrettyPrint :: Lens' AccountsReportsSavedGenerate' Bool
arsgPrettyPrint
  = lens _arsgPrettyPrint
      (\ s a -> s{_arsgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
arsgUserIp :: Lens' AccountsReportsSavedGenerate' (Maybe Text)
arsgUserIp
  = lens _arsgUserIp (\ s a -> s{_arsgUserIp = a})

-- | Optional locale to use for translating report output to a local
-- language. Defaults to \"en_US\" if not specified.
arsgLocale :: Lens' AccountsReportsSavedGenerate' (Maybe Text)
arsgLocale
  = lens _arsgLocale (\ s a -> s{_arsgLocale = a})

-- | The saved report to retrieve.
arsgSavedReportId :: Lens' AccountsReportsSavedGenerate' Text
arsgSavedReportId
  = lens _arsgSavedReportId
      (\ s a -> s{_arsgSavedReportId = a})

-- | Account to which the saved reports belong.
arsgAccountId :: Lens' AccountsReportsSavedGenerate' Text
arsgAccountId
  = lens _arsgAccountId
      (\ s a -> s{_arsgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
arsgKey :: Lens' AccountsReportsSavedGenerate' (Maybe Text)
arsgKey = lens _arsgKey (\ s a -> s{_arsgKey = a})

-- | OAuth 2.0 token for the current user.
arsgOauthToken :: Lens' AccountsReportsSavedGenerate' (Maybe Text)
arsgOauthToken
  = lens _arsgOauthToken
      (\ s a -> s{_arsgOauthToken = a})

-- | Index of the first row of report data to return.
arsgStartIndex :: Lens' AccountsReportsSavedGenerate' (Maybe Int32)
arsgStartIndex
  = lens _arsgStartIndex
      (\ s a -> s{_arsgStartIndex = a})

-- | The maximum number of rows of report data to return.
arsgMaxResults :: Lens' AccountsReportsSavedGenerate' (Maybe Int32)
arsgMaxResults
  = lens _arsgMaxResults
      (\ s a -> s{_arsgMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
arsgFields :: Lens' AccountsReportsSavedGenerate' (Maybe Text)
arsgFields
  = lens _arsgFields (\ s a -> s{_arsgFields = a})

-- | Data format for the response.
arsgAlt :: Lens' AccountsReportsSavedGenerate' Alt
arsgAlt = lens _arsgAlt (\ s a -> s{_arsgAlt = a})

instance GoogleRequest AccountsReportsSavedGenerate'
         where
        type Rs AccountsReportsSavedGenerate' =
             AdsenseReportsGenerateResponse
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u
          AccountsReportsSavedGenerate'{..}
          = go _arsgQuotaUser (Just _arsgPrettyPrint)
              _arsgUserIp
              _arsgLocale
              _arsgSavedReportId
              _arsgAccountId
              _arsgKey
              _arsgOauthToken
              _arsgStartIndex
              _arsgMaxResults
              _arsgFields
              (Just _arsgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsReportsSavedGenerateAPI)
                      r
                      u
