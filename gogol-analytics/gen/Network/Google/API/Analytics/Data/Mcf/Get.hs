{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Data.Mcf.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns Analytics Multi-Channel Funnels data for a view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.data.mcf.get@.
module Network.Google.API.Analytics.Data.Mcf.Get
    (
    -- * REST Resource
      DataMcfGetAPI

    -- * Creating a Request
    , dataMcfGet'
    , DataMcfGet'

    -- * Request Lenses
    , dmgQuotaUser
    , dmgMetrics
    , dmgPrettyPrint
    , dmgSamplingLevel
    , dmgUserIp
    , dmgFilters
    , dmgIds
    , dmgEndDate
    , dmgKey
    , dmgSort
    , dmgDimensions
    , dmgOauthToken
    , dmgStartIndex
    , dmgMaxResults
    , dmgStartDate
    , dmgFields
    , dmgAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.data.mcf.get which the
-- 'DataMcfGet'' request conforms to.
type DataMcfGetAPI =
     "data" :>
       "mcf" :>
         QueryParam "quotaUser" Text :>
           QueryParam "metrics" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "samplingLevel" DataMcfGet'SamplingLevel
                 :>
                 QueryParam "userIp" Text :>
                   QueryParam "filters" Text :>
                     QueryParam "ids" Text :>
                       QueryParam "end-date" Text :>
                         QueryParam "key" Text :>
                           QueryParam "sort" Text :>
                             QueryParam "dimensions" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "start-index" Nat :>
                                   QueryParam "max-results" Int32 :>
                                     QueryParam "start-date" Text :>
                                       QueryParam "fields" Text :>
                                         QueryParam "alt" Alt :>
                                           Get '[JSON] McfData

-- | Returns Analytics Multi-Channel Funnels data for a view (profile).
--
-- /See:/ 'dataMcfGet'' smart constructor.
data DataMcfGet' = DataMcfGet'
    { _dmgQuotaUser     :: !(Maybe Text)
    , _dmgMetrics       :: !Text
    , _dmgPrettyPrint   :: !Bool
    , _dmgSamplingLevel :: !(Maybe DataMcfGet'SamplingLevel)
    , _dmgUserIp        :: !(Maybe Text)
    , _dmgFilters       :: !(Maybe Text)
    , _dmgIds           :: !Text
    , _dmgEndDate       :: !Text
    , _dmgKey           :: !(Maybe Text)
    , _dmgSort          :: !(Maybe Text)
    , _dmgDimensions    :: !(Maybe Text)
    , _dmgOauthToken    :: !(Maybe Text)
    , _dmgStartIndex    :: !(Maybe Nat)
    , _dmgMaxResults    :: !(Maybe Int32)
    , _dmgStartDate     :: !Text
    , _dmgFields        :: !(Maybe Text)
    , _dmgAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataMcfGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmgQuotaUser'
--
-- * 'dmgMetrics'
--
-- * 'dmgPrettyPrint'
--
-- * 'dmgSamplingLevel'
--
-- * 'dmgUserIp'
--
-- * 'dmgFilters'
--
-- * 'dmgIds'
--
-- * 'dmgEndDate'
--
-- * 'dmgKey'
--
-- * 'dmgSort'
--
-- * 'dmgDimensions'
--
-- * 'dmgOauthToken'
--
-- * 'dmgStartIndex'
--
-- * 'dmgMaxResults'
--
-- * 'dmgStartDate'
--
-- * 'dmgFields'
--
-- * 'dmgAlt'
dataMcfGet'
    :: Text -- ^ 'metrics'
    -> Text -- ^ 'ids'
    -> Text -- ^ 'end-date'
    -> Text -- ^ 'start-date'
    -> DataMcfGet'
dataMcfGet' pDmgMetrics_ pDmgIds_ pDmgEndDate_ pDmgStartDate_ =
    DataMcfGet'
    { _dmgQuotaUser = Nothing
    , _dmgMetrics = pDmgMetrics_
    , _dmgPrettyPrint = False
    , _dmgSamplingLevel = Nothing
    , _dmgUserIp = Nothing
    , _dmgFilters = Nothing
    , _dmgIds = pDmgIds_
    , _dmgEndDate = pDmgEndDate_
    , _dmgKey = Nothing
    , _dmgSort = Nothing
    , _dmgDimensions = Nothing
    , _dmgOauthToken = Nothing
    , _dmgStartIndex = Nothing
    , _dmgMaxResults = Nothing
    , _dmgStartDate = pDmgStartDate_
    , _dmgFields = Nothing
    , _dmgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dmgQuotaUser :: Lens' DataMcfGet' (Maybe Text)
dmgQuotaUser
  = lens _dmgQuotaUser (\ s a -> s{_dmgQuotaUser = a})

-- | A comma-separated list of Multi-Channel Funnels metrics. E.g.,
-- \'mcf:totalConversions,mcf:totalConversionValue\'. At least one metric
-- must be specified.
dmgMetrics :: Lens' DataMcfGet' Text
dmgMetrics
  = lens _dmgMetrics (\ s a -> s{_dmgMetrics = a})

-- | Returns response with indentations and line breaks.
dmgPrettyPrint :: Lens' DataMcfGet' Bool
dmgPrettyPrint
  = lens _dmgPrettyPrint
      (\ s a -> s{_dmgPrettyPrint = a})

-- | The desired sampling level.
dmgSamplingLevel :: Lens' DataMcfGet' (Maybe DataMcfGet'SamplingLevel)
dmgSamplingLevel
  = lens _dmgSamplingLevel
      (\ s a -> s{_dmgSamplingLevel = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dmgUserIp :: Lens' DataMcfGet' (Maybe Text)
dmgUserIp
  = lens _dmgUserIp (\ s a -> s{_dmgUserIp = a})

-- | A comma-separated list of dimension or metric filters to be applied to
-- the Analytics data.
dmgFilters :: Lens' DataMcfGet' (Maybe Text)
dmgFilters
  = lens _dmgFilters (\ s a -> s{_dmgFilters = a})

-- | Unique table ID for retrieving Analytics data. Table ID is of the form
-- ga:XXXX, where XXXX is the Analytics view (profile) ID.
dmgIds :: Lens' DataMcfGet' Text
dmgIds = lens _dmgIds (\ s a -> s{_dmgIds = a})

-- | End date for fetching Analytics data. Requests can specify a start date
-- formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday,
-- or 7daysAgo). The default value is 7daysAgo.
dmgEndDate :: Lens' DataMcfGet' Text
dmgEndDate
  = lens _dmgEndDate (\ s a -> s{_dmgEndDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dmgKey :: Lens' DataMcfGet' (Maybe Text)
dmgKey = lens _dmgKey (\ s a -> s{_dmgKey = a})

-- | A comma-separated list of dimensions or metrics that determine the sort
-- order for the Analytics data.
dmgSort :: Lens' DataMcfGet' (Maybe Text)
dmgSort = lens _dmgSort (\ s a -> s{_dmgSort = a})

-- | A comma-separated list of Multi-Channel Funnels dimensions. E.g.,
-- \'mcf:source,mcf:medium\'.
dmgDimensions :: Lens' DataMcfGet' (Maybe Text)
dmgDimensions
  = lens _dmgDimensions
      (\ s a -> s{_dmgDimensions = a})

-- | OAuth 2.0 token for the current user.
dmgOauthToken :: Lens' DataMcfGet' (Maybe Text)
dmgOauthToken
  = lens _dmgOauthToken
      (\ s a -> s{_dmgOauthToken = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
dmgStartIndex :: Lens' DataMcfGet' (Maybe Natural)
dmgStartIndex
  = lens _dmgStartIndex
      (\ s a -> s{_dmgStartIndex = a})
      . mapping _Nat

-- | The maximum number of entries to include in this feed.
dmgMaxResults :: Lens' DataMcfGet' (Maybe Int32)
dmgMaxResults
  = lens _dmgMaxResults
      (\ s a -> s{_dmgMaxResults = a})

-- | Start date for fetching Analytics data. Requests can specify a start
-- date formatted as YYYY-MM-DD, or as a relative date (e.g., today,
-- yesterday, or 7daysAgo). The default value is 7daysAgo.
dmgStartDate :: Lens' DataMcfGet' Text
dmgStartDate
  = lens _dmgStartDate (\ s a -> s{_dmgStartDate = a})

-- | Selector specifying which fields to include in a partial response.
dmgFields :: Lens' DataMcfGet' (Maybe Text)
dmgFields
  = lens _dmgFields (\ s a -> s{_dmgFields = a})

-- | Data format for the response.
dmgAlt :: Lens' DataMcfGet' Alt
dmgAlt = lens _dmgAlt (\ s a -> s{_dmgAlt = a})

instance GoogleRequest DataMcfGet' where
        type Rs DataMcfGet' = McfData
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u DataMcfGet'{..}
          = go _dmgQuotaUser (Just _dmgMetrics)
              (Just _dmgPrettyPrint)
              _dmgSamplingLevel
              _dmgUserIp
              _dmgFilters
              (Just _dmgIds)
              (Just _dmgEndDate)
              _dmgKey
              _dmgSort
              _dmgDimensions
              _dmgOauthToken
              _dmgStartIndex
              _dmgMaxResults
              (Just _dmgStartDate)
              _dmgFields
              (Just _dmgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy DataMcfGetAPI) r u
