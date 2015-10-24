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
-- Module      : Network.Google.Resource.AdSense.Reports.Generate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generate an AdSense report based on the report request sent in the query
-- parameters. Returns the result as JSON; to retrieve output in CSV format
-- specify \"alt=csv\" as a query parameter.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.reports.generate@.
module Network.Google.Resource.AdSense.Reports.Generate
    (
    -- * REST Resource
      ReportsGenerateResource

    -- * Creating a Request
    , reportsGenerate
    , ReportsGenerate

    -- * Request Lenses
    , rgDimension
    , rgLocale
    , rgEndDate
    , rgStartDate
    , rgAccountId
    , rgMetric
    , rgCurrency
    , rgSort
    , rgFilter
    , rgStartIndex
    , rgUseTimezoneReporting
    , rgMaxResults
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.reports.generate@ method which the
-- 'ReportsGenerate' request conforms to.
type ReportsGenerateResource =
     "adsense" :>
       "v1.4" :>
         "reports" :>
           QueryParam "startDate" Text :>
             QueryParam "endDate" Text :>
               QueryParams "dimension" Text :>
                 QueryParam "locale" Text :>
                   QueryParams "accountId" Text :>
                     QueryParams "metric" Text :>
                       QueryParam "currency" Text :>
                         QueryParams "sort" Text :>
                           QueryParams "filter" Text :>
                             QueryParam "startIndex" (Textual Int32) :>
                               QueryParam "useTimezoneReporting" Bool :>
                                 QueryParam "maxResults" (Textual Int32) :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] AdsenseReportsGenerateResponse
       :<|>
       "adsense" :>
         "v1.4" :>
           "reports" :>
             QueryParam "startDate" Text :>
               QueryParam "endDate" Text :>
                 QueryParams "dimension" Text :>
                   QueryParam "locale" Text :>
                     QueryParams "accountId" Text :>
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
-- /See:/ 'reportsGenerate' smart constructor.
data ReportsGenerate = ReportsGenerate
    { _rgDimension            :: !(Maybe [Text])
    , _rgLocale               :: !(Maybe Text)
    , _rgEndDate              :: !Text
    , _rgStartDate            :: !Text
    , _rgAccountId            :: !(Maybe [Text])
    , _rgMetric               :: !(Maybe [Text])
    , _rgCurrency             :: !(Maybe Text)
    , _rgSort                 :: !(Maybe [Text])
    , _rgFilter               :: !(Maybe [Text])
    , _rgStartIndex           :: !(Maybe (Textual Int32))
    , _rgUseTimezoneReporting :: !(Maybe Bool)
    , _rgMaxResults           :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsGenerate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgDimension'
--
-- * 'rgLocale'
--
-- * 'rgEndDate'
--
-- * 'rgStartDate'
--
-- * 'rgAccountId'
--
-- * 'rgMetric'
--
-- * 'rgCurrency'
--
-- * 'rgSort'
--
-- * 'rgFilter'
--
-- * 'rgStartIndex'
--
-- * 'rgUseTimezoneReporting'
--
-- * 'rgMaxResults'
reportsGenerate
    :: Text -- ^ 'rgEndDate'
    -> Text -- ^ 'rgStartDate'
    -> ReportsGenerate
reportsGenerate pRgEndDate_ pRgStartDate_ =
    ReportsGenerate
    { _rgDimension = Nothing
    , _rgLocale = Nothing
    , _rgEndDate = pRgEndDate_
    , _rgStartDate = pRgStartDate_
    , _rgAccountId = Nothing
    , _rgMetric = Nothing
    , _rgCurrency = Nothing
    , _rgSort = Nothing
    , _rgFilter = Nothing
    , _rgStartIndex = Nothing
    , _rgUseTimezoneReporting = Nothing
    , _rgMaxResults = Nothing
    }

-- | Dimensions to base the report on.
rgDimension :: Lens' ReportsGenerate [Text]
rgDimension
  = lens _rgDimension (\ s a -> s{_rgDimension = a}) .
      _Default
      . _Coerce

-- | Optional locale to use for translating report output to a local
-- language. Defaults to \"en_US\" if not specified.
rgLocale :: Lens' ReportsGenerate (Maybe Text)
rgLocale = lens _rgLocale (\ s a -> s{_rgLocale = a})

-- | End of the date range to report on in \"YYYY-MM-DD\" format, inclusive.
rgEndDate :: Lens' ReportsGenerate Text
rgEndDate
  = lens _rgEndDate (\ s a -> s{_rgEndDate = a})

-- | Start of the date range to report on in \"YYYY-MM-DD\" format,
-- inclusive.
rgStartDate :: Lens' ReportsGenerate Text
rgStartDate
  = lens _rgStartDate (\ s a -> s{_rgStartDate = a})

-- | Accounts upon which to report.
rgAccountId :: Lens' ReportsGenerate [Text]
rgAccountId
  = lens _rgAccountId (\ s a -> s{_rgAccountId = a}) .
      _Default
      . _Coerce

-- | Numeric columns to include in the report.
rgMetric :: Lens' ReportsGenerate [Text]
rgMetric
  = lens _rgMetric (\ s a -> s{_rgMetric = a}) .
      _Default
      . _Coerce

-- | Optional currency to use when reporting on monetary metrics. Defaults to
-- the account\'s currency if not set.
rgCurrency :: Lens' ReportsGenerate (Maybe Text)
rgCurrency
  = lens _rgCurrency (\ s a -> s{_rgCurrency = a})

-- | The name of a dimension or metric to sort the resulting report on,
-- optionally prefixed with \"+\" to sort ascending or \"-\" to sort
-- descending. If no prefix is specified, the column is sorted ascending.
rgSort :: Lens' ReportsGenerate [Text]
rgSort
  = lens _rgSort (\ s a -> s{_rgSort = a}) . _Default .
      _Coerce

-- | Filters to be run on the report.
rgFilter :: Lens' ReportsGenerate [Text]
rgFilter
  = lens _rgFilter (\ s a -> s{_rgFilter = a}) .
      _Default
      . _Coerce

-- | Index of the first row of report data to return.
rgStartIndex :: Lens' ReportsGenerate (Maybe Int32)
rgStartIndex
  = lens _rgStartIndex (\ s a -> s{_rgStartIndex = a})
      . mapping _Coerce

-- | Whether the report should be generated in the AdSense account\'s local
-- timezone. If false default PST\/PDT timezone will be used.
rgUseTimezoneReporting :: Lens' ReportsGenerate (Maybe Bool)
rgUseTimezoneReporting
  = lens _rgUseTimezoneReporting
      (\ s a -> s{_rgUseTimezoneReporting = a})

-- | The maximum number of rows of report data to return.
rgMaxResults :: Lens' ReportsGenerate (Maybe Int32)
rgMaxResults
  = lens _rgMaxResults (\ s a -> s{_rgMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ReportsGenerate where
        type Rs ReportsGenerate =
             AdsenseReportsGenerateResponse
        requestClient ReportsGenerate{..}
          = go (Just _rgStartDate) (Just _rgEndDate)
              (_rgDimension ^. _Default)
              _rgLocale
              (_rgAccountId ^. _Default)
              (_rgMetric ^. _Default)
              _rgCurrency
              (_rgSort ^. _Default)
              (_rgFilter ^. _Default)
              _rgStartIndex
              _rgUseTimezoneReporting
              _rgMaxResults
              (Just AltJSON)
              adSenseService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy ReportsGenerateResource)
                      mempty

instance GoogleRequest
         (MediaDownload ReportsGenerate) where
        type Rs (MediaDownload ReportsGenerate) = Stream
        requestClient (MediaDownload ReportsGenerate{..})
          = go (Just _rgStartDate) (Just _rgEndDate)
              (_rgDimension ^. _Default)
              _rgLocale
              (_rgAccountId ^. _Default)
              (_rgMetric ^. _Default)
              _rgCurrency
              (_rgSort ^. _Default)
              (_rgFilter ^. _Default)
              _rgStartIndex
              _rgUseTimezoneReporting
              _rgMaxResults
              (Just AltMedia)
              adSenseService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy ReportsGenerateResource)
                      mempty
