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
-- Module      : Network.Google.Resource.Sheets.Spreadsheets.Values.BatchClearByDataFilter
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Clears one or more ranges of values from a spreadsheet. The caller must
-- specify the spreadsheet ID and one or more DataFilters. Ranges matching
-- any of the specified data filters will be cleared. Only values are
-- cleared -- all other properties of the cell (such as formatting, data
-- validation, etc..) are kept.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.batchClearByDataFilter@.
module Network.Google.Resource.Sheets.Spreadsheets.Values.BatchClearByDataFilter
    (
    -- * REST Resource
      SpreadsheetsValuesBatchClearByDataFilterResource

    -- * Creating a Request
    , spreadsheetsValuesBatchClearByDataFilter
    , SpreadsheetsValuesBatchClearByDataFilter

    -- * Request Lenses
    , svbcbdfXgafv
    , svbcbdfUploadProtocol
    , svbcbdfAccessToken
    , svbcbdfSpreadsheetId
    , svbcbdfUploadType
    , svbcbdfPayload
    , svbcbdfCallback
    ) where

import Network.Google.Prelude
import Network.Google.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.batchClearByDataFilter@ method which the
-- 'SpreadsheetsValuesBatchClearByDataFilter' request conforms to.
type SpreadsheetsValuesBatchClearByDataFilterResource
     =
     "v4" :>
       "spreadsheets" :>
         Capture "spreadsheetId" Text :>
           "values:batchClearByDataFilter" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] BatchClearValuesByDataFilterRequest
                           :> Post '[JSON] BatchClearValuesByDataFilterResponse

-- | Clears one or more ranges of values from a spreadsheet. The caller must
-- specify the spreadsheet ID and one or more DataFilters. Ranges matching
-- any of the specified data filters will be cleared. Only values are
-- cleared -- all other properties of the cell (such as formatting, data
-- validation, etc..) are kept.
--
-- /See:/ 'spreadsheetsValuesBatchClearByDataFilter' smart constructor.
data SpreadsheetsValuesBatchClearByDataFilter =
  SpreadsheetsValuesBatchClearByDataFilter'
    { _svbcbdfXgafv :: !(Maybe Xgafv)
    , _svbcbdfUploadProtocol :: !(Maybe Text)
    , _svbcbdfAccessToken :: !(Maybe Text)
    , _svbcbdfSpreadsheetId :: !Text
    , _svbcbdfUploadType :: !(Maybe Text)
    , _svbcbdfPayload :: !BatchClearValuesByDataFilterRequest
    , _svbcbdfCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpreadsheetsValuesBatchClearByDataFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svbcbdfXgafv'
--
-- * 'svbcbdfUploadProtocol'
--
-- * 'svbcbdfAccessToken'
--
-- * 'svbcbdfSpreadsheetId'
--
-- * 'svbcbdfUploadType'
--
-- * 'svbcbdfPayload'
--
-- * 'svbcbdfCallback'
spreadsheetsValuesBatchClearByDataFilter
    :: Text -- ^ 'svbcbdfSpreadsheetId'
    -> BatchClearValuesByDataFilterRequest -- ^ 'svbcbdfPayload'
    -> SpreadsheetsValuesBatchClearByDataFilter
spreadsheetsValuesBatchClearByDataFilter pSvbcbdfSpreadsheetId_ pSvbcbdfPayload_ =
  SpreadsheetsValuesBatchClearByDataFilter'
    { _svbcbdfXgafv = Nothing
    , _svbcbdfUploadProtocol = Nothing
    , _svbcbdfAccessToken = Nothing
    , _svbcbdfSpreadsheetId = pSvbcbdfSpreadsheetId_
    , _svbcbdfUploadType = Nothing
    , _svbcbdfPayload = pSvbcbdfPayload_
    , _svbcbdfCallback = Nothing
    }


-- | V1 error format.
svbcbdfXgafv :: Lens' SpreadsheetsValuesBatchClearByDataFilter (Maybe Xgafv)
svbcbdfXgafv
  = lens _svbcbdfXgafv (\ s a -> s{_svbcbdfXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svbcbdfUploadProtocol :: Lens' SpreadsheetsValuesBatchClearByDataFilter (Maybe Text)
svbcbdfUploadProtocol
  = lens _svbcbdfUploadProtocol
      (\ s a -> s{_svbcbdfUploadProtocol = a})

-- | OAuth access token.
svbcbdfAccessToken :: Lens' SpreadsheetsValuesBatchClearByDataFilter (Maybe Text)
svbcbdfAccessToken
  = lens _svbcbdfAccessToken
      (\ s a -> s{_svbcbdfAccessToken = a})

-- | The ID of the spreadsheet to update.
svbcbdfSpreadsheetId :: Lens' SpreadsheetsValuesBatchClearByDataFilter Text
svbcbdfSpreadsheetId
  = lens _svbcbdfSpreadsheetId
      (\ s a -> s{_svbcbdfSpreadsheetId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svbcbdfUploadType :: Lens' SpreadsheetsValuesBatchClearByDataFilter (Maybe Text)
svbcbdfUploadType
  = lens _svbcbdfUploadType
      (\ s a -> s{_svbcbdfUploadType = a})

-- | Multipart request metadata.
svbcbdfPayload :: Lens' SpreadsheetsValuesBatchClearByDataFilter BatchClearValuesByDataFilterRequest
svbcbdfPayload
  = lens _svbcbdfPayload
      (\ s a -> s{_svbcbdfPayload = a})

-- | JSONP
svbcbdfCallback :: Lens' SpreadsheetsValuesBatchClearByDataFilter (Maybe Text)
svbcbdfCallback
  = lens _svbcbdfCallback
      (\ s a -> s{_svbcbdfCallback = a})

instance GoogleRequest
           SpreadsheetsValuesBatchClearByDataFilter
         where
        type Rs SpreadsheetsValuesBatchClearByDataFilter =
             BatchClearValuesByDataFilterResponse
        type Scopes SpreadsheetsValuesBatchClearByDataFilter
             =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/spreadsheets"]
        requestClient
          SpreadsheetsValuesBatchClearByDataFilter'{..}
          = go _svbcbdfSpreadsheetId _svbcbdfXgafv
              _svbcbdfUploadProtocol
              _svbcbdfAccessToken
              _svbcbdfUploadType
              _svbcbdfCallback
              (Just AltJSON)
              _svbcbdfPayload
              sheetsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           SpreadsheetsValuesBatchClearByDataFilterResource)
                      mempty
