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
-- | Returns Analytics Multi-Channel Funnels data for a view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsDataMcfGet@.
module Network.Google.Resource.Analytics.Data.Mcf.Get
    (
    -- * REST Resource
      DataMcfGetResource

    -- * Creating a Request
    , dataMcfGet'
    , DataMcfGet'

    -- * Request Lenses
    , dmgQuotaUser
    , dmgMetrics
    , dmgPrettyPrint
    , dmgSamplingLevel
    , dmgUserIP
    , dmgFilters
    , dmgIds
    , dmgEndDate
    , dmgKey
    , dmgSort
    , dmgDimensions
    , dmgOAuthToken
    , dmgStartIndex
    , dmgMaxResults
    , dmgStartDate
    , dmgFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsDataMcfGet@ which the
-- 'DataMcfGet'' request conforms to.
type DataMcfGetResource =
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
                         QueryParam "start-index" Int32 :>
                           QueryParam "max-results" Int32 :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "userIp" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" AuthKey :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] McfData

-- | Returns Analytics Multi-Channel Funnels data for a view (profile).
--
-- /See:/ 'dataMcfGet'' smart constructor.
data DataMcfGet' = DataMcfGet'
    { _dmgQuotaUser     :: !(Maybe Text)
    , _dmgMetrics       :: !Text
    , _dmgPrettyPrint   :: !Bool
    , _dmgSamplingLevel :: !(Maybe DataMcfGetSamplingLevel)
    , _dmgUserIP        :: !(Maybe Text)
    , _dmgFilters       :: !(Maybe Text)
    , _dmgIds           :: !Text
    , _dmgEndDate       :: !Text
    , _dmgKey           :: !(Maybe AuthKey)
    , _dmgSort          :: !(Maybe Text)
    , _dmgDimensions    :: !(Maybe Text)
    , _dmgOAuthToken    :: !(Maybe OAuthToken)
    , _dmgStartIndex    :: !(Maybe Int32)
    , _dmgMaxResults    :: !(Maybe Int32)
    , _dmgStartDate     :: !Text
    , _dmgFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'dmgUserIP'
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
-- * 'dmgOAuthToken'
--
-- * 'dmgStartIndex'
--
-- * 'dmgMaxResults'
--
-- * 'dmgStartDate'
--
-- * 'dmgFields'
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
    , _dmgUserIP = Nothing
    , _dmgFilters = Nothing
    , _dmgIds = pDmgIds_
    , _dmgEndDate = pDmgEndDate_
    , _dmgKey = Nothing
    , _dmgSort = Nothing
    , _dmgDimensions = Nothing
    , _dmgOAuthToken = Nothing
    , _dmgStartIndex = Nothing
    , _dmgMaxResults = Nothing
    , _dmgStartDate = pDmgStartDate_
    , _dmgFields = Nothing
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
dmgSamplingLevel :: Lens' DataMcfGet' (Maybe DataMcfGetSamplingLevel)
dmgSamplingLevel
  = lens _dmgSamplingLevel
      (\ s a -> s{_dmgSamplingLevel = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dmgUserIP :: Lens' DataMcfGet' (Maybe Text)
dmgUserIP
  = lens _dmgUserIP (\ s a -> s{_dmgUserIP = a})

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
dmgKey :: Lens' DataMcfGet' (Maybe AuthKey)
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
dmgOAuthToken :: Lens' DataMcfGet' (Maybe OAuthToken)
dmgOAuthToken
  = lens _dmgOAuthToken
      (\ s a -> s{_dmgOAuthToken = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
dmgStartIndex :: Lens' DataMcfGet' (Maybe Int32)
dmgStartIndex
  = lens _dmgStartIndex
      (\ s a -> s{_dmgStartIndex = a})

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

instance GoogleAuth DataMcfGet' where
        authKey = dmgKey . _Just
        authToken = dmgOAuthToken . _Just

instance GoogleRequest DataMcfGet' where
        type Rs DataMcfGet' = McfData
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u DataMcfGet'{..}
          = go (Just _dmgIds) (Just _dmgStartDate)
              (Just _dmgEndDate)
              (Just _dmgMetrics)
              _dmgSamplingLevel
              _dmgFilters
              _dmgSort
              _dmgDimensions
              _dmgStartIndex
              _dmgMaxResults
              _dmgQuotaUser
              (Just _dmgPrettyPrint)
              _dmgUserIP
              _dmgFields
              _dmgKey
              _dmgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy DataMcfGetResource)
                      r
                      u
