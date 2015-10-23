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
-- Module      : Network.Google.Resource.Analytics.Data.Ga.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns Analytics data for a view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.data.ga.get@.
module Network.Google.Resource.Analytics.Data.Ga.Get
    (
    -- * REST Resource
      DataGaGetResource

    -- * Creating a Request
    , dataGaGet
    , DataGaGet

    -- * Request Lenses
    , dggMetrics
    , dggSamplingLevel
    , dggFilters
    , dggIds
    , dggEndDate
    , dggOutput
    , dggSort
    , dggDimensions
    , dggStartIndex
    , dggMaxResults
    , dggSegment
    , dggStartDate
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.data.ga.get@ method which the
-- 'DataGaGet' request conforms to.
type DataGaGetResource =
     "analytics" :>
       "v3" :>
         "data" :>
           "ga" :>
             QueryParam "ids" Text :>
               QueryParam "start-date" Text :>
                 QueryParam "end-date" Text :>
                   QueryParam "metrics" Text :>
                     QueryParam "samplingLevel" DataGaGetSamplingLevel :>
                       QueryParam "filters" Text :>
                         QueryParam "output" DataGaGetOutput :>
                           QueryParam "sort" Text :>
                             QueryParam "dimensions" Text :>
                               QueryParam "start-index" (JSONText Int32) :>
                                 QueryParam "max-results" (JSONText Int32) :>
                                   QueryParam "segment" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] GaData

-- | Returns Analytics data for a view (profile).
--
-- /See:/ 'dataGaGet' smart constructor.
data DataGaGet = DataGaGet
    { _dggMetrics       :: !Text
    , _dggSamplingLevel :: !(Maybe DataGaGetSamplingLevel)
    , _dggFilters       :: !(Maybe Text)
    , _dggIds           :: !Text
    , _dggEndDate       :: !Text
    , _dggOutput        :: !(Maybe DataGaGetOutput)
    , _dggSort          :: !(Maybe Text)
    , _dggDimensions    :: !(Maybe Text)
    , _dggStartIndex    :: !(Maybe (JSONText Int32))
    , _dggMaxResults    :: !(Maybe (JSONText Int32))
    , _dggSegment       :: !(Maybe Text)
    , _dggStartDate     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataGaGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dggMetrics'
--
-- * 'dggSamplingLevel'
--
-- * 'dggFilters'
--
-- * 'dggIds'
--
-- * 'dggEndDate'
--
-- * 'dggOutput'
--
-- * 'dggSort'
--
-- * 'dggDimensions'
--
-- * 'dggStartIndex'
--
-- * 'dggMaxResults'
--
-- * 'dggSegment'
--
-- * 'dggStartDate'
dataGaGet
    :: Text -- ^ 'dggMetrics'
    -> Text -- ^ 'dggIds'
    -> Text -- ^ 'dggEndDate'
    -> Text -- ^ 'dggStartDate'
    -> DataGaGet
dataGaGet pDggMetrics_ pDggIds_ pDggEndDate_ pDggStartDate_ =
    DataGaGet
    { _dggMetrics = pDggMetrics_
    , _dggSamplingLevel = Nothing
    , _dggFilters = Nothing
    , _dggIds = pDggIds_
    , _dggEndDate = pDggEndDate_
    , _dggOutput = Nothing
    , _dggSort = Nothing
    , _dggDimensions = Nothing
    , _dggStartIndex = Nothing
    , _dggMaxResults = Nothing
    , _dggSegment = Nothing
    , _dggStartDate = pDggStartDate_
    }

-- | A comma-separated list of Analytics metrics. E.g.,
-- \'ga:sessions,ga:pageviews\'. At least one metric must be specified.
dggMetrics :: Lens' DataGaGet Text
dggMetrics
  = lens _dggMetrics (\ s a -> s{_dggMetrics = a})

-- | The desired sampling level.
dggSamplingLevel :: Lens' DataGaGet (Maybe DataGaGetSamplingLevel)
dggSamplingLevel
  = lens _dggSamplingLevel
      (\ s a -> s{_dggSamplingLevel = a})

-- | A comma-separated list of dimension or metric filters to be applied to
-- Analytics data.
dggFilters :: Lens' DataGaGet (Maybe Text)
dggFilters
  = lens _dggFilters (\ s a -> s{_dggFilters = a})

-- | Unique table ID for retrieving Analytics data. Table ID is of the form
-- ga:XXXX, where XXXX is the Analytics view (profile) ID.
dggIds :: Lens' DataGaGet Text
dggIds = lens _dggIds (\ s a -> s{_dggIds = a})

-- | End date for fetching Analytics data. Request can should specify an end
-- date formatted as YYYY-MM-DD, or as a relative date (e.g., today,
-- yesterday, or 7daysAgo). The default value is yesterday.
dggEndDate :: Lens' DataGaGet Text
dggEndDate
  = lens _dggEndDate (\ s a -> s{_dggEndDate = a})

-- | The selected format for the response. Default format is JSON.
dggOutput :: Lens' DataGaGet (Maybe DataGaGetOutput)
dggOutput
  = lens _dggOutput (\ s a -> s{_dggOutput = a})

-- | A comma-separated list of dimensions or metrics that determine the sort
-- order for Analytics data.
dggSort :: Lens' DataGaGet (Maybe Text)
dggSort = lens _dggSort (\ s a -> s{_dggSort = a})

-- | A comma-separated list of Analytics dimensions. E.g.,
-- \'ga:browser,ga:city\'.
dggDimensions :: Lens' DataGaGet (Maybe Text)
dggDimensions
  = lens _dggDimensions
      (\ s a -> s{_dggDimensions = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
dggStartIndex :: Lens' DataGaGet (Maybe Int32)
dggStartIndex
  = lens _dggStartIndex
      (\ s a -> s{_dggStartIndex = a})
      . mapping _Coerce

-- | The maximum number of entries to include in this feed.
dggMaxResults :: Lens' DataGaGet (Maybe Int32)
dggMaxResults
  = lens _dggMaxResults
      (\ s a -> s{_dggMaxResults = a})
      . mapping _Coerce

-- | An Analytics segment to be applied to data.
dggSegment :: Lens' DataGaGet (Maybe Text)
dggSegment
  = lens _dggSegment (\ s a -> s{_dggSegment = a})

-- | Start date for fetching Analytics data. Requests can specify a start
-- date formatted as YYYY-MM-DD, or as a relative date (e.g., today,
-- yesterday, or 7daysAgo). The default value is 7daysAgo.
dggStartDate :: Lens' DataGaGet Text
dggStartDate
  = lens _dggStartDate (\ s a -> s{_dggStartDate = a})

instance GoogleRequest DataGaGet where
        type Rs DataGaGet = GaData
        requestClient DataGaGet{..}
          = go (Just _dggIds) (Just _dggStartDate)
              (Just _dggEndDate)
              (Just _dggMetrics)
              _dggSamplingLevel
              _dggFilters
              _dggOutput
              _dggSort
              _dggDimensions
              _dggStartIndex
              _dggMaxResults
              _dggSegment
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient (Proxy :: Proxy DataGaGetResource)
                      mempty
