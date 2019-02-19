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
-- Module      : Network.Google.Resource.Sheets.Spreadsheets.Sheets.CopyTo
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies a single sheet from a spreadsheet to another spreadsheet. Returns
-- the properties of the newly created sheet.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.sheets.copyTo@.
module Network.Google.Resource.Sheets.Spreadsheets.Sheets.CopyTo
    (
    -- * REST Resource
      SpreadsheetsSheetsCopyToResource

    -- * Creating a Request
    , spreadsheetsSheetsCopyTo
    , SpreadsheetsSheetsCopyTo

    -- * Request Lenses
    , ssctXgafv
    , ssctUploadProtocol
    , ssctAccessToken
    , ssctSpreadsheetId
    , ssctUploadType
    , ssctPayload
    , ssctSheetId
    , ssctCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.sheets.copyTo@ method which the
-- 'SpreadsheetsSheetsCopyTo' request conforms to.
type SpreadsheetsSheetsCopyToResource =
     "v4" :>
       "spreadsheets" :>
         Capture "spreadsheetId" Text :>
           "sheets" :>
             CaptureMode "sheetId" "copyTo" (Textual Int32) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] CopySheetToAnotherSpreadsheetRequest
                             :> Post '[JSON] SheetProperties

-- | Copies a single sheet from a spreadsheet to another spreadsheet. Returns
-- the properties of the newly created sheet.
--
-- /See:/ 'spreadsheetsSheetsCopyTo' smart constructor.
data SpreadsheetsSheetsCopyTo =
  SpreadsheetsSheetsCopyTo'
    { _ssctXgafv          :: !(Maybe Xgafv)
    , _ssctUploadProtocol :: !(Maybe Text)
    , _ssctAccessToken    :: !(Maybe Text)
    , _ssctSpreadsheetId  :: !Text
    , _ssctUploadType     :: !(Maybe Text)
    , _ssctPayload        :: !CopySheetToAnotherSpreadsheetRequest
    , _ssctSheetId        :: !(Textual Int32)
    , _ssctCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpreadsheetsSheetsCopyTo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssctXgafv'
--
-- * 'ssctUploadProtocol'
--
-- * 'ssctAccessToken'
--
-- * 'ssctSpreadsheetId'
--
-- * 'ssctUploadType'
--
-- * 'ssctPayload'
--
-- * 'ssctSheetId'
--
-- * 'ssctCallback'
spreadsheetsSheetsCopyTo
    :: Text -- ^ 'ssctSpreadsheetId'
    -> CopySheetToAnotherSpreadsheetRequest -- ^ 'ssctPayload'
    -> Int32 -- ^ 'ssctSheetId'
    -> SpreadsheetsSheetsCopyTo
spreadsheetsSheetsCopyTo pSsctSpreadsheetId_ pSsctPayload_ pSsctSheetId_ =
  SpreadsheetsSheetsCopyTo'
    { _ssctXgafv = Nothing
    , _ssctUploadProtocol = Nothing
    , _ssctAccessToken = Nothing
    , _ssctSpreadsheetId = pSsctSpreadsheetId_
    , _ssctUploadType = Nothing
    , _ssctPayload = pSsctPayload_
    , _ssctSheetId = _Coerce # pSsctSheetId_
    , _ssctCallback = Nothing
    }


-- | V1 error format.
ssctXgafv :: Lens' SpreadsheetsSheetsCopyTo (Maybe Xgafv)
ssctXgafv
  = lens _ssctXgafv (\ s a -> s{_ssctXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssctUploadProtocol :: Lens' SpreadsheetsSheetsCopyTo (Maybe Text)
ssctUploadProtocol
  = lens _ssctUploadProtocol
      (\ s a -> s{_ssctUploadProtocol = a})

-- | OAuth access token.
ssctAccessToken :: Lens' SpreadsheetsSheetsCopyTo (Maybe Text)
ssctAccessToken
  = lens _ssctAccessToken
      (\ s a -> s{_ssctAccessToken = a})

-- | The ID of the spreadsheet containing the sheet to copy.
ssctSpreadsheetId :: Lens' SpreadsheetsSheetsCopyTo Text
ssctSpreadsheetId
  = lens _ssctSpreadsheetId
      (\ s a -> s{_ssctSpreadsheetId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssctUploadType :: Lens' SpreadsheetsSheetsCopyTo (Maybe Text)
ssctUploadType
  = lens _ssctUploadType
      (\ s a -> s{_ssctUploadType = a})

-- | Multipart request metadata.
ssctPayload :: Lens' SpreadsheetsSheetsCopyTo CopySheetToAnotherSpreadsheetRequest
ssctPayload
  = lens _ssctPayload (\ s a -> s{_ssctPayload = a})

-- | The ID of the sheet to copy.
ssctSheetId :: Lens' SpreadsheetsSheetsCopyTo Int32
ssctSheetId
  = lens _ssctSheetId (\ s a -> s{_ssctSheetId = a}) .
      _Coerce

-- | JSONP
ssctCallback :: Lens' SpreadsheetsSheetsCopyTo (Maybe Text)
ssctCallback
  = lens _ssctCallback (\ s a -> s{_ssctCallback = a})

instance GoogleRequest SpreadsheetsSheetsCopyTo where
        type Rs SpreadsheetsSheetsCopyTo = SheetProperties
        type Scopes SpreadsheetsSheetsCopyTo =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/spreadsheets"]
        requestClient SpreadsheetsSheetsCopyTo'{..}
          = go _ssctSpreadsheetId _ssctSheetId _ssctXgafv
              _ssctUploadProtocol
              _ssctAccessToken
              _ssctUploadType
              _ssctCallback
              (Just AltJSON)
              _ssctPayload
              sheetsService
          where go
                  = buildClient
                      (Proxy :: Proxy SpreadsheetsSheetsCopyToResource)
                      mempty
