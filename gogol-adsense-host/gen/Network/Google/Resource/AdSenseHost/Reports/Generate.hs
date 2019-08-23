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
-- Module      : Network.Google.Resource.AdSenseHost.Reports.Generate
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
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.reports.generate@.
module Network.Google.Resource.AdSenseHost.Reports.Generate
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
    , rgMetric
    , rgSort
    , rgFilter
    , rgStartIndex
    , rgMaxResults
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @adsensehost.reports.generate@ method which the
-- 'ReportsGenerate' request conforms to.
type ReportsGenerateResource =
     "adsensehost" :>
       "v4.1" :>
         "reports" :>
           QueryParam "startDate" Text :>
             QueryParam "endDate" Text :>
               QueryParams "dimension" Text :>
                 QueryParam "locale" Text :>
                   QueryParams "metric" Text :>
                     QueryParams "sort" Text :>
                       QueryParams "filter" Text :>
                         QueryParam "startIndex" (Textual Word32) :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Report

-- | Generate an AdSense report based on the report request sent in the query
-- parameters. Returns the result as JSON; to retrieve output in CSV format
-- specify \"alt=csv\" as a query parameter.
--
-- /See:/ 'reportsGenerate' smart constructor.
data ReportsGenerate =
  ReportsGenerate'
    { _rgDimension  :: !(Maybe [Text])
    , _rgLocale     :: !(Maybe Text)
    , _rgEndDate    :: !Text
    , _rgStartDate  :: !Text
    , _rgMetric     :: !(Maybe [Text])
    , _rgSort       :: !(Maybe [Text])
    , _rgFilter     :: !(Maybe [Text])
    , _rgStartIndex :: !(Maybe (Textual Word32))
    , _rgMaxResults :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'rgMetric'
--
-- * 'rgSort'
--
-- * 'rgFilter'
--
-- * 'rgStartIndex'
--
-- * 'rgMaxResults'
reportsGenerate
    :: Text -- ^ 'rgEndDate'
    -> Text -- ^ 'rgStartDate'
    -> ReportsGenerate
reportsGenerate pRgEndDate_ pRgStartDate_ =
  ReportsGenerate'
    { _rgDimension = Nothing
    , _rgLocale = Nothing
    , _rgEndDate = pRgEndDate_
    , _rgStartDate = pRgStartDate_
    , _rgMetric = Nothing
    , _rgSort = Nothing
    , _rgFilter = Nothing
    , _rgStartIndex = Nothing
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

-- | Numeric columns to include in the report.
rgMetric :: Lens' ReportsGenerate [Text]
rgMetric
  = lens _rgMetric (\ s a -> s{_rgMetric = a}) .
      _Default
      . _Coerce

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
rgStartIndex :: Lens' ReportsGenerate (Maybe Word32)
rgStartIndex
  = lens _rgStartIndex (\ s a -> s{_rgStartIndex = a})
      . mapping _Coerce

-- | The maximum number of rows of report data to return.
rgMaxResults :: Lens' ReportsGenerate (Maybe Word32)
rgMaxResults
  = lens _rgMaxResults (\ s a -> s{_rgMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ReportsGenerate where
        type Rs ReportsGenerate = Report
        type Scopes ReportsGenerate =
             '["https://www.googleapis.com/auth/adsensehost"]
        requestClient ReportsGenerate'{..}
          = go (Just _rgStartDate) (Just _rgEndDate)
              (_rgDimension ^. _Default)
              _rgLocale
              (_rgMetric ^. _Default)
              (_rgSort ^. _Default)
              (_rgFilter ^. _Default)
              _rgStartIndex
              _rgMaxResults
              (Just AltJSON)
              adSenseHostService
          where go
                  = buildClient
                      (Proxy :: Proxy ReportsGenerateResource)
                      mempty
