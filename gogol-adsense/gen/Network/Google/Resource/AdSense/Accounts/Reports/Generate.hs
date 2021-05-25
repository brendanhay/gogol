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
-- Module      : Network.Google.Resource.AdSense.Accounts.Reports.Generate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates an ad hoc report.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.reports.generate@.
module Network.Google.Resource.AdSense.Accounts.Reports.Generate
    (
    -- * REST Resource
      AccountsReportsGenerateResource

    -- * Creating a Request
    , accountsReportsGenerate
    , AccountsReportsGenerate

    -- * Request Lenses
    , argXgafv
    , argLanguageCode
    , argMetrics
    , argCurrencyCode
    , argUploadProtocol
    , argOrderBy
    , argReportingTimeZone
    , argEndDateMonth
    , argAccessToken
    , argDateRange
    , argFilters
    , argUploadType
    , argStartDateDay
    , argAccount
    , argEndDateDay
    , argEndDateYear
    , argStartDateMonth
    , argStartDateYear
    , argLimit
    , argDimensions
    , argCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.reports.generate@ method which the
-- 'AccountsReportsGenerate' request conforms to.
type AccountsReportsGenerateResource =
     "v2" :>
       Capture "account" Text :>
         "reports:generate" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParams "metrics" AccountsReportsGenerateMetrics
                 :>
                 QueryParam "currencyCode" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParams "orderBy" Text :>
                       QueryParam "reportingTimeZone"
                         AccountsReportsGenerateReportingTimeZone
                         :>
                         QueryParam "endDate.month" (Textual Int32) :>
                           QueryParam "access_token" Text :>
                             QueryParam "dateRange"
                               AccountsReportsGenerateDateRange
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
                                                 AccountsReportsGenerateDimensions
                                                 :>
                                                 QueryParam "callback" Text :>
                                                   QueryParam "alt" AltJSON :>
                                                     Get '[JSON] ReportResult

-- | Generates an ad hoc report.
--
-- /See:/ 'accountsReportsGenerate' smart constructor.
data AccountsReportsGenerate =
  AccountsReportsGenerate'
    { _argXgafv :: !(Maybe Xgafv)
    , _argLanguageCode :: !(Maybe Text)
    , _argMetrics :: !(Maybe [AccountsReportsGenerateMetrics])
    , _argCurrencyCode :: !(Maybe Text)
    , _argUploadProtocol :: !(Maybe Text)
    , _argOrderBy :: !(Maybe [Text])
    , _argReportingTimeZone :: !(Maybe AccountsReportsGenerateReportingTimeZone)
    , _argEndDateMonth :: !(Maybe (Textual Int32))
    , _argAccessToken :: !(Maybe Text)
    , _argDateRange :: !(Maybe AccountsReportsGenerateDateRange)
    , _argFilters :: !(Maybe [Text])
    , _argUploadType :: !(Maybe Text)
    , _argStartDateDay :: !(Maybe (Textual Int32))
    , _argAccount :: !Text
    , _argEndDateDay :: !(Maybe (Textual Int32))
    , _argEndDateYear :: !(Maybe (Textual Int32))
    , _argStartDateMonth :: !(Maybe (Textual Int32))
    , _argStartDateYear :: !(Maybe (Textual Int32))
    , _argLimit :: !(Maybe (Textual Int32))
    , _argDimensions :: !(Maybe [AccountsReportsGenerateDimensions])
    , _argCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsReportsGenerate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'argXgafv'
--
-- * 'argLanguageCode'
--
-- * 'argMetrics'
--
-- * 'argCurrencyCode'
--
-- * 'argUploadProtocol'
--
-- * 'argOrderBy'
--
-- * 'argReportingTimeZone'
--
-- * 'argEndDateMonth'
--
-- * 'argAccessToken'
--
-- * 'argDateRange'
--
-- * 'argFilters'
--
-- * 'argUploadType'
--
-- * 'argStartDateDay'
--
-- * 'argAccount'
--
-- * 'argEndDateDay'
--
-- * 'argEndDateYear'
--
-- * 'argStartDateMonth'
--
-- * 'argStartDateYear'
--
-- * 'argLimit'
--
-- * 'argDimensions'
--
-- * 'argCallback'
accountsReportsGenerate
    :: Text -- ^ 'argAccount'
    -> AccountsReportsGenerate
accountsReportsGenerate pArgAccount_ =
  AccountsReportsGenerate'
    { _argXgafv = Nothing
    , _argLanguageCode = Nothing
    , _argMetrics = Nothing
    , _argCurrencyCode = Nothing
    , _argUploadProtocol = Nothing
    , _argOrderBy = Nothing
    , _argReportingTimeZone = Nothing
    , _argEndDateMonth = Nothing
    , _argAccessToken = Nothing
    , _argDateRange = Nothing
    , _argFilters = Nothing
    , _argUploadType = Nothing
    , _argStartDateDay = Nothing
    , _argAccount = pArgAccount_
    , _argEndDateDay = Nothing
    , _argEndDateYear = Nothing
    , _argStartDateMonth = Nothing
    , _argStartDateYear = Nothing
    , _argLimit = Nothing
    , _argDimensions = Nothing
    , _argCallback = Nothing
    }


-- | V1 error format.
argXgafv :: Lens' AccountsReportsGenerate (Maybe Xgafv)
argXgafv = lens _argXgafv (\ s a -> s{_argXgafv = a})

-- | The language to use for translating report output. If unspecified, this
-- defaults to English (\"en\"). If the given language is not supported,
-- report output will be returned in English. The language is specified as
-- an [IETF BCP-47 language
-- code](https:\/\/en.wikipedia.org\/wiki\/IETF_language_tag).
argLanguageCode :: Lens' AccountsReportsGenerate (Maybe Text)
argLanguageCode
  = lens _argLanguageCode
      (\ s a -> s{_argLanguageCode = a})

-- | Required. Reporting metrics.
argMetrics :: Lens' AccountsReportsGenerate [AccountsReportsGenerateMetrics]
argMetrics
  = lens _argMetrics (\ s a -> s{_argMetrics = a}) .
      _Default
      . _Coerce

-- | The [ISO-4217 currency code](https:\/\/en.wikipedia.org\/wiki\/ISO_4217)
-- to use when reporting on monetary metrics. Defaults to the account\'s
-- currency if not set.
argCurrencyCode :: Lens' AccountsReportsGenerate (Maybe Text)
argCurrencyCode
  = lens _argCurrencyCode
      (\ s a -> s{_argCurrencyCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
argUploadProtocol :: Lens' AccountsReportsGenerate (Maybe Text)
argUploadProtocol
  = lens _argUploadProtocol
      (\ s a -> s{_argUploadProtocol = a})

-- | The name of a dimension or metric to sort the resulting report on, can
-- be prefixed with \"+\" to sort ascending or \"-\" to sort descending. If
-- no prefix is specified, the column is sorted ascending.
argOrderBy :: Lens' AccountsReportsGenerate [Text]
argOrderBy
  = lens _argOrderBy (\ s a -> s{_argOrderBy = a}) .
      _Default
      . _Coerce

-- | Timezone in which to generate the report. If unspecified, this defaults
-- to the account timezone. For more information, see [changing the time
-- zone of your
-- reports](https:\/\/support.google.com\/adsense\/answer\/9830725).
argReportingTimeZone :: Lens' AccountsReportsGenerate (Maybe AccountsReportsGenerateReportingTimeZone)
argReportingTimeZone
  = lens _argReportingTimeZone
      (\ s a -> s{_argReportingTimeZone = a})

-- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a
-- month and day.
argEndDateMonth :: Lens' AccountsReportsGenerate (Maybe Int32)
argEndDateMonth
  = lens _argEndDateMonth
      (\ s a -> s{_argEndDateMonth = a})
      . mapping _Coerce

-- | OAuth access token.
argAccessToken :: Lens' AccountsReportsGenerate (Maybe Text)
argAccessToken
  = lens _argAccessToken
      (\ s a -> s{_argAccessToken = a})

-- | Date range of the report, if unset the range will be considered CUSTOM.
argDateRange :: Lens' AccountsReportsGenerate (Maybe AccountsReportsGenerateDateRange)
argDateRange
  = lens _argDateRange (\ s a -> s{_argDateRange = a})

-- | Filters to be run on the report.
argFilters :: Lens' AccountsReportsGenerate [Text]
argFilters
  = lens _argFilters (\ s a -> s{_argFilters = a}) .
      _Default
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
argUploadType :: Lens' AccountsReportsGenerate (Maybe Text)
argUploadType
  = lens _argUploadType
      (\ s a -> s{_argUploadType = a})

-- | Day of a month. Must be from 1 to 31 and valid for the year and month,
-- or 0 to specify a year by itself or a year and month where the day
-- isn\'t significant.
argStartDateDay :: Lens' AccountsReportsGenerate (Maybe Int32)
argStartDateDay
  = lens _argStartDateDay
      (\ s a -> s{_argStartDateDay = a})
      . mapping _Coerce

-- | Required. The account which owns the collection of reports. Format:
-- accounts\/{account}
argAccount :: Lens' AccountsReportsGenerate Text
argAccount
  = lens _argAccount (\ s a -> s{_argAccount = a})

-- | Day of a month. Must be from 1 to 31 and valid for the year and month,
-- or 0 to specify a year by itself or a year and month where the day
-- isn\'t significant.
argEndDateDay :: Lens' AccountsReportsGenerate (Maybe Int32)
argEndDateDay
  = lens _argEndDateDay
      (\ s a -> s{_argEndDateDay = a})
      . mapping _Coerce

-- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without
-- a year.
argEndDateYear :: Lens' AccountsReportsGenerate (Maybe Int32)
argEndDateYear
  = lens _argEndDateYear
      (\ s a -> s{_argEndDateYear = a})
      . mapping _Coerce

-- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a
-- month and day.
argStartDateMonth :: Lens' AccountsReportsGenerate (Maybe Int32)
argStartDateMonth
  = lens _argStartDateMonth
      (\ s a -> s{_argStartDateMonth = a})
      . mapping _Coerce

-- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without
-- a year.
argStartDateYear :: Lens' AccountsReportsGenerate (Maybe Int32)
argStartDateYear
  = lens _argStartDateYear
      (\ s a -> s{_argStartDateYear = a})
      . mapping _Coerce

-- | The maximum number of rows of report data to return. Reports producing
-- more rows than the requested limit will be truncated. If unset, this
-- defaults to 100,000 rows for \`Reports.GenerateReport\` and 1,000,000
-- rows for \`Reports.GenerateCsvReport\`, which are also the maximum
-- values permitted here. Report truncation can be identified (for
-- \`Reports.GenerateReport\` only) by comparing the number of rows
-- returned to the value returned in \`total_matched_rows\`.
argLimit :: Lens' AccountsReportsGenerate (Maybe Int32)
argLimit
  = lens _argLimit (\ s a -> s{_argLimit = a}) .
      mapping _Coerce

-- | Dimensions to base the report on.
argDimensions :: Lens' AccountsReportsGenerate [AccountsReportsGenerateDimensions]
argDimensions
  = lens _argDimensions
      (\ s a -> s{_argDimensions = a})
      . _Default
      . _Coerce

-- | JSONP
argCallback :: Lens' AccountsReportsGenerate (Maybe Text)
argCallback
  = lens _argCallback (\ s a -> s{_argCallback = a})

instance GoogleRequest AccountsReportsGenerate where
        type Rs AccountsReportsGenerate = ReportResult
        type Scopes AccountsReportsGenerate =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsReportsGenerate'{..}
          = go _argAccount _argXgafv _argLanguageCode
              (_argMetrics ^. _Default)
              _argCurrencyCode
              _argUploadProtocol
              (_argOrderBy ^. _Default)
              _argReportingTimeZone
              _argEndDateMonth
              _argAccessToken
              _argDateRange
              (_argFilters ^. _Default)
              _argUploadType
              _argStartDateDay
              _argEndDateDay
              _argEndDateYear
              _argStartDateMonth
              _argStartDateYear
              _argLimit
              (_argDimensions ^. _Default)
              _argCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsReportsGenerateResource)
                      mempty
