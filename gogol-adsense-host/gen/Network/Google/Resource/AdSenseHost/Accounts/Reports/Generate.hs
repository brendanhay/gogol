{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.Reports.Generate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Generate an AdSense report based on the report request sent in the query
-- parameters. Returns the result as JSON; to retrieve output in CSV format
-- specify \"alt=csv\" as a query parameter.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsReportsGenerate@.
module Network.Google.Resource.AdSenseHost.Accounts.Reports.Generate
    (
    -- * REST Resource
      AccountsReportsGenerateResource

    -- * Creating a Request
    , accountsReportsGenerate'
    , AccountsReportsGenerate'

    -- * Request Lenses
    , argQuotaUser
    , argPrettyPrint
    , argUserIP
    , argDimension
    , argLocale
    , argEndDate
    , argStartDate
    , argAccountId
    , argMetric
    , argKey
    , argSort
    , argFilter
    , argOAuthToken
    , argStartIndex
    , argMaxResults
    , argFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsReportsGenerate@ which the
-- 'AccountsReportsGenerate'' request conforms to.
type AccountsReportsGenerateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "reports" :>
           QueryParam "startDate" Text :>
             QueryParam "endDate" Text :>
               QueryParams "dimension" Text :>
                 QueryParam "locale" Text :>
                   QueryParams "metric" Text :>
                     QueryParams "sort" Text :>
                       QueryParams "filter" Text :>
                         QueryParam "startIndex" Word32 :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "userIp" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" Key :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] Report

-- | Generate an AdSense report based on the report request sent in the query
-- parameters. Returns the result as JSON; to retrieve output in CSV format
-- specify \"alt=csv\" as a query parameter.
--
-- /See:/ 'accountsReportsGenerate'' smart constructor.
data AccountsReportsGenerate' = AccountsReportsGenerate'
    { _argQuotaUser   :: !(Maybe Text)
    , _argPrettyPrint :: !Bool
    , _argUserIP      :: !(Maybe Text)
    , _argDimension   :: !(Maybe [Text])
    , _argLocale      :: !(Maybe Text)
    , _argEndDate     :: !Text
    , _argStartDate   :: !Text
    , _argAccountId   :: !Text
    , _argMetric      :: !(Maybe [Text])
    , _argKey         :: !(Maybe Key)
    , _argSort        :: !(Maybe [Text])
    , _argFilter      :: !(Maybe [Text])
    , _argOAuthToken  :: !(Maybe OAuthToken)
    , _argStartIndex  :: !(Maybe Word32)
    , _argMaxResults  :: !(Maybe Word32)
    , _argFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsReportsGenerate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'argQuotaUser'
--
-- * 'argPrettyPrint'
--
-- * 'argUserIP'
--
-- * 'argDimension'
--
-- * 'argLocale'
--
-- * 'argEndDate'
--
-- * 'argStartDate'
--
-- * 'argAccountId'
--
-- * 'argMetric'
--
-- * 'argKey'
--
-- * 'argSort'
--
-- * 'argFilter'
--
-- * 'argOAuthToken'
--
-- * 'argStartIndex'
--
-- * 'argMaxResults'
--
-- * 'argFields'
accountsReportsGenerate'
    :: Text -- ^ 'endDate'
    -> Text -- ^ 'startDate'
    -> Text -- ^ 'accountId'
    -> AccountsReportsGenerate'
accountsReportsGenerate' pArgEndDate_ pArgStartDate_ pArgAccountId_ =
    AccountsReportsGenerate'
    { _argQuotaUser = Nothing
    , _argPrettyPrint = True
    , _argUserIP = Nothing
    , _argDimension = Nothing
    , _argLocale = Nothing
    , _argEndDate = pArgEndDate_
    , _argStartDate = pArgStartDate_
    , _argAccountId = pArgAccountId_
    , _argMetric = Nothing
    , _argKey = Nothing
    , _argSort = Nothing
    , _argFilter = Nothing
    , _argOAuthToken = Nothing
    , _argStartIndex = Nothing
    , _argMaxResults = Nothing
    , _argFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
argQuotaUser :: Lens' AccountsReportsGenerate' (Maybe Text)
argQuotaUser
  = lens _argQuotaUser (\ s a -> s{_argQuotaUser = a})

-- | Returns response with indentations and line breaks.
argPrettyPrint :: Lens' AccountsReportsGenerate' Bool
argPrettyPrint
  = lens _argPrettyPrint
      (\ s a -> s{_argPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
argUserIP :: Lens' AccountsReportsGenerate' (Maybe Text)
argUserIP
  = lens _argUserIP (\ s a -> s{_argUserIP = a})

-- | Dimensions to base the report on.
argDimension :: Lens' AccountsReportsGenerate' [Text]
argDimension
  = lens _argDimension (\ s a -> s{_argDimension = a})
      . _Default
      . _Coerce

-- | Optional locale to use for translating report output to a local
-- language. Defaults to \"en_US\" if not specified.
argLocale :: Lens' AccountsReportsGenerate' (Maybe Text)
argLocale
  = lens _argLocale (\ s a -> s{_argLocale = a})

-- | End of the date range to report on in \"YYYY-MM-DD\" format, inclusive.
argEndDate :: Lens' AccountsReportsGenerate' Text
argEndDate
  = lens _argEndDate (\ s a -> s{_argEndDate = a})

-- | Start of the date range to report on in \"YYYY-MM-DD\" format,
-- inclusive.
argStartDate :: Lens' AccountsReportsGenerate' Text
argStartDate
  = lens _argStartDate (\ s a -> s{_argStartDate = a})

-- | Hosted account upon which to report.
argAccountId :: Lens' AccountsReportsGenerate' Text
argAccountId
  = lens _argAccountId (\ s a -> s{_argAccountId = a})

-- | Numeric columns to include in the report.
argMetric :: Lens' AccountsReportsGenerate' [Text]
argMetric
  = lens _argMetric (\ s a -> s{_argMetric = a}) .
      _Default
      . _Coerce

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
argKey :: Lens' AccountsReportsGenerate' (Maybe Key)
argKey = lens _argKey (\ s a -> s{_argKey = a})

-- | The name of a dimension or metric to sort the resulting report on,
-- optionally prefixed with \"+\" to sort ascending or \"-\" to sort
-- descending. If no prefix is specified, the column is sorted ascending.
argSort :: Lens' AccountsReportsGenerate' [Text]
argSort
  = lens _argSort (\ s a -> s{_argSort = a}) . _Default
      . _Coerce

-- | Filters to be run on the report.
argFilter :: Lens' AccountsReportsGenerate' [Text]
argFilter
  = lens _argFilter (\ s a -> s{_argFilter = a}) .
      _Default
      . _Coerce

-- | OAuth 2.0 token for the current user.
argOAuthToken :: Lens' AccountsReportsGenerate' (Maybe OAuthToken)
argOAuthToken
  = lens _argOAuthToken
      (\ s a -> s{_argOAuthToken = a})

-- | Index of the first row of report data to return.
argStartIndex :: Lens' AccountsReportsGenerate' (Maybe Word32)
argStartIndex
  = lens _argStartIndex
      (\ s a -> s{_argStartIndex = a})

-- | The maximum number of rows of report data to return.
argMaxResults :: Lens' AccountsReportsGenerate' (Maybe Word32)
argMaxResults
  = lens _argMaxResults
      (\ s a -> s{_argMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
argFields :: Lens' AccountsReportsGenerate' (Maybe Text)
argFields
  = lens _argFields (\ s a -> s{_argFields = a})

instance GoogleAuth AccountsReportsGenerate' where
        authKey = argKey . _Just
        authToken = argOAuthToken . _Just

instance GoogleRequest AccountsReportsGenerate' where
        type Rs AccountsReportsGenerate' = Report
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AccountsReportsGenerate'{..}
          = go _argAccountId (Just _argStartDate)
              (Just _argEndDate)
              (_argDimension ^. _Default)
              _argLocale
              (_argMetric ^. _Default)
              (_argSort ^. _Default)
              (_argFilter ^. _Default)
              _argStartIndex
              _argMaxResults
              _argQuotaUser
              (Just _argPrettyPrint)
              _argUserIP
              _argFields
              _argKey
              _argOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsReportsGenerateResource)
                      r
                      u
