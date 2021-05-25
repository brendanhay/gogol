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
-- Module      : Network.Google.Resource.AdSense.Accounts.Reports.GenerateCSV
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a csv formatted ad hoc report.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.reports.generateCsv@.
module Network.Google.Resource.AdSense.Accounts.Reports.GenerateCSV
    (
    -- * REST Resource
      AccountsReportsGenerateCSVResource

    -- * Creating a Request
    , accountsReportsGenerateCSV
    , AccountsReportsGenerateCSV

    -- * Request Lenses
    , argcXgafv
    , argcLanguageCode
    , argcMetrics
    , argcCurrencyCode
    , argcUploadProtocol
    , argcOrderBy
    , argcReportingTimeZone
    , argcEndDateMonth
    , argcAccessToken
    , argcDateRange
    , argcFilters
    , argcUploadType
    , argcStartDateDay
    , argcAccount
    , argcEndDateDay
    , argcEndDateYear
    , argcStartDateMonth
    , argcStartDateYear
    , argcLimit
    , argcDimensions
    , argcCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.reports.generateCsv@ method which the
-- 'AccountsReportsGenerateCSV' request conforms to.
type AccountsReportsGenerateCSVResource =
     "v2" :>
       Capture "account" Text :>
         "reports:generateCsv" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParams "metrics"
                 AccountsReportsGenerateCSVMetrics
                 :>
                 QueryParam "currencyCode" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParams "orderBy" Text :>
                       QueryParam "reportingTimeZone"
                         AccountsReportsGenerateCSVReportingTimeZone
                         :>
                         QueryParam "endDate.month" (Textual Int32) :>
                           QueryParam "access_token" Text :>
                             QueryParam "dateRange"
                               AccountsReportsGenerateCSVDateRange
                               :>
                               QueryParams "filters" Text :>
                                 QueryParam "uploadType" Text :>
                                   QueryParam "startDate.day" (Textual Int32) :>
                                     QueryParam "endDate.day" (Textual Int32) :>
                                       QueryParam "endDate.year" (Textual Int32)
                                         :>
                                         QueryParam "startDate.month"
                                           (Textual Int32)
                                           :>
                                           QueryParam "startDate.year"
                                             (Textual Int32)
                                             :>
                                             QueryParam "limit" (Textual Int32)
                                               :>
                                               QueryParams "dimensions"
                                                 AccountsReportsGenerateCSVDimensions
                                                 :>
                                                 QueryParam "callback" Text :>
                                                   QueryParam "alt" AltJSON :>
                                                     Get '[JSON] HTTPBody

-- | Generates a csv formatted ad hoc report.
--
-- /See:/ 'accountsReportsGenerateCSV' smart constructor.
data AccountsReportsGenerateCSV =
  AccountsReportsGenerateCSV'
    { _argcXgafv :: !(Maybe Xgafv)
    , _argcLanguageCode :: !(Maybe Text)
    , _argcMetrics :: !(Maybe [AccountsReportsGenerateCSVMetrics])
    , _argcCurrencyCode :: !(Maybe Text)
    , _argcUploadProtocol :: !(Maybe Text)
    , _argcOrderBy :: !(Maybe [Text])
    , _argcReportingTimeZone :: !(Maybe AccountsReportsGenerateCSVReportingTimeZone)
    , _argcEndDateMonth :: !(Maybe (Textual Int32))
    , _argcAccessToken :: !(Maybe Text)
    , _argcDateRange :: !(Maybe AccountsReportsGenerateCSVDateRange)
    , _argcFilters :: !(Maybe [Text])
    , _argcUploadType :: !(Maybe Text)
    , _argcStartDateDay :: !(Maybe (Textual Int32))
    , _argcAccount :: !Text
    , _argcEndDateDay :: !(Maybe (Textual Int32))
    , _argcEndDateYear :: !(Maybe (Textual Int32))
    , _argcStartDateMonth :: !(Maybe (Textual Int32))
    , _argcStartDateYear :: !(Maybe (Textual Int32))
    , _argcLimit :: !(Maybe (Textual Int32))
    , _argcDimensions :: !(Maybe [AccountsReportsGenerateCSVDimensions])
    , _argcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsReportsGenerateCSV' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'argcXgafv'
--
-- * 'argcLanguageCode'
--
-- * 'argcMetrics'
--
-- * 'argcCurrencyCode'
--
-- * 'argcUploadProtocol'
--
-- * 'argcOrderBy'
--
-- * 'argcReportingTimeZone'
--
-- * 'argcEndDateMonth'
--
-- * 'argcAccessToken'
--
-- * 'argcDateRange'
--
-- * 'argcFilters'
--
-- * 'argcUploadType'
--
-- * 'argcStartDateDay'
--
-- * 'argcAccount'
--
-- * 'argcEndDateDay'
--
-- * 'argcEndDateYear'
--
-- * 'argcStartDateMonth'
--
-- * 'argcStartDateYear'
--
-- * 'argcLimit'
--
-- * 'argcDimensions'
--
-- * 'argcCallback'
accountsReportsGenerateCSV
    :: Text -- ^ 'argcAccount'
    -> AccountsReportsGenerateCSV
accountsReportsGenerateCSV pArgcAccount_ =
  AccountsReportsGenerateCSV'
    { _argcXgafv = Nothing
    , _argcLanguageCode = Nothing
    , _argcMetrics = Nothing
    , _argcCurrencyCode = Nothing
    , _argcUploadProtocol = Nothing
    , _argcOrderBy = Nothing
    , _argcReportingTimeZone = Nothing
    , _argcEndDateMonth = Nothing
    , _argcAccessToken = Nothing
    , _argcDateRange = Nothing
    , _argcFilters = Nothing
    , _argcUploadType = Nothing
    , _argcStartDateDay = Nothing
    , _argcAccount = pArgcAccount_
    , _argcEndDateDay = Nothing
    , _argcEndDateYear = Nothing
    , _argcStartDateMonth = Nothing
    , _argcStartDateYear = Nothing
    , _argcLimit = Nothing
    , _argcDimensions = Nothing
    , _argcCallback = Nothing
    }


-- | V1 error format.
argcXgafv :: Lens' AccountsReportsGenerateCSV (Maybe Xgafv)
argcXgafv
  = lens _argcXgafv (\ s a -> s{_argcXgafv = a})

-- | The language to use for translating report output. If unspecified, this
-- defaults to English (\"en\"). If the given language is not supported,
-- report output will be returned in English. The language is specified as
-- an [IETF BCP-47 language
-- code](https:\/\/en.wikipedia.org\/wiki\/IETF_language_tag).
argcLanguageCode :: Lens' AccountsReportsGenerateCSV (Maybe Text)
argcLanguageCode
  = lens _argcLanguageCode
      (\ s a -> s{_argcLanguageCode = a})

-- | Required. Reporting metrics.
argcMetrics :: Lens' AccountsReportsGenerateCSV [AccountsReportsGenerateCSVMetrics]
argcMetrics
  = lens _argcMetrics (\ s a -> s{_argcMetrics = a}) .
      _Default
      . _Coerce

-- | The [ISO-4217 currency code](https:\/\/en.wikipedia.org\/wiki\/ISO_4217)
-- to use when reporting on monetary metrics. Defaults to the account\'s
-- currency if not set.
argcCurrencyCode :: Lens' AccountsReportsGenerateCSV (Maybe Text)
argcCurrencyCode
  = lens _argcCurrencyCode
      (\ s a -> s{_argcCurrencyCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
argcUploadProtocol :: Lens' AccountsReportsGenerateCSV (Maybe Text)
argcUploadProtocol
  = lens _argcUploadProtocol
      (\ s a -> s{_argcUploadProtocol = a})

-- | The name of a dimension or metric to sort the resulting report on, can
-- be prefixed with \"+\" to sort ascending or \"-\" to sort descending. If
-- no prefix is specified, the column is sorted ascending.
argcOrderBy :: Lens' AccountsReportsGenerateCSV [Text]
argcOrderBy
  = lens _argcOrderBy (\ s a -> s{_argcOrderBy = a}) .
      _Default
      . _Coerce

-- | Timezone in which to generate the report. If unspecified, this defaults
-- to the account timezone. For more information, see [changing the time
-- zone of your
-- reports](https:\/\/support.google.com\/adsense\/answer\/9830725).
argcReportingTimeZone :: Lens' AccountsReportsGenerateCSV (Maybe AccountsReportsGenerateCSVReportingTimeZone)
argcReportingTimeZone
  = lens _argcReportingTimeZone
      (\ s a -> s{_argcReportingTimeZone = a})

-- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a
-- month and day.
argcEndDateMonth :: Lens' AccountsReportsGenerateCSV (Maybe Int32)
argcEndDateMonth
  = lens _argcEndDateMonth
      (\ s a -> s{_argcEndDateMonth = a})
      . mapping _Coerce

-- | OAuth access token.
argcAccessToken :: Lens' AccountsReportsGenerateCSV (Maybe Text)
argcAccessToken
  = lens _argcAccessToken
      (\ s a -> s{_argcAccessToken = a})

-- | Date range of the report, if unset the range will be considered CUSTOM.
argcDateRange :: Lens' AccountsReportsGenerateCSV (Maybe AccountsReportsGenerateCSVDateRange)
argcDateRange
  = lens _argcDateRange
      (\ s a -> s{_argcDateRange = a})

-- | Filters to be run on the report.
argcFilters :: Lens' AccountsReportsGenerateCSV [Text]
argcFilters
  = lens _argcFilters (\ s a -> s{_argcFilters = a}) .
      _Default
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
argcUploadType :: Lens' AccountsReportsGenerateCSV (Maybe Text)
argcUploadType
  = lens _argcUploadType
      (\ s a -> s{_argcUploadType = a})

-- | Day of a month. Must be from 1 to 31 and valid for the year and month,
-- or 0 to specify a year by itself or a year and month where the day
-- isn\'t significant.
argcStartDateDay :: Lens' AccountsReportsGenerateCSV (Maybe Int32)
argcStartDateDay
  = lens _argcStartDateDay
      (\ s a -> s{_argcStartDateDay = a})
      . mapping _Coerce

-- | Required. The account which owns the collection of reports. Format:
-- accounts\/{account}
argcAccount :: Lens' AccountsReportsGenerateCSV Text
argcAccount
  = lens _argcAccount (\ s a -> s{_argcAccount = a})

-- | Day of a month. Must be from 1 to 31 and valid for the year and month,
-- or 0 to specify a year by itself or a year and month where the day
-- isn\'t significant.
argcEndDateDay :: Lens' AccountsReportsGenerateCSV (Maybe Int32)
argcEndDateDay
  = lens _argcEndDateDay
      (\ s a -> s{_argcEndDateDay = a})
      . mapping _Coerce

-- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without
-- a year.
argcEndDateYear :: Lens' AccountsReportsGenerateCSV (Maybe Int32)
argcEndDateYear
  = lens _argcEndDateYear
      (\ s a -> s{_argcEndDateYear = a})
      . mapping _Coerce

-- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a
-- month and day.
argcStartDateMonth :: Lens' AccountsReportsGenerateCSV (Maybe Int32)
argcStartDateMonth
  = lens _argcStartDateMonth
      (\ s a -> s{_argcStartDateMonth = a})
      . mapping _Coerce

-- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without
-- a year.
argcStartDateYear :: Lens' AccountsReportsGenerateCSV (Maybe Int32)
argcStartDateYear
  = lens _argcStartDateYear
      (\ s a -> s{_argcStartDateYear = a})
      . mapping _Coerce

-- | The maximum number of rows of report data to return. Reports producing
-- more rows than the requested limit will be truncated. If unset, this
-- defaults to 100,000 rows for \`Reports.GenerateReport\` and 1,000,000
-- rows for \`Reports.GenerateCsvReport\`, which are also the maximum
-- values permitted here. Report truncation can be identified (for
-- \`Reports.GenerateReport\` only) by comparing the number of rows
-- returned to the value returned in \`total_matched_rows\`.
argcLimit :: Lens' AccountsReportsGenerateCSV (Maybe Int32)
argcLimit
  = lens _argcLimit (\ s a -> s{_argcLimit = a}) .
      mapping _Coerce

-- | Dimensions to base the report on.
argcDimensions :: Lens' AccountsReportsGenerateCSV [AccountsReportsGenerateCSVDimensions]
argcDimensions
  = lens _argcDimensions
      (\ s a -> s{_argcDimensions = a})
      . _Default
      . _Coerce

-- | JSONP
argcCallback :: Lens' AccountsReportsGenerateCSV (Maybe Text)
argcCallback
  = lens _argcCallback (\ s a -> s{_argcCallback = a})

instance GoogleRequest AccountsReportsGenerateCSV
         where
        type Rs AccountsReportsGenerateCSV = HTTPBody
        type Scopes AccountsReportsGenerateCSV =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsReportsGenerateCSV'{..}
          = go _argcAccount _argcXgafv _argcLanguageCode
              (_argcMetrics ^. _Default)
              _argcCurrencyCode
              _argcUploadProtocol
              (_argcOrderBy ^. _Default)
              _argcReportingTimeZone
              _argcEndDateMonth
              _argcAccessToken
              _argcDateRange
              (_argcFilters ^. _Default)
              _argcUploadType
              _argcStartDateDay
              _argcEndDateDay
              _argcEndDateYear
              _argcStartDateMonth
              _argcStartDateYear
              _argcLimit
              (_argcDimensions ^. _Default)
              _argcCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsReportsGenerateCSVResource)
                      mempty
