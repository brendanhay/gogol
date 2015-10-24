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
-- Module      : Network.Google.Resource.Analytics.Data.Mcf.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns Analytics Multi-Channel Funnels data for a view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.data.mcf.get@.
module Network.Google.Resource.Analytics.Data.Mcf.Get
    (
    -- * REST Resource
      DataMcfGetResource

    -- * Creating a Request
    , dataMcfGet
    , DataMcfGet

    -- * Request Lenses
    , dmgMetrics
    , dmgSamplingLevel
    , dmgFilters
    , dmgIds
    , dmgEndDate
    , dmgSort
    , dmgDimensions
    , dmgStartIndex
    , dmgMaxResults
    , dmgStartDate
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.data.mcf.get@ method which the
-- 'DataMcfGet' request conforms to.
type DataMcfGetResource =
     "analytics" :>
       "v3" :>
         "data" :>
           "mcf" :>
             QueryParam "ids" Text :>
               QueryParam "start-date" Text :>
                 QueryParam "end-date" Text :>
                   QueryParam "metrics" Text :>
                     QueryParam "samplingLevel" DataMcfGetSamplingLevel :>
                       QueryParam "filters" Text :>
                         QueryParam "sort" Text :>
                           QueryParam "dimensions" Text :>
                             QueryParam "start-index" (Textual Int32) :>
                               QueryParam "max-results" (Textual Int32) :>
                                 QueryParam "alt" AltJSON :> Get '[JSON] McfData

-- | Returns Analytics Multi-Channel Funnels data for a view (profile).
--
-- /See:/ 'dataMcfGet' smart constructor.
data DataMcfGet = DataMcfGet
    { _dmgMetrics       :: !Text
    , _dmgSamplingLevel :: !(Maybe DataMcfGetSamplingLevel)
    , _dmgFilters       :: !(Maybe Text)
    , _dmgIds           :: !Text
    , _dmgEndDate       :: !Text
    , _dmgSort          :: !(Maybe Text)
    , _dmgDimensions    :: !(Maybe Text)
    , _dmgStartIndex    :: !(Maybe (Textual Int32))
    , _dmgMaxResults    :: !(Maybe (Textual Int32))
    , _dmgStartDate     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataMcfGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmgMetrics'
--
-- * 'dmgSamplingLevel'
--
-- * 'dmgFilters'
--
-- * 'dmgIds'
--
-- * 'dmgEndDate'
--
-- * 'dmgSort'
--
-- * 'dmgDimensions'
--
-- * 'dmgStartIndex'
--
-- * 'dmgMaxResults'
--
-- * 'dmgStartDate'
dataMcfGet
    :: Text -- ^ 'dmgMetrics'
    -> Text -- ^ 'dmgIds'
    -> Text -- ^ 'dmgEndDate'
    -> Text -- ^ 'dmgStartDate'
    -> DataMcfGet
dataMcfGet pDmgMetrics_ pDmgIds_ pDmgEndDate_ pDmgStartDate_ =
    DataMcfGet
    { _dmgMetrics = pDmgMetrics_
    , _dmgSamplingLevel = Nothing
    , _dmgFilters = Nothing
    , _dmgIds = pDmgIds_
    , _dmgEndDate = pDmgEndDate_
    , _dmgSort = Nothing
    , _dmgDimensions = Nothing
    , _dmgStartIndex = Nothing
    , _dmgMaxResults = Nothing
    , _dmgStartDate = pDmgStartDate_
    }

-- | A comma-separated list of Multi-Channel Funnels metrics. E.g.,
-- \'mcf:totalConversions,mcf:totalConversionValue\'. At least one metric
-- must be specified.
dmgMetrics :: Lens' DataMcfGet Text
dmgMetrics
  = lens _dmgMetrics (\ s a -> s{_dmgMetrics = a})

-- | The desired sampling level.
dmgSamplingLevel :: Lens' DataMcfGet (Maybe DataMcfGetSamplingLevel)
dmgSamplingLevel
  = lens _dmgSamplingLevel
      (\ s a -> s{_dmgSamplingLevel = a})

-- | A comma-separated list of dimension or metric filters to be applied to
-- the Analytics data.
dmgFilters :: Lens' DataMcfGet (Maybe Text)
dmgFilters
  = lens _dmgFilters (\ s a -> s{_dmgFilters = a})

-- | Unique table ID for retrieving Analytics data. Table ID is of the form
-- ga:XXXX, where XXXX is the Analytics view (profile) ID.
dmgIds :: Lens' DataMcfGet Text
dmgIds = lens _dmgIds (\ s a -> s{_dmgIds = a})

-- | End date for fetching Analytics data. Requests can specify a start date
-- formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday,
-- or 7daysAgo). The default value is 7daysAgo.
dmgEndDate :: Lens' DataMcfGet Text
dmgEndDate
  = lens _dmgEndDate (\ s a -> s{_dmgEndDate = a})

-- | A comma-separated list of dimensions or metrics that determine the sort
-- order for the Analytics data.
dmgSort :: Lens' DataMcfGet (Maybe Text)
dmgSort = lens _dmgSort (\ s a -> s{_dmgSort = a})

-- | A comma-separated list of Multi-Channel Funnels dimensions. E.g.,
-- \'mcf:source,mcf:medium\'.
dmgDimensions :: Lens' DataMcfGet (Maybe Text)
dmgDimensions
  = lens _dmgDimensions
      (\ s a -> s{_dmgDimensions = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
dmgStartIndex :: Lens' DataMcfGet (Maybe Int32)
dmgStartIndex
  = lens _dmgStartIndex
      (\ s a -> s{_dmgStartIndex = a})
      . mapping _Coerce

-- | The maximum number of entries to include in this feed.
dmgMaxResults :: Lens' DataMcfGet (Maybe Int32)
dmgMaxResults
  = lens _dmgMaxResults
      (\ s a -> s{_dmgMaxResults = a})
      . mapping _Coerce

-- | Start date for fetching Analytics data. Requests can specify a start
-- date formatted as YYYY-MM-DD, or as a relative date (e.g., today,
-- yesterday, or 7daysAgo). The default value is 7daysAgo.
dmgStartDate :: Lens' DataMcfGet Text
dmgStartDate
  = lens _dmgStartDate (\ s a -> s{_dmgStartDate = a})

instance GoogleRequest DataMcfGet where
        type Rs DataMcfGet = McfData
        requestClient DataMcfGet{..}
          = go (Just _dmgIds) (Just _dmgStartDate)
              (Just _dmgEndDate)
              (Just _dmgMetrics)
              _dmgSamplingLevel
              _dmgFilters
              _dmgSort
              _dmgDimensions
              _dmgStartIndex
              _dmgMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient (Proxy :: Proxy DataMcfGetResource)
                      mempty
