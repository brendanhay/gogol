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
-- Module      : Network.Google.Resource.Sheets.Spreadsheets.Values.BatchGet
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns one or more ranges of values from a spreadsheet. The caller must
-- specify the spreadsheet ID and one or more ranges.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.batchGet@.
module Network.Google.Resource.Sheets.Spreadsheets.Values.BatchGet
    (
    -- * REST Resource
      SpreadsheetsValuesBatchGetResource

    -- * Creating a Request
    , spreadsheetsValuesBatchGet
    , SpreadsheetsValuesBatchGet

    -- * Request Lenses
    , svbgXgafv
    , svbgValueRenderOption
    , svbgUploadProtocol
    , svbgAccessToken
    , svbgSpreadsheetId
    , svbgUploadType
    , svbgRanges
    , svbgDateTimeRenderOption
    , svbgMajorDimension
    , svbgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.batchGet@ method which the
-- 'SpreadsheetsValuesBatchGet' request conforms to.
type SpreadsheetsValuesBatchGetResource =
     "v4" :>
       "spreadsheets" :>
         Capture "spreadsheetId" Text :>
           "values:batchGet" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "valueRenderOption" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParams "ranges" Text :>
                         QueryParam "dateTimeRenderOption" Text :>
                           QueryParam "majorDimension" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] BatchGetValuesResponse

-- | Returns one or more ranges of values from a spreadsheet. The caller must
-- specify the spreadsheet ID and one or more ranges.
--
-- /See:/ 'spreadsheetsValuesBatchGet' smart constructor.
data SpreadsheetsValuesBatchGet =
  SpreadsheetsValuesBatchGet'
    { _svbgXgafv                :: !(Maybe Xgafv)
    , _svbgValueRenderOption    :: !(Maybe Text)
    , _svbgUploadProtocol       :: !(Maybe Text)
    , _svbgAccessToken          :: !(Maybe Text)
    , _svbgSpreadsheetId        :: !Text
    , _svbgUploadType           :: !(Maybe Text)
    , _svbgRanges               :: !(Maybe [Text])
    , _svbgDateTimeRenderOption :: !(Maybe Text)
    , _svbgMajorDimension       :: !(Maybe Text)
    , _svbgCallback             :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpreadsheetsValuesBatchGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svbgXgafv'
--
-- * 'svbgValueRenderOption'
--
-- * 'svbgUploadProtocol'
--
-- * 'svbgAccessToken'
--
-- * 'svbgSpreadsheetId'
--
-- * 'svbgUploadType'
--
-- * 'svbgRanges'
--
-- * 'svbgDateTimeRenderOption'
--
-- * 'svbgMajorDimension'
--
-- * 'svbgCallback'
spreadsheetsValuesBatchGet
    :: Text -- ^ 'svbgSpreadsheetId'
    -> SpreadsheetsValuesBatchGet
spreadsheetsValuesBatchGet pSvbgSpreadsheetId_ =
  SpreadsheetsValuesBatchGet'
    { _svbgXgafv = Nothing
    , _svbgValueRenderOption = Nothing
    , _svbgUploadProtocol = Nothing
    , _svbgAccessToken = Nothing
    , _svbgSpreadsheetId = pSvbgSpreadsheetId_
    , _svbgUploadType = Nothing
    , _svbgRanges = Nothing
    , _svbgDateTimeRenderOption = Nothing
    , _svbgMajorDimension = Nothing
    , _svbgCallback = Nothing
    }


-- | V1 error format.
svbgXgafv :: Lens' SpreadsheetsValuesBatchGet (Maybe Xgafv)
svbgXgafv
  = lens _svbgXgafv (\ s a -> s{_svbgXgafv = a})

-- | How values should be represented in the output. The default render
-- option is ValueRenderOption.FORMATTED_VALUE.
svbgValueRenderOption :: Lens' SpreadsheetsValuesBatchGet (Maybe Text)
svbgValueRenderOption
  = lens _svbgValueRenderOption
      (\ s a -> s{_svbgValueRenderOption = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svbgUploadProtocol :: Lens' SpreadsheetsValuesBatchGet (Maybe Text)
svbgUploadProtocol
  = lens _svbgUploadProtocol
      (\ s a -> s{_svbgUploadProtocol = a})

-- | OAuth access token.
svbgAccessToken :: Lens' SpreadsheetsValuesBatchGet (Maybe Text)
svbgAccessToken
  = lens _svbgAccessToken
      (\ s a -> s{_svbgAccessToken = a})

-- | The ID of the spreadsheet to retrieve data from.
svbgSpreadsheetId :: Lens' SpreadsheetsValuesBatchGet Text
svbgSpreadsheetId
  = lens _svbgSpreadsheetId
      (\ s a -> s{_svbgSpreadsheetId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svbgUploadType :: Lens' SpreadsheetsValuesBatchGet (Maybe Text)
svbgUploadType
  = lens _svbgUploadType
      (\ s a -> s{_svbgUploadType = a})

-- | The A1 notation of the values to retrieve.
svbgRanges :: Lens' SpreadsheetsValuesBatchGet [Text]
svbgRanges
  = lens _svbgRanges (\ s a -> s{_svbgRanges = a}) .
      _Default
      . _Coerce

-- | How dates, times, and durations should be represented in the output.
-- This is ignored if value_render_option is FORMATTED_VALUE. The default
-- dateTime render option is [DateTimeRenderOption.SERIAL_NUMBER].
svbgDateTimeRenderOption :: Lens' SpreadsheetsValuesBatchGet (Maybe Text)
svbgDateTimeRenderOption
  = lens _svbgDateTimeRenderOption
      (\ s a -> s{_svbgDateTimeRenderOption = a})

-- | The major dimension that results should use. For example, if the
-- spreadsheet data is: \`A1=1,B1=2,A2=3,B2=4\`, then requesting
-- \`range=A1:B2,majorDimension=ROWS\` will return \`[[1,2],[3,4]]\`,
-- whereas requesting \`range=A1:B2,majorDimension=COLUMNS\` will return
-- \`[[1,3],[2,4]]\`.
svbgMajorDimension :: Lens' SpreadsheetsValuesBatchGet (Maybe Text)
svbgMajorDimension
  = lens _svbgMajorDimension
      (\ s a -> s{_svbgMajorDimension = a})

-- | JSONP
svbgCallback :: Lens' SpreadsheetsValuesBatchGet (Maybe Text)
svbgCallback
  = lens _svbgCallback (\ s a -> s{_svbgCallback = a})

instance GoogleRequest SpreadsheetsValuesBatchGet
         where
        type Rs SpreadsheetsValuesBatchGet =
             BatchGetValuesResponse
        type Scopes SpreadsheetsValuesBatchGet =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.readonly",
               "https://www.googleapis.com/auth/spreadsheets",
               "https://www.googleapis.com/auth/spreadsheets.readonly"]
        requestClient SpreadsheetsValuesBatchGet'{..}
          = go _svbgSpreadsheetId _svbgXgafv
              _svbgValueRenderOption
              _svbgUploadProtocol
              _svbgAccessToken
              _svbgUploadType
              (_svbgRanges ^. _Default)
              _svbgDateTimeRenderOption
              _svbgMajorDimension
              _svbgCallback
              (Just AltJSON)
              sheetsService
          where go
                  = buildClient
                      (Proxy :: Proxy SpreadsheetsValuesBatchGetResource)
                      mempty
