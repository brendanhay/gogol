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
-- Module      : Network.Google.Resource.AdSense.Accounts.Reports.Saved.Generate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a saved report.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.reports.saved.generate@.
module Network.Google.Resource.AdSense.Accounts.Reports.Saved.Generate
    (
    -- * REST Resource
      AccountsReportsSavedGenerateResource

    -- * Creating a Request
    , accountsReportsSavedGenerate
    , AccountsReportsSavedGenerate

    -- * Request Lenses
    , arsgXgafv
    , arsgLanguageCode
    , arsgCurrencyCode
    , arsgUploadProtocol
    , arsgReportingTimeZone
    , arsgEndDateMonth
    , arsgAccessToken
    , arsgDateRange
    , arsgUploadType
    , arsgStartDateDay
    , arsgEndDateDay
    , arsgName
    , arsgEndDateYear
    , arsgStartDateMonth
    , arsgStartDateYear
    , arsgCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.reports.saved.generate@ method which the
-- 'AccountsReportsSavedGenerate' request conforms to.
type AccountsReportsSavedGenerateResource =
     "v2" :>
       Capture "name" Text :>
         "saved:generate" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "currencyCode" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "reportingTimeZone"
                     AccountsReportsSavedGenerateReportingTimeZone
                     :>
                     QueryParam "endDate.month" (Textual Int32) :>
                       QueryParam "access_token" Text :>
                         QueryParam "dateRange"
                           AccountsReportsSavedGenerateDateRange
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
                                           Get '[JSON] ReportResult

-- | Generates a saved report.
--
-- /See:/ 'accountsReportsSavedGenerate' smart constructor.
data AccountsReportsSavedGenerate =
  AccountsReportsSavedGenerate'
    { _arsgXgafv :: !(Maybe Xgafv)
    , _arsgLanguageCode :: !(Maybe Text)
    , _arsgCurrencyCode :: !(Maybe Text)
    , _arsgUploadProtocol :: !(Maybe Text)
    , _arsgReportingTimeZone :: !(Maybe AccountsReportsSavedGenerateReportingTimeZone)
    , _arsgEndDateMonth :: !(Maybe (Textual Int32))
    , _arsgAccessToken :: !(Maybe Text)
    , _arsgDateRange :: !(Maybe AccountsReportsSavedGenerateDateRange)
    , _arsgUploadType :: !(Maybe Text)
    , _arsgStartDateDay :: !(Maybe (Textual Int32))
    , _arsgEndDateDay :: !(Maybe (Textual Int32))
    , _arsgName :: !Text
    , _arsgEndDateYear :: !(Maybe (Textual Int32))
    , _arsgStartDateMonth :: !(Maybe (Textual Int32))
    , _arsgStartDateYear :: !(Maybe (Textual Int32))
    , _arsgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsReportsSavedGenerate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arsgXgafv'
--
-- * 'arsgLanguageCode'
--
-- * 'arsgCurrencyCode'
--
-- * 'arsgUploadProtocol'
--
-- * 'arsgReportingTimeZone'
--
-- * 'arsgEndDateMonth'
--
-- * 'arsgAccessToken'
--
-- * 'arsgDateRange'
--
-- * 'arsgUploadType'
--
-- * 'arsgStartDateDay'
--
-- * 'arsgEndDateDay'
--
-- * 'arsgName'
--
-- * 'arsgEndDateYear'
--
-- * 'arsgStartDateMonth'
--
-- * 'arsgStartDateYear'
--
-- * 'arsgCallback'
accountsReportsSavedGenerate
    :: Text -- ^ 'arsgName'
    -> AccountsReportsSavedGenerate
accountsReportsSavedGenerate pArsgName_ =
  AccountsReportsSavedGenerate'
    { _arsgXgafv = Nothing
    , _arsgLanguageCode = Nothing
    , _arsgCurrencyCode = Nothing
    , _arsgUploadProtocol = Nothing
    , _arsgReportingTimeZone = Nothing
    , _arsgEndDateMonth = Nothing
    , _arsgAccessToken = Nothing
    , _arsgDateRange = Nothing
    , _arsgUploadType = Nothing
    , _arsgStartDateDay = Nothing
    , _arsgEndDateDay = Nothing
    , _arsgName = pArsgName_
    , _arsgEndDateYear = Nothing
    , _arsgStartDateMonth = Nothing
    , _arsgStartDateYear = Nothing
    , _arsgCallback = Nothing
    }


-- | V1 error format.
arsgXgafv :: Lens' AccountsReportsSavedGenerate (Maybe Xgafv)
arsgXgafv
  = lens _arsgXgafv (\ s a -> s{_arsgXgafv = a})

-- | The language to use for translating report output. If unspecified, this
-- defaults to English (\"en\"). If the given language is not supported,
-- report output will be returned in English. The language is specified as
-- an [IETF BCP-47 language
-- code](https:\/\/en.wikipedia.org\/wiki\/IETF_language_tag).
arsgLanguageCode :: Lens' AccountsReportsSavedGenerate (Maybe Text)
arsgLanguageCode
  = lens _arsgLanguageCode
      (\ s a -> s{_arsgLanguageCode = a})

-- | The [ISO-4217 currency code](https:\/\/en.wikipedia.org\/wiki\/ISO_4217)
-- to use when reporting on monetary metrics. Defaults to the account\'s
-- currency if not set.
arsgCurrencyCode :: Lens' AccountsReportsSavedGenerate (Maybe Text)
arsgCurrencyCode
  = lens _arsgCurrencyCode
      (\ s a -> s{_arsgCurrencyCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
arsgUploadProtocol :: Lens' AccountsReportsSavedGenerate (Maybe Text)
arsgUploadProtocol
  = lens _arsgUploadProtocol
      (\ s a -> s{_arsgUploadProtocol = a})

-- | Timezone in which to generate the report. If unspecified, this defaults
-- to the account timezone. For more information, see [changing the time
-- zone of your
-- reports](https:\/\/support.google.com\/adsense\/answer\/9830725).
arsgReportingTimeZone :: Lens' AccountsReportsSavedGenerate (Maybe AccountsReportsSavedGenerateReportingTimeZone)
arsgReportingTimeZone
  = lens _arsgReportingTimeZone
      (\ s a -> s{_arsgReportingTimeZone = a})

-- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a
-- month and day.
arsgEndDateMonth :: Lens' AccountsReportsSavedGenerate (Maybe Int32)
arsgEndDateMonth
  = lens _arsgEndDateMonth
      (\ s a -> s{_arsgEndDateMonth = a})
      . mapping _Coerce

-- | OAuth access token.
arsgAccessToken :: Lens' AccountsReportsSavedGenerate (Maybe Text)
arsgAccessToken
  = lens _arsgAccessToken
      (\ s a -> s{_arsgAccessToken = a})

-- | Date range of the report, if unset the range will be considered CUSTOM.
arsgDateRange :: Lens' AccountsReportsSavedGenerate (Maybe AccountsReportsSavedGenerateDateRange)
arsgDateRange
  = lens _arsgDateRange
      (\ s a -> s{_arsgDateRange = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
arsgUploadType :: Lens' AccountsReportsSavedGenerate (Maybe Text)
arsgUploadType
  = lens _arsgUploadType
      (\ s a -> s{_arsgUploadType = a})

-- | Day of a month. Must be from 1 to 31 and valid for the year and month,
-- or 0 to specify a year by itself or a year and month where the day
-- isn\'t significant.
arsgStartDateDay :: Lens' AccountsReportsSavedGenerate (Maybe Int32)
arsgStartDateDay
  = lens _arsgStartDateDay
      (\ s a -> s{_arsgStartDateDay = a})
      . mapping _Coerce

-- | Day of a month. Must be from 1 to 31 and valid for the year and month,
-- or 0 to specify a year by itself or a year and month where the day
-- isn\'t significant.
arsgEndDateDay :: Lens' AccountsReportsSavedGenerate (Maybe Int32)
arsgEndDateDay
  = lens _arsgEndDateDay
      (\ s a -> s{_arsgEndDateDay = a})
      . mapping _Coerce

-- | Required. Name of the saved report. Format:
-- accounts\/{account}\/reports\/{report}
arsgName :: Lens' AccountsReportsSavedGenerate Text
arsgName = lens _arsgName (\ s a -> s{_arsgName = a})

-- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without
-- a year.
arsgEndDateYear :: Lens' AccountsReportsSavedGenerate (Maybe Int32)
arsgEndDateYear
  = lens _arsgEndDateYear
      (\ s a -> s{_arsgEndDateYear = a})
      . mapping _Coerce

-- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a
-- month and day.
arsgStartDateMonth :: Lens' AccountsReportsSavedGenerate (Maybe Int32)
arsgStartDateMonth
  = lens _arsgStartDateMonth
      (\ s a -> s{_arsgStartDateMonth = a})
      . mapping _Coerce

-- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without
-- a year.
arsgStartDateYear :: Lens' AccountsReportsSavedGenerate (Maybe Int32)
arsgStartDateYear
  = lens _arsgStartDateYear
      (\ s a -> s{_arsgStartDateYear = a})
      . mapping _Coerce

-- | JSONP
arsgCallback :: Lens' AccountsReportsSavedGenerate (Maybe Text)
arsgCallback
  = lens _arsgCallback (\ s a -> s{_arsgCallback = a})

instance GoogleRequest AccountsReportsSavedGenerate
         where
        type Rs AccountsReportsSavedGenerate = ReportResult
        type Scopes AccountsReportsSavedGenerate =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsReportsSavedGenerate'{..}
          = go _arsgName _arsgXgafv _arsgLanguageCode
              _arsgCurrencyCode
              _arsgUploadProtocol
              _arsgReportingTimeZone
              _arsgEndDateMonth
              _arsgAccessToken
              _arsgDateRange
              _arsgUploadType
              _arsgStartDateDay
              _arsgEndDateDay
              _arsgEndDateYear
              _arsgStartDateMonth
              _arsgStartDateYear
              _arsgCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsReportsSavedGenerateResource)
                      mempty
