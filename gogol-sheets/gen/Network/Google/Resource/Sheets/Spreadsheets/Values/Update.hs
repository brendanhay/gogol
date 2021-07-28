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
-- Module      : Network.Google.Resource.Sheets.Spreadsheets.Values.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets values in a range of a spreadsheet. The caller must specify the
-- spreadsheet ID, range, and a valueInputOption.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.update@.
module Network.Google.Resource.Sheets.Spreadsheets.Values.Update
    (
    -- * REST Resource
      SpreadsheetsValuesUpdateResource

    -- * Creating a Request
    , spreadsheetsValuesUpdate
    , SpreadsheetsValuesUpdate

    -- * Request Lenses
    , svuXgafv
    , svuUploadProtocol
    , svuAccessToken
    , svuSpreadsheetId
    , svuUploadType
    , svuValueInputOption
    , svuPayload
    , svuRange
    , svuIncludeValuesInResponse
    , svuResponseDateTimeRenderOption
    , svuCallback
    , svuResponseValueRenderOption
    ) where

import Network.Google.Prelude
import Network.Google.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.update@ method which the
-- 'SpreadsheetsValuesUpdate' request conforms to.
type SpreadsheetsValuesUpdateResource =
     "v4" :>
       "spreadsheets" :>
         Capture "spreadsheetId" Text :>
           "values" :>
             Capture "range" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "valueInputOption"
                         SpreadsheetsValuesUpdateValueInputOption
                         :>
                         QueryParam "includeValuesInResponse" Bool :>
                           QueryParam "responseDateTimeRenderOption"
                             SpreadsheetsValuesUpdateResponseDateTimeRenderOption
                             :>
                             QueryParam "callback" Text :>
                               QueryParam "responseValueRenderOption"
                                 SpreadsheetsValuesUpdateResponseValueRenderOption
                                 :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] ValueRange :>
                                     Put '[JSON] UpdateValuesResponse

-- | Sets values in a range of a spreadsheet. The caller must specify the
-- spreadsheet ID, range, and a valueInputOption.
--
-- /See:/ 'spreadsheetsValuesUpdate' smart constructor.
data SpreadsheetsValuesUpdate =
  SpreadsheetsValuesUpdate'
    { _svuXgafv :: !(Maybe Xgafv)
    , _svuUploadProtocol :: !(Maybe Text)
    , _svuAccessToken :: !(Maybe Text)
    , _svuSpreadsheetId :: !Text
    , _svuUploadType :: !(Maybe Text)
    , _svuValueInputOption :: !(Maybe SpreadsheetsValuesUpdateValueInputOption)
    , _svuPayload :: !ValueRange
    , _svuRange :: !Text
    , _svuIncludeValuesInResponse :: !(Maybe Bool)
    , _svuResponseDateTimeRenderOption :: !(Maybe SpreadsheetsValuesUpdateResponseDateTimeRenderOption)
    , _svuCallback :: !(Maybe Text)
    , _svuResponseValueRenderOption :: !(Maybe SpreadsheetsValuesUpdateResponseValueRenderOption)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpreadsheetsValuesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svuXgafv'
--
-- * 'svuUploadProtocol'
--
-- * 'svuAccessToken'
--
-- * 'svuSpreadsheetId'
--
-- * 'svuUploadType'
--
-- * 'svuValueInputOption'
--
-- * 'svuPayload'
--
-- * 'svuRange'
--
-- * 'svuIncludeValuesInResponse'
--
-- * 'svuResponseDateTimeRenderOption'
--
-- * 'svuCallback'
--
-- * 'svuResponseValueRenderOption'
spreadsheetsValuesUpdate
    :: Text -- ^ 'svuSpreadsheetId'
    -> ValueRange -- ^ 'svuPayload'
    -> Text -- ^ 'svuRange'
    -> SpreadsheetsValuesUpdate
spreadsheetsValuesUpdate pSvuSpreadsheetId_ pSvuPayload_ pSvuRange_ =
  SpreadsheetsValuesUpdate'
    { _svuXgafv = Nothing
    , _svuUploadProtocol = Nothing
    , _svuAccessToken = Nothing
    , _svuSpreadsheetId = pSvuSpreadsheetId_
    , _svuUploadType = Nothing
    , _svuValueInputOption = Nothing
    , _svuPayload = pSvuPayload_
    , _svuRange = pSvuRange_
    , _svuIncludeValuesInResponse = Nothing
    , _svuResponseDateTimeRenderOption = Nothing
    , _svuCallback = Nothing
    , _svuResponseValueRenderOption = Nothing
    }


-- | V1 error format.
svuXgafv :: Lens' SpreadsheetsValuesUpdate (Maybe Xgafv)
svuXgafv = lens _svuXgafv (\ s a -> s{_svuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svuUploadProtocol :: Lens' SpreadsheetsValuesUpdate (Maybe Text)
svuUploadProtocol
  = lens _svuUploadProtocol
      (\ s a -> s{_svuUploadProtocol = a})

-- | OAuth access token.
svuAccessToken :: Lens' SpreadsheetsValuesUpdate (Maybe Text)
svuAccessToken
  = lens _svuAccessToken
      (\ s a -> s{_svuAccessToken = a})

-- | The ID of the spreadsheet to update.
svuSpreadsheetId :: Lens' SpreadsheetsValuesUpdate Text
svuSpreadsheetId
  = lens _svuSpreadsheetId
      (\ s a -> s{_svuSpreadsheetId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svuUploadType :: Lens' SpreadsheetsValuesUpdate (Maybe Text)
svuUploadType
  = lens _svuUploadType
      (\ s a -> s{_svuUploadType = a})

-- | How the input data should be interpreted.
svuValueInputOption :: Lens' SpreadsheetsValuesUpdate (Maybe SpreadsheetsValuesUpdateValueInputOption)
svuValueInputOption
  = lens _svuValueInputOption
      (\ s a -> s{_svuValueInputOption = a})

-- | Multipart request metadata.
svuPayload :: Lens' SpreadsheetsValuesUpdate ValueRange
svuPayload
  = lens _svuPayload (\ s a -> s{_svuPayload = a})

-- | The A1 notation of the values to update.
svuRange :: Lens' SpreadsheetsValuesUpdate Text
svuRange = lens _svuRange (\ s a -> s{_svuRange = a})

-- | Determines if the update response should include the values of the cells
-- that were updated. By default, responses do not include the updated
-- values. If the range to write was larger than the range actually
-- written, the response includes all values in the requested range
-- (excluding trailing empty rows and columns).
svuIncludeValuesInResponse :: Lens' SpreadsheetsValuesUpdate (Maybe Bool)
svuIncludeValuesInResponse
  = lens _svuIncludeValuesInResponse
      (\ s a -> s{_svuIncludeValuesInResponse = a})

-- | Determines how dates, times, and durations in the response should be
-- rendered. This is ignored if response_value_render_option is
-- FORMATTED_VALUE. The default dateTime render option is SERIAL_NUMBER.
svuResponseDateTimeRenderOption :: Lens' SpreadsheetsValuesUpdate (Maybe SpreadsheetsValuesUpdateResponseDateTimeRenderOption)
svuResponseDateTimeRenderOption
  = lens _svuResponseDateTimeRenderOption
      (\ s a -> s{_svuResponseDateTimeRenderOption = a})

-- | JSONP
svuCallback :: Lens' SpreadsheetsValuesUpdate (Maybe Text)
svuCallback
  = lens _svuCallback (\ s a -> s{_svuCallback = a})

-- | Determines how values in the response should be rendered. The default
-- render option is FORMATTED_VALUE.
svuResponseValueRenderOption :: Lens' SpreadsheetsValuesUpdate (Maybe SpreadsheetsValuesUpdateResponseValueRenderOption)
svuResponseValueRenderOption
  = lens _svuResponseValueRenderOption
      (\ s a -> s{_svuResponseValueRenderOption = a})

instance GoogleRequest SpreadsheetsValuesUpdate where
        type Rs SpreadsheetsValuesUpdate =
             UpdateValuesResponse
        type Scopes SpreadsheetsValuesUpdate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/spreadsheets"]
        requestClient SpreadsheetsValuesUpdate'{..}
          = go _svuSpreadsheetId _svuRange _svuXgafv
              _svuUploadProtocol
              _svuAccessToken
              _svuUploadType
              _svuValueInputOption
              _svuIncludeValuesInResponse
              _svuResponseDateTimeRenderOption
              _svuCallback
              _svuResponseValueRenderOption
              (Just AltJSON)
              _svuPayload
              sheetsService
          where go
                  = buildClient
                      (Proxy :: Proxy SpreadsheetsValuesUpdateResource)
                      mempty
