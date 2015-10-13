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
-- Module      : Network.Google.Resource.Analytics.Data.Realtime.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns real time data for a view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsDataRealtimeGet@.
module Network.Google.Resource.Analytics.Data.Realtime.Get
    (
    -- * REST Resource
      DataRealtimeGetResource

    -- * Creating a Request
    , dataRealtimeGet'
    , DataRealtimeGet'

    -- * Request Lenses
    , drgMetrics
    , drgFilters
    , drgIds
    , drgSort
    , drgDimensions
    , drgMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsDataRealtimeGet@ method which the
-- 'DataRealtimeGet'' request conforms to.
type DataRealtimeGetResource =
     "data" :>
       "realtime" :>
         QueryParam "ids" Text :>
           QueryParam "metrics" Text :>
             QueryParam "filters" Text :>
               QueryParam "sort" Text :>
                 QueryParam "dimensions" Text :>
                   QueryParam "max-results" Int32 :>
                     QueryParam "alt" AltJSON :> Get '[JSON] RealtimeData

-- | Returns real time data for a view (profile).
--
-- /See:/ 'dataRealtimeGet'' smart constructor.
data DataRealtimeGet' = DataRealtimeGet'
    { _drgMetrics    :: !Text
    , _drgFilters    :: !(Maybe Text)
    , _drgIds        :: !Text
    , _drgSort       :: !(Maybe Text)
    , _drgDimensions :: !(Maybe Text)
    , _drgMaxResults :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataRealtimeGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drgMetrics'
--
-- * 'drgFilters'
--
-- * 'drgIds'
--
-- * 'drgSort'
--
-- * 'drgDimensions'
--
-- * 'drgMaxResults'
dataRealtimeGet'
    :: Text -- ^ 'metrics'
    -> Text -- ^ 'ids'
    -> DataRealtimeGet'
dataRealtimeGet' pDrgMetrics_ pDrgIds_ =
    DataRealtimeGet'
    { _drgMetrics = pDrgMetrics_
    , _drgFilters = Nothing
    , _drgIds = pDrgIds_
    , _drgSort = Nothing
    , _drgDimensions = Nothing
    , _drgMaxResults = Nothing
    }

-- | A comma-separated list of real time metrics. E.g., \'rt:activeUsers\'.
-- At least one metric must be specified.
drgMetrics :: Lens' DataRealtimeGet' Text
drgMetrics
  = lens _drgMetrics (\ s a -> s{_drgMetrics = a})

-- | A comma-separated list of dimension or metric filters to be applied to
-- real time data.
drgFilters :: Lens' DataRealtimeGet' (Maybe Text)
drgFilters
  = lens _drgFilters (\ s a -> s{_drgFilters = a})

-- | Unique table ID for retrieving real time data. Table ID is of the form
-- ga:XXXX, where XXXX is the Analytics view (profile) ID.
drgIds :: Lens' DataRealtimeGet' Text
drgIds = lens _drgIds (\ s a -> s{_drgIds = a})

-- | A comma-separated list of dimensions or metrics that determine the sort
-- order for real time data.
drgSort :: Lens' DataRealtimeGet' (Maybe Text)
drgSort = lens _drgSort (\ s a -> s{_drgSort = a})

-- | A comma-separated list of real time dimensions. E.g.,
-- \'rt:medium,rt:city\'.
drgDimensions :: Lens' DataRealtimeGet' (Maybe Text)
drgDimensions
  = lens _drgDimensions
      (\ s a -> s{_drgDimensions = a})

-- | The maximum number of entries to include in this feed.
drgMaxResults :: Lens' DataRealtimeGet' (Maybe Int32)
drgMaxResults
  = lens _drgMaxResults
      (\ s a -> s{_drgMaxResults = a})

instance GoogleRequest DataRealtimeGet' where
        type Rs DataRealtimeGet' = RealtimeData
        requestClient DataRealtimeGet'{..}
          = go (Just _drgIds) (Just _drgMetrics) _drgFilters
              _drgSort
              _drgDimensions
              _drgMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy DataRealtimeGetResource)
                      mempty
