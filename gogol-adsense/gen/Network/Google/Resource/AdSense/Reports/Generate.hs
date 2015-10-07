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
-- | Generate an AdSense report based on the report request sent in the query
-- parameters. Returns the result as JSON; to retrieve output in CSV format
-- specify \"alt=csv\" as a query parameter.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseReportsGenerate@.
module Network.Google.Resource.AdSense.Reports.Generate
    (
    -- * REST Resource
      ReportsGenerateResource

    -- * Creating a Request
    , reportsGenerate'
    , ReportsGenerate'

    -- * Request Lenses
    , rgQuotaUser
    , rgPrettyPrint
    , rgUserIP
    , rgDimension
    , rgLocale
    , rgEndDate
    , rgStartDate
    , rgAccountId
    , rgMetric
    , rgKey
    , rgCurrency
    , rgSort
    , rgFilter
    , rgOAuthToken
    , rgStartIndex
    , rgUseTimezoneReporting
    , rgMaxResults
    , rgFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseReportsGenerate@ method which the
-- 'ReportsGenerate'' request conforms to.
type ReportsGenerateResource =
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
                         QueryParam "startIndex" Int32 :>
                           QueryParam "useTimezoneReporting" Bool :>
                             QueryParam "maxResults" Int32 :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "userIp" Text :>
                                     QueryParam "fields" Text :>
                                       QueryParam "key" AuthKey :>
                                         QueryParam "oauth_token" OAuthToken :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON]
                                               AdsenseReportsGenerateResponse
       :<|>
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
                           QueryParam "startIndex" Int32 :>
                             QueryParam "useTimezoneReporting" Bool :>
                               QueryParam "maxResults" Int32 :>
                                 QueryParam "quotaUser" Text :>
                                   QueryParam "prettyPrint" Bool :>
                                     QueryParam "userIp" Text :>
                                       QueryParam "fields" Text :>
                                         QueryParam "key" AuthKey :>
                                           QueryParam "oauth_token" OAuthToken
                                             :>
                                             QueryParam "alt" AltMedia :>
                                               Get '[OctetStream] Stream

-- | Generate an AdSense report based on the report request sent in the query
-- parameters. Returns the result as JSON; to retrieve output in CSV format
-- specify \"alt=csv\" as a query parameter.
--
-- /See:/ 'reportsGenerate'' smart constructor.
data ReportsGenerate' = ReportsGenerate'
    { _rgQuotaUser            :: !(Maybe Text)
    , _rgPrettyPrint          :: !Bool
    , _rgUserIP               :: !(Maybe Text)
    , _rgDimension            :: !(Maybe [Text])
    , _rgLocale               :: !(Maybe Text)
    , _rgEndDate              :: !Text
    , _rgStartDate            :: !Text
    , _rgAccountId            :: !(Maybe [Text])
    , _rgMetric               :: !(Maybe [Text])
    , _rgKey                  :: !(Maybe AuthKey)
    , _rgCurrency             :: !(Maybe Text)
    , _rgSort                 :: !(Maybe [Text])
    , _rgFilter               :: !(Maybe [Text])
    , _rgOAuthToken           :: !(Maybe OAuthToken)
    , _rgStartIndex           :: !(Maybe Int32)
    , _rgUseTimezoneReporting :: !(Maybe Bool)
    , _rgMaxResults           :: !(Maybe Int32)
    , _rgFields               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsGenerate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgUserIP'
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
-- * 'rgKey'
--
-- * 'rgCurrency'
--
-- * 'rgSort'
--
-- * 'rgFilter'
--
-- * 'rgOAuthToken'
--
-- * 'rgStartIndex'
--
-- * 'rgUseTimezoneReporting'
--
-- * 'rgMaxResults'
--
-- * 'rgFields'
reportsGenerate'
    :: Text -- ^ 'endDate'
    -> Text -- ^ 'startDate'
    -> ReportsGenerate'
reportsGenerate' pRgEndDate_ pRgStartDate_ =
    ReportsGenerate'
    { _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgUserIP = Nothing
    , _rgDimension = Nothing
    , _rgLocale = Nothing
    , _rgEndDate = pRgEndDate_
    , _rgStartDate = pRgStartDate_
    , _rgAccountId = Nothing
    , _rgMetric = Nothing
    , _rgKey = Nothing
    , _rgCurrency = Nothing
    , _rgSort = Nothing
    , _rgFilter = Nothing
    , _rgOAuthToken = Nothing
    , _rgStartIndex = Nothing
    , _rgUseTimezoneReporting = Nothing
    , _rgMaxResults = Nothing
    , _rgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgQuotaUser :: Lens' ReportsGenerate' (Maybe Text)
rgQuotaUser
  = lens _rgQuotaUser (\ s a -> s{_rgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgPrettyPrint :: Lens' ReportsGenerate' Bool
rgPrettyPrint
  = lens _rgPrettyPrint
      (\ s a -> s{_rgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgUserIP :: Lens' ReportsGenerate' (Maybe Text)
rgUserIP = lens _rgUserIP (\ s a -> s{_rgUserIP = a})

-- | Dimensions to base the report on.
rgDimension :: Lens' ReportsGenerate' [Text]
rgDimension
  = lens _rgDimension (\ s a -> s{_rgDimension = a}) .
      _Default
      . _Coerce

-- | Optional locale to use for translating report output to a local
-- language. Defaults to \"en_US\" if not specified.
rgLocale :: Lens' ReportsGenerate' (Maybe Text)
rgLocale = lens _rgLocale (\ s a -> s{_rgLocale = a})

-- | End of the date range to report on in \"YYYY-MM-DD\" format, inclusive.
rgEndDate :: Lens' ReportsGenerate' Text
rgEndDate
  = lens _rgEndDate (\ s a -> s{_rgEndDate = a})

-- | Start of the date range to report on in \"YYYY-MM-DD\" format,
-- inclusive.
rgStartDate :: Lens' ReportsGenerate' Text
rgStartDate
  = lens _rgStartDate (\ s a -> s{_rgStartDate = a})

-- | Accounts upon which to report.
rgAccountId :: Lens' ReportsGenerate' [Text]
rgAccountId
  = lens _rgAccountId (\ s a -> s{_rgAccountId = a}) .
      _Default
      . _Coerce

-- | Numeric columns to include in the report.
rgMetric :: Lens' ReportsGenerate' [Text]
rgMetric
  = lens _rgMetric (\ s a -> s{_rgMetric = a}) .
      _Default
      . _Coerce

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' ReportsGenerate' (Maybe AuthKey)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | Optional currency to use when reporting on monetary metrics. Defaults to
-- the account\'s currency if not set.
rgCurrency :: Lens' ReportsGenerate' (Maybe Text)
rgCurrency
  = lens _rgCurrency (\ s a -> s{_rgCurrency = a})

-- | The name of a dimension or metric to sort the resulting report on,
-- optionally prefixed with \"+\" to sort ascending or \"-\" to sort
-- descending. If no prefix is specified, the column is sorted ascending.
rgSort :: Lens' ReportsGenerate' [Text]
rgSort
  = lens _rgSort (\ s a -> s{_rgSort = a}) . _Default .
      _Coerce

-- | Filters to be run on the report.
rgFilter :: Lens' ReportsGenerate' [Text]
rgFilter
  = lens _rgFilter (\ s a -> s{_rgFilter = a}) .
      _Default
      . _Coerce

-- | OAuth 2.0 token for the current user.
rgOAuthToken :: Lens' ReportsGenerate' (Maybe OAuthToken)
rgOAuthToken
  = lens _rgOAuthToken (\ s a -> s{_rgOAuthToken = a})

-- | Index of the first row of report data to return.
rgStartIndex :: Lens' ReportsGenerate' (Maybe Int32)
rgStartIndex
  = lens _rgStartIndex (\ s a -> s{_rgStartIndex = a})

-- | Whether the report should be generated in the AdSense account\'s local
-- timezone. If false default PST\/PDT timezone will be used.
rgUseTimezoneReporting :: Lens' ReportsGenerate' (Maybe Bool)
rgUseTimezoneReporting
  = lens _rgUseTimezoneReporting
      (\ s a -> s{_rgUseTimezoneReporting = a})

-- | The maximum number of rows of report data to return.
rgMaxResults :: Lens' ReportsGenerate' (Maybe Int32)
rgMaxResults
  = lens _rgMaxResults (\ s a -> s{_rgMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' ReportsGenerate' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

instance GoogleAuth ReportsGenerate' where
        _AuthKey = rgKey . _Just
        _AuthToken = rgOAuthToken . _Just

instance GoogleRequest ReportsGenerate' where
        type Rs ReportsGenerate' =
             AdsenseReportsGenerateResponse
        request = requestWith adSenseRequest
        requestWith rq ReportsGenerate'{..}
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
              _rgQuotaUser
              (Just _rgPrettyPrint)
              _rgUserIP
              _rgFields
              _rgKey
              _rgOAuthToken
              (Just AltJSON)
          where go :<|> _
                  = clientBuild
                      (Proxy :: Proxy ReportsGenerateResource)
                      rq

instance GoogleRequest
         (MediaDownload ReportsGenerate') where
        type Rs (MediaDownload ReportsGenerate') = Stream
        request = requestWith adSenseRequest
        requestWith rq (MediaDownload ReportsGenerate'{..})
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
              _rgQuotaUser
              (Just _rgPrettyPrint)
              _rgUserIP
              _rgFields
              _rgKey
              _rgOAuthToken
              (Just AltMedia)
          where _ :<|> go
                  = clientBuild
                      (Proxy :: Proxy ReportsGenerateResource)
                      rq
