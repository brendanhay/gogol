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
-- Module      : Network.Google.Resource.AdSense.Accounts.Reports.Generate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generate an AdSense report based on the report request sent in the query
-- parameters. Returns the result as JSON; to retrieve output in CSV format
-- specify \"alt=csv\" as a query parameter.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.reports.generate@.
module Network.Google.Resource.AdSense.Accounts.Reports.Generate
    (
    -- * REST Resource
      AccountsReportsGenerateResource

    -- * Creating a Request
    , accountsReportsGenerate
    , AccountsReportsGenerate

    -- * Request Lenses
    , argDimension
    , argLocale
    , argEndDate
    , argStartDate
    , argAccountId
    , argMetric
    , argCurrency
    , argSort
    , argFilter
    , argStartIndex
    , argUseTimezoneReporting
    , argMaxResults
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.accounts.reports.generate@ method which the
-- 'AccountsReportsGenerate' request conforms to.
type AccountsReportsGenerateResource =
     "adsense" :>
       "v1.4" :>
         "accounts" :>
           Capture "accountId" Text :>
             "reports" :>
               QueryParam "startDate" Text :>
                 QueryParam "endDate" Text :>
                   QueryParams "dimension" Text :>
                     QueryParam "locale" Text :>
                       QueryParams "metric" Text :>
                         QueryParam "currency" Text :>
                           QueryParams "sort" Text :>
                             QueryParams "filter" Text :>
                               QueryParam "startIndex" (Textual Int32) :>
                                 QueryParam "useTimezoneReporting" Bool :>
                                   QueryParam "maxResults" (Textual Int32) :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON]
                                         AdsenseReportsGenerateResponse
       :<|>
       "adsense" :>
         "v1.4" :>
           "accounts" :>
             Capture "accountId" Text :>
               "reports" :>
                 QueryParam "startDate" Text :>
                   QueryParam "endDate" Text :>
                     QueryParams "dimension" Text :>
                       QueryParam "locale" Text :>
                         QueryParams "metric" Text :>
                           QueryParam "currency" Text :>
                             QueryParams "sort" Text :>
                               QueryParams "filter" Text :>
                                 QueryParam "startIndex" (Textual Int32) :>
                                   QueryParam "useTimezoneReporting" Bool :>
                                     QueryParam "maxResults" (Textual Int32) :>
                                       QueryParam "alt" AltMedia :>
                                         Get '[OctetStream] Stream

-- | Generate an AdSense report based on the report request sent in the query
-- parameters. Returns the result as JSON; to retrieve output in CSV format
-- specify \"alt=csv\" as a query parameter.
--
-- /See:/ 'accountsReportsGenerate' smart constructor.
data AccountsReportsGenerate = AccountsReportsGenerate
    { _argDimension            :: !(Maybe [Text])
    , _argLocale               :: !(Maybe Text)
    , _argEndDate              :: !Text
    , _argStartDate            :: !Text
    , _argAccountId            :: !Text
    , _argMetric               :: !(Maybe [Text])
    , _argCurrency             :: !(Maybe Text)
    , _argSort                 :: !(Maybe [Text])
    , _argFilter               :: !(Maybe [Text])
    , _argStartIndex           :: !(Maybe (Textual Int32))
    , _argUseTimezoneReporting :: !(Maybe Bool)
    , _argMaxResults           :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsReportsGenerate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
-- * 'argCurrency'
--
-- * 'argSort'
--
-- * 'argFilter'
--
-- * 'argStartIndex'
--
-- * 'argUseTimezoneReporting'
--
-- * 'argMaxResults'
accountsReportsGenerate
    :: Text -- ^ 'argEndDate'
    -> Text -- ^ 'argStartDate'
    -> Text -- ^ 'argAccountId'
    -> AccountsReportsGenerate
accountsReportsGenerate pArgEndDate_ pArgStartDate_ pArgAccountId_ =
    AccountsReportsGenerate
    { _argDimension = Nothing
    , _argLocale = Nothing
    , _argEndDate = pArgEndDate_
    , _argStartDate = pArgStartDate_
    , _argAccountId = pArgAccountId_
    , _argMetric = Nothing
    , _argCurrency = Nothing
    , _argSort = Nothing
    , _argFilter = Nothing
    , _argStartIndex = Nothing
    , _argUseTimezoneReporting = Nothing
    , _argMaxResults = Nothing
    }

-- | Dimensions to base the report on.
argDimension :: Lens' AccountsReportsGenerate [Text]
argDimension
  = lens _argDimension (\ s a -> s{_argDimension = a})
      . _Default
      . _Coerce

-- | Optional locale to use for translating report output to a local
-- language. Defaults to \"en_US\" if not specified.
argLocale :: Lens' AccountsReportsGenerate (Maybe Text)
argLocale
  = lens _argLocale (\ s a -> s{_argLocale = a})

-- | End of the date range to report on in \"YYYY-MM-DD\" format, inclusive.
argEndDate :: Lens' AccountsReportsGenerate Text
argEndDate
  = lens _argEndDate (\ s a -> s{_argEndDate = a})

-- | Start of the date range to report on in \"YYYY-MM-DD\" format,
-- inclusive.
argStartDate :: Lens' AccountsReportsGenerate Text
argStartDate
  = lens _argStartDate (\ s a -> s{_argStartDate = a})

-- | Account upon which to report.
argAccountId :: Lens' AccountsReportsGenerate Text
argAccountId
  = lens _argAccountId (\ s a -> s{_argAccountId = a})

-- | Numeric columns to include in the report.
argMetric :: Lens' AccountsReportsGenerate [Text]
argMetric
  = lens _argMetric (\ s a -> s{_argMetric = a}) .
      _Default
      . _Coerce

-- | Optional currency to use when reporting on monetary metrics. Defaults to
-- the account\'s currency if not set.
argCurrency :: Lens' AccountsReportsGenerate (Maybe Text)
argCurrency
  = lens _argCurrency (\ s a -> s{_argCurrency = a})

-- | The name of a dimension or metric to sort the resulting report on,
-- optionally prefixed with \"+\" to sort ascending or \"-\" to sort
-- descending. If no prefix is specified, the column is sorted ascending.
argSort :: Lens' AccountsReportsGenerate [Text]
argSort
  = lens _argSort (\ s a -> s{_argSort = a}) . _Default
      . _Coerce

-- | Filters to be run on the report.
argFilter :: Lens' AccountsReportsGenerate [Text]
argFilter
  = lens _argFilter (\ s a -> s{_argFilter = a}) .
      _Default
      . _Coerce

-- | Index of the first row of report data to return.
argStartIndex :: Lens' AccountsReportsGenerate (Maybe Int32)
argStartIndex
  = lens _argStartIndex
      (\ s a -> s{_argStartIndex = a})
      . mapping _Coerce

-- | Whether the report should be generated in the AdSense account\'s local
-- timezone. If false default PST\/PDT timezone will be used.
argUseTimezoneReporting :: Lens' AccountsReportsGenerate (Maybe Bool)
argUseTimezoneReporting
  = lens _argUseTimezoneReporting
      (\ s a -> s{_argUseTimezoneReporting = a})

-- | The maximum number of rows of report data to return.
argMaxResults :: Lens' AccountsReportsGenerate (Maybe Int32)
argMaxResults
  = lens _argMaxResults
      (\ s a -> s{_argMaxResults = a})
      . mapping _Coerce

instance GoogleRequest AccountsReportsGenerate where
        type Rs AccountsReportsGenerate =
             AdsenseReportsGenerateResponse
        requestClient AccountsReportsGenerate{..}
          = go _argAccountId (Just _argStartDate)
              (Just _argEndDate)
              (_argDimension ^. _Default)
              _argLocale
              (_argMetric ^. _Default)
              _argCurrency
              (_argSort ^. _Default)
              (_argFilter ^. _Default)
              _argStartIndex
              _argUseTimezoneReporting
              _argMaxResults
              (Just AltJSON)
              adSenseService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy AccountsReportsGenerateResource)
                      mempty

instance GoogleRequest
         (MediaDownload AccountsReportsGenerate) where
        type Rs (MediaDownload AccountsReportsGenerate) =
             Stream
        requestClient
          (MediaDownload AccountsReportsGenerate{..})
          = go _argAccountId (Just _argStartDate)
              (Just _argEndDate)
              (_argDimension ^. _Default)
              _argLocale
              (_argMetric ^. _Default)
              _argCurrency
              (_argSort ^. _Default)
              (_argFilter ^. _Default)
              _argStartIndex
              _argUseTimezoneReporting
              _argMaxResults
              (Just AltMedia)
              adSenseService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy AccountsReportsGenerateResource)
                      mempty
