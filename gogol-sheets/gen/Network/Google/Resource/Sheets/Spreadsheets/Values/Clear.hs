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
-- Module      : Network.Google.Resource.Sheets.Spreadsheets.Values.Clear
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Clears values from a spreadsheet. The caller must specify the
-- spreadsheet ID and range. Only values are cleared -- all other
-- properties of the cell (such as formatting, data validation, etc..) are
-- kept.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.clear@.
module Network.Google.Resource.Sheets.Spreadsheets.Values.Clear
    (
    -- * REST Resource
      SpreadsheetsValuesClearResource

    -- * Creating a Request
    , spreadsheetsValuesClear
    , SpreadsheetsValuesClear

    -- * Request Lenses
    , svcXgafv
    , svcUploadProtocol
    , svcAccessToken
    , svcSpreadsheetId
    , svcUploadType
    , svcPayload
    , svcRange
    , svcCallback
    ) where

import Network.Google.Prelude
import Network.Google.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.clear@ method which the
-- 'SpreadsheetsValuesClear' request conforms to.
type SpreadsheetsValuesClearResource =
     "v4" :>
       "spreadsheets" :>
         Capture "spreadsheetId" Text :>
           "values" :>
             CaptureMode "range" "clear" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ClearValuesRequest :>
                             Post '[JSON] ClearValuesResponse

-- | Clears values from a spreadsheet. The caller must specify the
-- spreadsheet ID and range. Only values are cleared -- all other
-- properties of the cell (such as formatting, data validation, etc..) are
-- kept.
--
-- /See:/ 'spreadsheetsValuesClear' smart constructor.
data SpreadsheetsValuesClear =
  SpreadsheetsValuesClear'
    { _svcXgafv :: !(Maybe Xgafv)
    , _svcUploadProtocol :: !(Maybe Text)
    , _svcAccessToken :: !(Maybe Text)
    , _svcSpreadsheetId :: !Text
    , _svcUploadType :: !(Maybe Text)
    , _svcPayload :: !ClearValuesRequest
    , _svcRange :: !Text
    , _svcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpreadsheetsValuesClear' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svcXgafv'
--
-- * 'svcUploadProtocol'
--
-- * 'svcAccessToken'
--
-- * 'svcSpreadsheetId'
--
-- * 'svcUploadType'
--
-- * 'svcPayload'
--
-- * 'svcRange'
--
-- * 'svcCallback'
spreadsheetsValuesClear
    :: Text -- ^ 'svcSpreadsheetId'
    -> ClearValuesRequest -- ^ 'svcPayload'
    -> Text -- ^ 'svcRange'
    -> SpreadsheetsValuesClear
spreadsheetsValuesClear pSvcSpreadsheetId_ pSvcPayload_ pSvcRange_ =
  SpreadsheetsValuesClear'
    { _svcXgafv = Nothing
    , _svcUploadProtocol = Nothing
    , _svcAccessToken = Nothing
    , _svcSpreadsheetId = pSvcSpreadsheetId_
    , _svcUploadType = Nothing
    , _svcPayload = pSvcPayload_
    , _svcRange = pSvcRange_
    , _svcCallback = Nothing
    }


-- | V1 error format.
svcXgafv :: Lens' SpreadsheetsValuesClear (Maybe Xgafv)
svcXgafv = lens _svcXgafv (\ s a -> s{_svcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svcUploadProtocol :: Lens' SpreadsheetsValuesClear (Maybe Text)
svcUploadProtocol
  = lens _svcUploadProtocol
      (\ s a -> s{_svcUploadProtocol = a})

-- | OAuth access token.
svcAccessToken :: Lens' SpreadsheetsValuesClear (Maybe Text)
svcAccessToken
  = lens _svcAccessToken
      (\ s a -> s{_svcAccessToken = a})

-- | The ID of the spreadsheet to update.
svcSpreadsheetId :: Lens' SpreadsheetsValuesClear Text
svcSpreadsheetId
  = lens _svcSpreadsheetId
      (\ s a -> s{_svcSpreadsheetId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svcUploadType :: Lens' SpreadsheetsValuesClear (Maybe Text)
svcUploadType
  = lens _svcUploadType
      (\ s a -> s{_svcUploadType = a})

-- | Multipart request metadata.
svcPayload :: Lens' SpreadsheetsValuesClear ClearValuesRequest
svcPayload
  = lens _svcPayload (\ s a -> s{_svcPayload = a})

-- | The A1 notation or R1C1 notation of the values to clear.
svcRange :: Lens' SpreadsheetsValuesClear Text
svcRange = lens _svcRange (\ s a -> s{_svcRange = a})

-- | JSONP
svcCallback :: Lens' SpreadsheetsValuesClear (Maybe Text)
svcCallback
  = lens _svcCallback (\ s a -> s{_svcCallback = a})

instance GoogleRequest SpreadsheetsValuesClear where
        type Rs SpreadsheetsValuesClear = ClearValuesResponse
        type Scopes SpreadsheetsValuesClear =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/spreadsheets"]
        requestClient SpreadsheetsValuesClear'{..}
          = go _svcSpreadsheetId _svcRange _svcXgafv
              _svcUploadProtocol
              _svcAccessToken
              _svcUploadType
              _svcCallback
              (Just AltJSON)
              _svcPayload
              sheetsService
          where go
                  = buildClient
                      (Proxy :: Proxy SpreadsheetsValuesClearResource)
                      mempty
