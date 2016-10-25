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
-- Module      : Network.Google.Resource.Sheets.Spreadsheets.Values.BatchClear
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Clears one or more ranges of values from a spreadsheet. The caller must
-- specify the spreadsheet ID and one or more ranges. Only values are
-- cleared -- all other properties of the cell (such as formatting, data
-- validation, etc..) are kept.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.batchClear@.
module Network.Google.Resource.Sheets.Spreadsheets.Values.BatchClear
    (
    -- * REST Resource
      SpreadsheetsValuesBatchClearResource

    -- * Creating a Request
    , spreadsheetsValuesBatchClear
    , SpreadsheetsValuesBatchClear

    -- * Request Lenses
    , svbcXgafv
    , svbcUploadProtocol
    , svbcPp
    , svbcAccessToken
    , svbcSpreadsheetId
    , svbcUploadType
    , svbcPayload
    , svbcBearerToken
    , svbcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.batchClear@ method which the
-- 'SpreadsheetsValuesBatchClear' request conforms to.
type SpreadsheetsValuesBatchClearResource =
     "v4" :>
       "spreadsheets" :>
         Capture "spreadsheetId" Text :>
           "values:batchClear" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] BatchClearValuesRequest :>
                               Post '[JSON] BatchClearValuesResponse

-- | Clears one or more ranges of values from a spreadsheet. The caller must
-- specify the spreadsheet ID and one or more ranges. Only values are
-- cleared -- all other properties of the cell (such as formatting, data
-- validation, etc..) are kept.
--
-- /See:/ 'spreadsheetsValuesBatchClear' smart constructor.
data SpreadsheetsValuesBatchClear = SpreadsheetsValuesBatchClear'
    { _svbcXgafv          :: !(Maybe Xgafv)
    , _svbcUploadProtocol :: !(Maybe Text)
    , _svbcPp             :: !Bool
    , _svbcAccessToken    :: !(Maybe Text)
    , _svbcSpreadsheetId  :: !Text
    , _svbcUploadType     :: !(Maybe Text)
    , _svbcPayload        :: !BatchClearValuesRequest
    , _svbcBearerToken    :: !(Maybe Text)
    , _svbcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SpreadsheetsValuesBatchClear' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svbcXgafv'
--
-- * 'svbcUploadProtocol'
--
-- * 'svbcPp'
--
-- * 'svbcAccessToken'
--
-- * 'svbcSpreadsheetId'
--
-- * 'svbcUploadType'
--
-- * 'svbcPayload'
--
-- * 'svbcBearerToken'
--
-- * 'svbcCallback'
spreadsheetsValuesBatchClear
    :: Text -- ^ 'svbcSpreadsheetId'
    -> BatchClearValuesRequest -- ^ 'svbcPayload'
    -> SpreadsheetsValuesBatchClear
spreadsheetsValuesBatchClear pSvbcSpreadsheetId_ pSvbcPayload_ =
    SpreadsheetsValuesBatchClear'
    { _svbcXgafv = Nothing
    , _svbcUploadProtocol = Nothing
    , _svbcPp = True
    , _svbcAccessToken = Nothing
    , _svbcSpreadsheetId = pSvbcSpreadsheetId_
    , _svbcUploadType = Nothing
    , _svbcPayload = pSvbcPayload_
    , _svbcBearerToken = Nothing
    , _svbcCallback = Nothing
    }

-- | V1 error format.
svbcXgafv :: Lens' SpreadsheetsValuesBatchClear (Maybe Xgafv)
svbcXgafv
  = lens _svbcXgafv (\ s a -> s{_svbcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svbcUploadProtocol :: Lens' SpreadsheetsValuesBatchClear (Maybe Text)
svbcUploadProtocol
  = lens _svbcUploadProtocol
      (\ s a -> s{_svbcUploadProtocol = a})

-- | Pretty-print response.
svbcPp :: Lens' SpreadsheetsValuesBatchClear Bool
svbcPp = lens _svbcPp (\ s a -> s{_svbcPp = a})

-- | OAuth access token.
svbcAccessToken :: Lens' SpreadsheetsValuesBatchClear (Maybe Text)
svbcAccessToken
  = lens _svbcAccessToken
      (\ s a -> s{_svbcAccessToken = a})

-- | The ID of the spreadsheet to update.
svbcSpreadsheetId :: Lens' SpreadsheetsValuesBatchClear Text
svbcSpreadsheetId
  = lens _svbcSpreadsheetId
      (\ s a -> s{_svbcSpreadsheetId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svbcUploadType :: Lens' SpreadsheetsValuesBatchClear (Maybe Text)
svbcUploadType
  = lens _svbcUploadType
      (\ s a -> s{_svbcUploadType = a})

-- | Multipart request metadata.
svbcPayload :: Lens' SpreadsheetsValuesBatchClear BatchClearValuesRequest
svbcPayload
  = lens _svbcPayload (\ s a -> s{_svbcPayload = a})

-- | OAuth bearer token.
svbcBearerToken :: Lens' SpreadsheetsValuesBatchClear (Maybe Text)
svbcBearerToken
  = lens _svbcBearerToken
      (\ s a -> s{_svbcBearerToken = a})

-- | JSONP
svbcCallback :: Lens' SpreadsheetsValuesBatchClear (Maybe Text)
svbcCallback
  = lens _svbcCallback (\ s a -> s{_svbcCallback = a})

instance GoogleRequest SpreadsheetsValuesBatchClear
         where
        type Rs SpreadsheetsValuesBatchClear =
             BatchClearValuesResponse
        type Scopes SpreadsheetsValuesBatchClear =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/spreadsheets"]
        requestClient SpreadsheetsValuesBatchClear'{..}
          = go _svbcSpreadsheetId _svbcXgafv
              _svbcUploadProtocol
              (Just _svbcPp)
              _svbcAccessToken
              _svbcUploadType
              _svbcBearerToken
              _svbcCallback
              (Just AltJSON)
              _svbcPayload
              sheetsService
          where go
                  = buildClient
                      (Proxy :: Proxy SpreadsheetsValuesBatchClearResource)
                      mempty
