{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Analytics.Data.Realtime.Get
    (
    -- * REST Resource
      DataRealtimeGetAPI

    -- * Creating a Request
    , dataRealtimeGet
    , DataRealtimeGet

    -- * Request Lenses
    , drgQuotaUser
    , drgMetrics
    , drgPrettyPrint
    , drgUserIp
    , drgFilters
    , drgIds
    , drgKey
    , drgSort
    , drgDimensions
    , drgOauthToken
    , drgMaxResults
    , drgFields
    , drgAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsDataRealtimeGet@ which the
-- 'DataRealtimeGet' request conforms to.
type DataRealtimeGetAPI =
     "data" :>
       "realtime" :>
         QueryParam "metrics" Text :>
           QueryParam "filters" Text :>
             QueryParam "ids" Text :>
               QueryParam "sort" Text :>
                 QueryParam "dimensions" Text :>
                   QueryParam "max-results" Int32 :>
                     Get '[JSON] RealtimeData

-- | Returns real time data for a view (profile).
--
-- /See:/ 'dataRealtimeGet' smart constructor.
data DataRealtimeGet = DataRealtimeGet
    { _drgQuotaUser   :: !(Maybe Text)
    , _drgMetrics     :: !Text
    , _drgPrettyPrint :: !Bool
    , _drgUserIp      :: !(Maybe Text)
    , _drgFilters     :: !(Maybe Text)
    , _drgIds         :: !Text
    , _drgKey         :: !(Maybe Text)
    , _drgSort        :: !(Maybe Text)
    , _drgDimensions  :: !(Maybe Text)
    , _drgOauthToken  :: !(Maybe Text)
    , _drgMaxResults  :: !(Maybe Int32)
    , _drgFields      :: !(Maybe Text)
    , _drgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataRealtimeGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drgQuotaUser'
--
-- * 'drgMetrics'
--
-- * 'drgPrettyPrint'
--
-- * 'drgUserIp'
--
-- * 'drgFilters'
--
-- * 'drgIds'
--
-- * 'drgKey'
--
-- * 'drgSort'
--
-- * 'drgDimensions'
--
-- * 'drgOauthToken'
--
-- * 'drgMaxResults'
--
-- * 'drgFields'
--
-- * 'drgAlt'
dataRealtimeGet
    :: Text -- ^ 'metrics'
    -> Text -- ^ 'ids'
    -> DataRealtimeGet
dataRealtimeGet pDrgMetrics_ pDrgIds_ =
    DataRealtimeGet
    { _drgQuotaUser = Nothing
    , _drgMetrics = pDrgMetrics_
    , _drgPrettyPrint = False
    , _drgUserIp = Nothing
    , _drgFilters = Nothing
    , _drgIds = pDrgIds_
    , _drgKey = Nothing
    , _drgSort = Nothing
    , _drgDimensions = Nothing
    , _drgOauthToken = Nothing
    , _drgMaxResults = Nothing
    , _drgFields = Nothing
    , _drgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
drgQuotaUser :: Lens' DataRealtimeGet' (Maybe Text)
drgQuotaUser
  = lens _drgQuotaUser (\ s a -> s{_drgQuotaUser = a})

-- | A comma-separated list of real time metrics. E.g., \'rt:activeUsers\'.
-- At least one metric must be specified.
drgMetrics :: Lens' DataRealtimeGet' Text
drgMetrics
  = lens _drgMetrics (\ s a -> s{_drgMetrics = a})

-- | Returns response with indentations and line breaks.
drgPrettyPrint :: Lens' DataRealtimeGet' Bool
drgPrettyPrint
  = lens _drgPrettyPrint
      (\ s a -> s{_drgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
drgUserIp :: Lens' DataRealtimeGet' (Maybe Text)
drgUserIp
  = lens _drgUserIp (\ s a -> s{_drgUserIp = a})

-- | A comma-separated list of dimension or metric filters to be applied to
-- real time data.
drgFilters :: Lens' DataRealtimeGet' (Maybe Text)
drgFilters
  = lens _drgFilters (\ s a -> s{_drgFilters = a})

-- | Unique table ID for retrieving real time data. Table ID is of the form
-- ga:XXXX, where XXXX is the Analytics view (profile) ID.
drgIds :: Lens' DataRealtimeGet' Text
drgIds = lens _drgIds (\ s a -> s{_drgIds = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
drgKey :: Lens' DataRealtimeGet' (Maybe Text)
drgKey = lens _drgKey (\ s a -> s{_drgKey = a})

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

-- | OAuth 2.0 token for the current user.
drgOauthToken :: Lens' DataRealtimeGet' (Maybe Text)
drgOauthToken
  = lens _drgOauthToken
      (\ s a -> s{_drgOauthToken = a})

-- | The maximum number of entries to include in this feed.
drgMaxResults :: Lens' DataRealtimeGet' (Maybe Int32)
drgMaxResults
  = lens _drgMaxResults
      (\ s a -> s{_drgMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
drgFields :: Lens' DataRealtimeGet' (Maybe Text)
drgFields
  = lens _drgFields (\ s a -> s{_drgFields = a})

-- | Data format for the response.
drgAlt :: Lens' DataRealtimeGet' Text
drgAlt = lens _drgAlt (\ s a -> s{_drgAlt = a})

instance GoogleRequest DataRealtimeGet' where
        type Rs DataRealtimeGet' = RealtimeData
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u DataRealtimeGet{..}
          = go _drgQuotaUser (Just _drgMetrics) _drgPrettyPrint
              _drgUserIp
              _drgFilters
              (Just _drgIds)
              _drgKey
              _drgSort
              _drgDimensions
              _drgOauthToken
              _drgMaxResults
              _drgFields
              _drgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy DataRealtimeGetAPI)
                      r
                      u
