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
-- Module      : Network.Google.Resource.AdSense.Accounts.Reports.Saved.GenerateCSV
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a csv formatted saved report.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.reports.saved.generateCsv@.
module Network.Google.Resource.AdSense.Accounts.Reports.Saved.GenerateCSV
    (
    -- * REST Resource
      AccountsReportsSavedGenerateCSVResource

    -- * Creating a Request
    , accountsReportsSavedGenerateCSV
    , AccountsReportsSavedGenerateCSV

    -- * Request Lenses
    , arsgcXgafv
    , arsgcLanguageCode
    , arsgcCurrencyCode
    , arsgcUploadProtocol
    , arsgcReportingTimeZone
    , arsgcEndDateMonth
    , arsgcAccessToken
    , arsgcDateRange
    , arsgcUploadType
    , arsgcStartDateDay
    , arsgcEndDateDay
    , arsgcName
    , arsgcEndDateYear
    , arsgcStartDateMonth
    , arsgcStartDateYear
    , arsgcCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.reports.saved.generateCsv@ method which the
-- 'AccountsReportsSavedGenerateCSV' request conforms to.
type AccountsReportsSavedGenerateCSVResource =
     "v2" :>
       Capture "name" Text :>
         "saved:generateCsv" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "currencyCode" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "reportingTimeZone"
                     AccountsReportsSavedGenerateCSVReportingTimeZone
                     :>
                     QueryParam "endDate.month" (Textual Int32) :>
                       QueryParam "access_token" Text :>
                         QueryParam "dateRange"
                           AccountsReportsSavedGenerateCSVDateRange
                           :>
                           QueryParam "uploadType" Text :>
                             QueryParam "startDate.day" (Textual Int32) :>
                               QueryParam "endDate.day" (Textual Int32) :>
                                 QueryParam "endDate.year" (Textual Int32) :>
                                   QueryParam "startDate.month" (Textual Int32)
                                     :>
                                     QueryParam "startDate.year" (Textual Int32)
                                       :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] HTTPBody

-- | Generates a csv formatted saved report.
--
-- /See:/ 'accountsReportsSavedGenerateCSV' smart constructor.
data AccountsReportsSavedGenerateCSV =
  AccountsReportsSavedGenerateCSV'
    { _arsgcXgafv :: !(Maybe Xgafv)
    , _arsgcLanguageCode :: !(Maybe Text)
    , _arsgcCurrencyCode :: !(Maybe Text)
    , _arsgcUploadProtocol :: !(Maybe Text)
    , _arsgcReportingTimeZone :: !(Maybe AccountsReportsSavedGenerateCSVReportingTimeZone)
    , _arsgcEndDateMonth :: !(Maybe (Textual Int32))
    , _arsgcAccessToken :: !(Maybe Text)
    , _arsgcDateRange :: !(Maybe AccountsReportsSavedGenerateCSVDateRange)
    , _arsgcUploadType :: !(Maybe Text)
    , _arsgcStartDateDay :: !(Maybe (Textual Int32))
    , _arsgcEndDateDay :: !(Maybe (Textual Int32))
    , _arsgcName :: !Text
    , _arsgcEndDateYear :: !(Maybe (Textual Int32))
    , _arsgcStartDateMonth :: !(Maybe (Textual Int32))
    , _arsgcStartDateYear :: !(Maybe (Textual Int32))
    , _arsgcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsReportsSavedGenerateCSV' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arsgcXgafv'
--
-- * 'arsgcLanguageCode'
--
-- * 'arsgcCurrencyCode'
--
-- * 'arsgcUploadProtocol'
--
-- * 'arsgcReportingTimeZone'
--
-- * 'arsgcEndDateMonth'
--
-- * 'arsgcAccessToken'
--
-- * 'arsgcDateRange'
--
-- * 'arsgcUploadType'
--
-- * 'arsgcStartDateDay'
--
-- * 'arsgcEndDateDay'
--
-- * 'arsgcName'
--
-- * 'arsgcEndDateYear'
--
-- * 'arsgcStartDateMonth'
--
-- * 'arsgcStartDateYear'
--
-- * 'arsgcCallback'
accountsReportsSavedGenerateCSV
    :: Text -- ^ 'arsgcName'
    -> AccountsReportsSavedGenerateCSV
accountsReportsSavedGenerateCSV pArsgcName_ =
  AccountsReportsSavedGenerateCSV'
    { _arsgcXgafv = Nothing
    , _arsgcLanguageCode = Nothing
    , _arsgcCurrencyCode = Nothing
    , _arsgcUploadProtocol = Nothing
    , _arsgcReportingTimeZone = Nothing
    , _arsgcEndDateMonth = Nothing
    , _arsgcAccessToken = Nothing
    , _arsgcDateRange = Nothing
    , _arsgcUploadType = Nothing
    , _arsgcStartDateDay = Nothing
    , _arsgcEndDateDay = Nothing
    , _arsgcName = pArsgcName_
    , _arsgcEndDateYear = Nothing
    , _arsgcStartDateMonth = Nothing
    , _arsgcStartDateYear = Nothing
    , _arsgcCallback = Nothing
    }


-- | V1 error format.
arsgcXgafv :: Lens' AccountsReportsSavedGenerateCSV (Maybe Xgafv)
arsgcXgafv
  = lens _arsgcXgafv (\ s a -> s{_arsgcXgafv = a})

-- | The language to use for translating report output. If unspecified, this
-- defaults to English (\"en\"). If the given language is not supported,
-- report output will be returned in English. The language is specified as
-- an [IETF BCP-47 language
-- code](https:\/\/en.wikipedia.org\/wiki\/IETF_language_tag).
arsgcLanguageCode :: Lens' AccountsReportsSavedGenerateCSV (Maybe Text)
arsgcLanguageCode
  = lens _arsgcLanguageCode
      (\ s a -> s{_arsgcLanguageCode = a})

-- | The [ISO-4217 currency code](https:\/\/en.wikipedia.org\/wiki\/ISO_4217)
-- to use when reporting on monetary metrics. Defaults to the account\'s
-- currency if not set.
arsgcCurrencyCode :: Lens' AccountsReportsSavedGenerateCSV (Maybe Text)
arsgcCurrencyCode
  = lens _arsgcCurrencyCode
      (\ s a -> s{_arsgcCurrencyCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
arsgcUploadProtocol :: Lens' AccountsReportsSavedGenerateCSV (Maybe Text)
arsgcUploadProtocol
  = lens _arsgcUploadProtocol
      (\ s a -> s{_arsgcUploadProtocol = a})

-- | Timezone in which to generate the report. If unspecified, this defaults
-- to the account timezone. For more information, see [changing the time
-- zone of your
-- reports](https:\/\/support.google.com\/adsense\/answer\/9830725).
arsgcReportingTimeZone :: Lens' AccountsReportsSavedGenerateCSV (Maybe AccountsReportsSavedGenerateCSVReportingTimeZone)
arsgcReportingTimeZone
  = lens _arsgcReportingTimeZone
      (\ s a -> s{_arsgcReportingTimeZone = a})

-- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a
-- month and day.
arsgcEndDateMonth :: Lens' AccountsReportsSavedGenerateCSV (Maybe Int32)
arsgcEndDateMonth
  = lens _arsgcEndDateMonth
      (\ s a -> s{_arsgcEndDateMonth = a})
      . mapping _Coerce

-- | OAuth access token.
arsgcAccessToken :: Lens' AccountsReportsSavedGenerateCSV (Maybe Text)
arsgcAccessToken
  = lens _arsgcAccessToken
      (\ s a -> s{_arsgcAccessToken = a})

-- | Date range of the report, if unset the range will be considered CUSTOM.
arsgcDateRange :: Lens' AccountsReportsSavedGenerateCSV (Maybe AccountsReportsSavedGenerateCSVDateRange)
arsgcDateRange
  = lens _arsgcDateRange
      (\ s a -> s{_arsgcDateRange = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
arsgcUploadType :: Lens' AccountsReportsSavedGenerateCSV (Maybe Text)
arsgcUploadType
  = lens _arsgcUploadType
      (\ s a -> s{_arsgcUploadType = a})

-- | Day of a month. Must be from 1 to 31 and valid for the year and month,
-- or 0 to specify a year by itself or a year and month where the day
-- isn\'t significant.
arsgcStartDateDay :: Lens' AccountsReportsSavedGenerateCSV (Maybe Int32)
arsgcStartDateDay
  = lens _arsgcStartDateDay
      (\ s a -> s{_arsgcStartDateDay = a})
      . mapping _Coerce

-- | Day of a month. Must be from 1 to 31 and valid for the year and month,
-- or 0 to specify a year by itself or a year and month where the day
-- isn\'t significant.
arsgcEndDateDay :: Lens' AccountsReportsSavedGenerateCSV (Maybe Int32)
arsgcEndDateDay
  = lens _arsgcEndDateDay
      (\ s a -> s{_arsgcEndDateDay = a})
      . mapping _Coerce

-- | Required. Name of the saved report. Format:
-- accounts\/{account}\/reports\/{report}
arsgcName :: Lens' AccountsReportsSavedGenerateCSV Text
arsgcName
  = lens _arsgcName (\ s a -> s{_arsgcName = a})

-- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without
-- a year.
arsgcEndDateYear :: Lens' AccountsReportsSavedGenerateCSV (Maybe Int32)
arsgcEndDateYear
  = lens _arsgcEndDateYear
      (\ s a -> s{_arsgcEndDateYear = a})
      . mapping _Coerce

-- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a
-- month and day.
arsgcStartDateMonth :: Lens' AccountsReportsSavedGenerateCSV (Maybe Int32)
arsgcStartDateMonth
  = lens _arsgcStartDateMonth
      (\ s a -> s{_arsgcStartDateMonth = a})
      . mapping _Coerce

-- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without
-- a year.
arsgcStartDateYear :: Lens' AccountsReportsSavedGenerateCSV (Maybe Int32)
arsgcStartDateYear
  = lens _arsgcStartDateYear
      (\ s a -> s{_arsgcStartDateYear = a})
      . mapping _Coerce

-- | JSONP
arsgcCallback :: Lens' AccountsReportsSavedGenerateCSV (Maybe Text)
arsgcCallback
  = lens _arsgcCallback
      (\ s a -> s{_arsgcCallback = a})

instance GoogleRequest
           AccountsReportsSavedGenerateCSV
         where
        type Rs AccountsReportsSavedGenerateCSV = HTTPBody
        type Scopes AccountsReportsSavedGenerateCSV =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsReportsSavedGenerateCSV'{..}
          = go _arsgcName _arsgcXgafv _arsgcLanguageCode
              _arsgcCurrencyCode
              _arsgcUploadProtocol
              _arsgcReportingTimeZone
              _arsgcEndDateMonth
              _arsgcAccessToken
              _arsgcDateRange
              _arsgcUploadType
              _arsgcStartDateDay
              _arsgcEndDateDay
              _arsgcEndDateYear
              _arsgcStartDateMonth
              _arsgcStartDateYear
              _arsgcCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsReportsSavedGenerateCSVResource)
                      mempty
