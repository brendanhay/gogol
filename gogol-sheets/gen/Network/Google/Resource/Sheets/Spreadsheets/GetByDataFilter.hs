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
-- Module      : Network.Google.Resource.Sheets.Spreadsheets.GetByDataFilter
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the spreadsheet at the given ID. The caller must specify the
-- spreadsheet ID. This method differs from GetSpreadsheet in that it
-- allows selecting which subsets of spreadsheet data to return by
-- specifying a dataFilters parameter. Multiple DataFilters can be
-- specified. Specifying one or more data filters will return the portions
-- of the spreadsheet that intersect ranges matched by any of the filters.
-- By default, data within grids will not be returned. You can include grid
-- data one of two ways: * Specify a field mask listing your desired fields
-- using the \`fields\` URL parameter in HTTP * Set the includeGridData
-- parameter to true. If a field mask is set, the \`includeGridData\`
-- parameter is ignored For large spreadsheets, it is recommended to
-- retrieve only the specific fields of the spreadsheet that you want.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.getByDataFilter@.
module Network.Google.Resource.Sheets.Spreadsheets.GetByDataFilter
    (
    -- * REST Resource
      SpreadsheetsGetByDataFilterResource

    -- * Creating a Request
    , spreadsheetsGetByDataFilter
    , SpreadsheetsGetByDataFilter

    -- * Request Lenses
    , sgbdfXgafv
    , sgbdfUploadProtocol
    , sgbdfAccessToken
    , sgbdfSpreadsheetId
    , sgbdfUploadType
    , sgbdfPayload
    , sgbdfCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.getByDataFilter@ method which the
-- 'SpreadsheetsGetByDataFilter' request conforms to.
type SpreadsheetsGetByDataFilterResource =
     "v4" :>
       "spreadsheets" :>
         CaptureMode "spreadsheetId" "getByDataFilter" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GetSpreadsheetByDataFilterRequest :>
                         Post '[JSON] Spreadsheet

-- | Returns the spreadsheet at the given ID. The caller must specify the
-- spreadsheet ID. This method differs from GetSpreadsheet in that it
-- allows selecting which subsets of spreadsheet data to return by
-- specifying a dataFilters parameter. Multiple DataFilters can be
-- specified. Specifying one or more data filters will return the portions
-- of the spreadsheet that intersect ranges matched by any of the filters.
-- By default, data within grids will not be returned. You can include grid
-- data one of two ways: * Specify a field mask listing your desired fields
-- using the \`fields\` URL parameter in HTTP * Set the includeGridData
-- parameter to true. If a field mask is set, the \`includeGridData\`
-- parameter is ignored For large spreadsheets, it is recommended to
-- retrieve only the specific fields of the spreadsheet that you want.
--
-- /See:/ 'spreadsheetsGetByDataFilter' smart constructor.
data SpreadsheetsGetByDataFilter =
  SpreadsheetsGetByDataFilter'
    { _sgbdfXgafv          :: !(Maybe Xgafv)
    , _sgbdfUploadProtocol :: !(Maybe Text)
    , _sgbdfAccessToken    :: !(Maybe Text)
    , _sgbdfSpreadsheetId  :: !Text
    , _sgbdfUploadType     :: !(Maybe Text)
    , _sgbdfPayload        :: !GetSpreadsheetByDataFilterRequest
    , _sgbdfCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpreadsheetsGetByDataFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgbdfXgafv'
--
-- * 'sgbdfUploadProtocol'
--
-- * 'sgbdfAccessToken'
--
-- * 'sgbdfSpreadsheetId'
--
-- * 'sgbdfUploadType'
--
-- * 'sgbdfPayload'
--
-- * 'sgbdfCallback'
spreadsheetsGetByDataFilter
    :: Text -- ^ 'sgbdfSpreadsheetId'
    -> GetSpreadsheetByDataFilterRequest -- ^ 'sgbdfPayload'
    -> SpreadsheetsGetByDataFilter
spreadsheetsGetByDataFilter pSgbdfSpreadsheetId_ pSgbdfPayload_ =
  SpreadsheetsGetByDataFilter'
    { _sgbdfXgafv = Nothing
    , _sgbdfUploadProtocol = Nothing
    , _sgbdfAccessToken = Nothing
    , _sgbdfSpreadsheetId = pSgbdfSpreadsheetId_
    , _sgbdfUploadType = Nothing
    , _sgbdfPayload = pSgbdfPayload_
    , _sgbdfCallback = Nothing
    }


-- | V1 error format.
sgbdfXgafv :: Lens' SpreadsheetsGetByDataFilter (Maybe Xgafv)
sgbdfXgafv
  = lens _sgbdfXgafv (\ s a -> s{_sgbdfXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgbdfUploadProtocol :: Lens' SpreadsheetsGetByDataFilter (Maybe Text)
sgbdfUploadProtocol
  = lens _sgbdfUploadProtocol
      (\ s a -> s{_sgbdfUploadProtocol = a})

-- | OAuth access token.
sgbdfAccessToken :: Lens' SpreadsheetsGetByDataFilter (Maybe Text)
sgbdfAccessToken
  = lens _sgbdfAccessToken
      (\ s a -> s{_sgbdfAccessToken = a})

-- | The spreadsheet to request.
sgbdfSpreadsheetId :: Lens' SpreadsheetsGetByDataFilter Text
sgbdfSpreadsheetId
  = lens _sgbdfSpreadsheetId
      (\ s a -> s{_sgbdfSpreadsheetId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgbdfUploadType :: Lens' SpreadsheetsGetByDataFilter (Maybe Text)
sgbdfUploadType
  = lens _sgbdfUploadType
      (\ s a -> s{_sgbdfUploadType = a})

-- | Multipart request metadata.
sgbdfPayload :: Lens' SpreadsheetsGetByDataFilter GetSpreadsheetByDataFilterRequest
sgbdfPayload
  = lens _sgbdfPayload (\ s a -> s{_sgbdfPayload = a})

-- | JSONP
sgbdfCallback :: Lens' SpreadsheetsGetByDataFilter (Maybe Text)
sgbdfCallback
  = lens _sgbdfCallback
      (\ s a -> s{_sgbdfCallback = a})

instance GoogleRequest SpreadsheetsGetByDataFilter
         where
        type Rs SpreadsheetsGetByDataFilter = Spreadsheet
        type Scopes SpreadsheetsGetByDataFilter =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/spreadsheets"]
        requestClient SpreadsheetsGetByDataFilter'{..}
          = go _sgbdfSpreadsheetId _sgbdfXgafv
              _sgbdfUploadProtocol
              _sgbdfAccessToken
              _sgbdfUploadType
              _sgbdfCallback
              (Just AltJSON)
              _sgbdfPayload
              sheetsService
          where go
                  = buildClient
                      (Proxy :: Proxy SpreadsheetsGetByDataFilterResource)
                      mempty
