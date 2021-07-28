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
-- Module      : Network.Google.Resource.Sheets.Spreadsheets.Values.Append
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Appends values to a spreadsheet. The input range is used to search for
-- existing data and find a \"table\" within that range. Values will be
-- appended to the next row of the table, starting with the first column of
-- the table. See the
-- [guide](\/sheets\/api\/guides\/values#appending_values) and [sample
-- code](\/sheets\/api\/samples\/writing#append_values) for specific
-- details of how tables are detected and data is appended. The caller must
-- specify the spreadsheet ID, range, and a valueInputOption. The
-- \`valueInputOption\` only controls how the input data will be added to
-- the sheet (column-wise or row-wise), it does not influence what cell the
-- data starts being written to.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.append@.
module Network.Google.Resource.Sheets.Spreadsheets.Values.Append
    (
    -- * REST Resource
      SpreadsheetsValuesAppendResource

    -- * Creating a Request
    , spreadsheetsValuesAppend
    , SpreadsheetsValuesAppend

    -- * Request Lenses
    , svaXgafv
    , svaUploadProtocol
    , svaAccessToken
    , svaSpreadsheetId
    , svaUploadType
    , svaValueInputOption
    , svaPayload
    , svaInsertDataOption
    , svaRange
    , svaIncludeValuesInResponse
    , svaResponseDateTimeRenderOption
    , svaCallback
    , svaResponseValueRenderOption
    ) where

import Network.Google.Prelude
import Network.Google.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.append@ method which the
-- 'SpreadsheetsValuesAppend' request conforms to.
type SpreadsheetsValuesAppendResource =
     "v4" :>
       "spreadsheets" :>
         Capture "spreadsheetId" Text :>
           "values" :>
             CaptureMode "range" "append" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "valueInputOption"
                         SpreadsheetsValuesAppendValueInputOption
                         :>
                         QueryParam "insertDataOption"
                           SpreadsheetsValuesAppendInsertDataOption
                           :>
                           QueryParam "includeValuesInResponse" Bool :>
                             QueryParam "responseDateTimeRenderOption"
                               SpreadsheetsValuesAppendResponseDateTimeRenderOption
                               :>
                               QueryParam "callback" Text :>
                                 QueryParam "responseValueRenderOption"
                                   SpreadsheetsValuesAppendResponseValueRenderOption
                                   :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] ValueRange :>
                                       Post '[JSON] AppendValuesResponse

-- | Appends values to a spreadsheet. The input range is used to search for
-- existing data and find a \"table\" within that range. Values will be
-- appended to the next row of the table, starting with the first column of
-- the table. See the
-- [guide](\/sheets\/api\/guides\/values#appending_values) and [sample
-- code](\/sheets\/api\/samples\/writing#append_values) for specific
-- details of how tables are detected and data is appended. The caller must
-- specify the spreadsheet ID, range, and a valueInputOption. The
-- \`valueInputOption\` only controls how the input data will be added to
-- the sheet (column-wise or row-wise), it does not influence what cell the
-- data starts being written to.
--
-- /See:/ 'spreadsheetsValuesAppend' smart constructor.
data SpreadsheetsValuesAppend =
  SpreadsheetsValuesAppend'
    { _svaXgafv :: !(Maybe Xgafv)
    , _svaUploadProtocol :: !(Maybe Text)
    , _svaAccessToken :: !(Maybe Text)
    , _svaSpreadsheetId :: !Text
    , _svaUploadType :: !(Maybe Text)
    , _svaValueInputOption :: !(Maybe SpreadsheetsValuesAppendValueInputOption)
    , _svaPayload :: !ValueRange
    , _svaInsertDataOption :: !(Maybe SpreadsheetsValuesAppendInsertDataOption)
    , _svaRange :: !Text
    , _svaIncludeValuesInResponse :: !(Maybe Bool)
    , _svaResponseDateTimeRenderOption :: !(Maybe SpreadsheetsValuesAppendResponseDateTimeRenderOption)
    , _svaCallback :: !(Maybe Text)
    , _svaResponseValueRenderOption :: !(Maybe SpreadsheetsValuesAppendResponseValueRenderOption)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpreadsheetsValuesAppend' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svaXgafv'
--
-- * 'svaUploadProtocol'
--
-- * 'svaAccessToken'
--
-- * 'svaSpreadsheetId'
--
-- * 'svaUploadType'
--
-- * 'svaValueInputOption'
--
-- * 'svaPayload'
--
-- * 'svaInsertDataOption'
--
-- * 'svaRange'
--
-- * 'svaIncludeValuesInResponse'
--
-- * 'svaResponseDateTimeRenderOption'
--
-- * 'svaCallback'
--
-- * 'svaResponseValueRenderOption'
spreadsheetsValuesAppend
    :: Text -- ^ 'svaSpreadsheetId'
    -> ValueRange -- ^ 'svaPayload'
    -> Text -- ^ 'svaRange'
    -> SpreadsheetsValuesAppend
spreadsheetsValuesAppend pSvaSpreadsheetId_ pSvaPayload_ pSvaRange_ =
  SpreadsheetsValuesAppend'
    { _svaXgafv = Nothing
    , _svaUploadProtocol = Nothing
    , _svaAccessToken = Nothing
    , _svaSpreadsheetId = pSvaSpreadsheetId_
    , _svaUploadType = Nothing
    , _svaValueInputOption = Nothing
    , _svaPayload = pSvaPayload_
    , _svaInsertDataOption = Nothing
    , _svaRange = pSvaRange_
    , _svaIncludeValuesInResponse = Nothing
    , _svaResponseDateTimeRenderOption = Nothing
    , _svaCallback = Nothing
    , _svaResponseValueRenderOption = Nothing
    }


-- | V1 error format.
svaXgafv :: Lens' SpreadsheetsValuesAppend (Maybe Xgafv)
svaXgafv = lens _svaXgafv (\ s a -> s{_svaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svaUploadProtocol :: Lens' SpreadsheetsValuesAppend (Maybe Text)
svaUploadProtocol
  = lens _svaUploadProtocol
      (\ s a -> s{_svaUploadProtocol = a})

-- | OAuth access token.
svaAccessToken :: Lens' SpreadsheetsValuesAppend (Maybe Text)
svaAccessToken
  = lens _svaAccessToken
      (\ s a -> s{_svaAccessToken = a})

-- | The ID of the spreadsheet to update.
svaSpreadsheetId :: Lens' SpreadsheetsValuesAppend Text
svaSpreadsheetId
  = lens _svaSpreadsheetId
      (\ s a -> s{_svaSpreadsheetId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svaUploadType :: Lens' SpreadsheetsValuesAppend (Maybe Text)
svaUploadType
  = lens _svaUploadType
      (\ s a -> s{_svaUploadType = a})

-- | How the input data should be interpreted.
svaValueInputOption :: Lens' SpreadsheetsValuesAppend (Maybe SpreadsheetsValuesAppendValueInputOption)
svaValueInputOption
  = lens _svaValueInputOption
      (\ s a -> s{_svaValueInputOption = a})

-- | Multipart request metadata.
svaPayload :: Lens' SpreadsheetsValuesAppend ValueRange
svaPayload
  = lens _svaPayload (\ s a -> s{_svaPayload = a})

-- | How the input data should be inserted.
svaInsertDataOption :: Lens' SpreadsheetsValuesAppend (Maybe SpreadsheetsValuesAppendInsertDataOption)
svaInsertDataOption
  = lens _svaInsertDataOption
      (\ s a -> s{_svaInsertDataOption = a})

-- | The A1 notation of a range to search for a logical table of data. Values
-- are appended after the last row of the table.
svaRange :: Lens' SpreadsheetsValuesAppend Text
svaRange = lens _svaRange (\ s a -> s{_svaRange = a})

-- | Determines if the update response should include the values of the cells
-- that were appended. By default, responses do not include the updated
-- values.
svaIncludeValuesInResponse :: Lens' SpreadsheetsValuesAppend (Maybe Bool)
svaIncludeValuesInResponse
  = lens _svaIncludeValuesInResponse
      (\ s a -> s{_svaIncludeValuesInResponse = a})

-- | Determines how dates, times, and durations in the response should be
-- rendered. This is ignored if response_value_render_option is
-- FORMATTED_VALUE. The default dateTime render option is SERIAL_NUMBER.
svaResponseDateTimeRenderOption :: Lens' SpreadsheetsValuesAppend (Maybe SpreadsheetsValuesAppendResponseDateTimeRenderOption)
svaResponseDateTimeRenderOption
  = lens _svaResponseDateTimeRenderOption
      (\ s a -> s{_svaResponseDateTimeRenderOption = a})

-- | JSONP
svaCallback :: Lens' SpreadsheetsValuesAppend (Maybe Text)
svaCallback
  = lens _svaCallback (\ s a -> s{_svaCallback = a})

-- | Determines how values in the response should be rendered. The default
-- render option is FORMATTED_VALUE.
svaResponseValueRenderOption :: Lens' SpreadsheetsValuesAppend (Maybe SpreadsheetsValuesAppendResponseValueRenderOption)
svaResponseValueRenderOption
  = lens _svaResponseValueRenderOption
      (\ s a -> s{_svaResponseValueRenderOption = a})

instance GoogleRequest SpreadsheetsValuesAppend where
        type Rs SpreadsheetsValuesAppend =
             AppendValuesResponse
        type Scopes SpreadsheetsValuesAppend =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/spreadsheets"]
        requestClient SpreadsheetsValuesAppend'{..}
          = go _svaSpreadsheetId _svaRange _svaXgafv
              _svaUploadProtocol
              _svaAccessToken
              _svaUploadType
              _svaValueInputOption
              _svaInsertDataOption
              _svaIncludeValuesInResponse
              _svaResponseDateTimeRenderOption
              _svaCallback
              _svaResponseValueRenderOption
              (Just AltJSON)
              _svaPayload
              sheetsService
          where go
                  = buildClient
                      (Proxy :: Proxy SpreadsheetsValuesAppendResource)
                      mempty
