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
-- Module      : Network.Google.Resource.Sheets.Spreadsheets.Values.BatchUpdate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets values in one or more ranges of a spreadsheet. The caller must
-- specify the spreadsheet ID, a valueInputOption, and one or more
-- ValueRanges.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.batchUpdate@.
module Network.Google.Resource.Sheets.Spreadsheets.Values.BatchUpdate
    (
    -- * REST Resource
      SpreadsheetsValuesBatchUpdateResource

    -- * Creating a Request
    , spreadsheetsValuesBatchUpdate
    , SpreadsheetsValuesBatchUpdate

    -- * Request Lenses
    , svbuXgafv
    , svbuUploadProtocol
    , svbuPp
    , svbuAccessToken
    , svbuSpreadsheetId
    , svbuUploadType
    , svbuPayload
    , svbuBearerToken
    , svbuCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.batchUpdate@ method which the
-- 'SpreadsheetsValuesBatchUpdate' request conforms to.
type SpreadsheetsValuesBatchUpdateResource =
     "v4" :>
       "spreadsheets" :>
         Capture "spreadsheetId" Text :>
           "values:batchUpdate" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] BatchUpdateValuesRequest :>
                               Post '[JSON] BatchUpdateValuesResponse

-- | Sets values in one or more ranges of a spreadsheet. The caller must
-- specify the spreadsheet ID, a valueInputOption, and one or more
-- ValueRanges.
--
-- /See:/ 'spreadsheetsValuesBatchUpdate' smart constructor.
data SpreadsheetsValuesBatchUpdate = SpreadsheetsValuesBatchUpdate'
    { _svbuXgafv          :: !(Maybe Xgafv)
    , _svbuUploadProtocol :: !(Maybe Text)
    , _svbuPp             :: !Bool
    , _svbuAccessToken    :: !(Maybe Text)
    , _svbuSpreadsheetId  :: !Text
    , _svbuUploadType     :: !(Maybe Text)
    , _svbuPayload        :: !BatchUpdateValuesRequest
    , _svbuBearerToken    :: !(Maybe Text)
    , _svbuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SpreadsheetsValuesBatchUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svbuXgafv'
--
-- * 'svbuUploadProtocol'
--
-- * 'svbuPp'
--
-- * 'svbuAccessToken'
--
-- * 'svbuSpreadsheetId'
--
-- * 'svbuUploadType'
--
-- * 'svbuPayload'
--
-- * 'svbuBearerToken'
--
-- * 'svbuCallback'
spreadsheetsValuesBatchUpdate
    :: Text -- ^ 'svbuSpreadsheetId'
    -> BatchUpdateValuesRequest -- ^ 'svbuPayload'
    -> SpreadsheetsValuesBatchUpdate
spreadsheetsValuesBatchUpdate pSvbuSpreadsheetId_ pSvbuPayload_ =
    SpreadsheetsValuesBatchUpdate'
    { _svbuXgafv = Nothing
    , _svbuUploadProtocol = Nothing
    , _svbuPp = True
    , _svbuAccessToken = Nothing
    , _svbuSpreadsheetId = pSvbuSpreadsheetId_
    , _svbuUploadType = Nothing
    , _svbuPayload = pSvbuPayload_
    , _svbuBearerToken = Nothing
    , _svbuCallback = Nothing
    }

-- | V1 error format.
svbuXgafv :: Lens' SpreadsheetsValuesBatchUpdate (Maybe Xgafv)
svbuXgafv
  = lens _svbuXgafv (\ s a -> s{_svbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svbuUploadProtocol :: Lens' SpreadsheetsValuesBatchUpdate (Maybe Text)
svbuUploadProtocol
  = lens _svbuUploadProtocol
      (\ s a -> s{_svbuUploadProtocol = a})

-- | Pretty-print response.
svbuPp :: Lens' SpreadsheetsValuesBatchUpdate Bool
svbuPp = lens _svbuPp (\ s a -> s{_svbuPp = a})

-- | OAuth access token.
svbuAccessToken :: Lens' SpreadsheetsValuesBatchUpdate (Maybe Text)
svbuAccessToken
  = lens _svbuAccessToken
      (\ s a -> s{_svbuAccessToken = a})

-- | The ID of the spreadsheet to update.
svbuSpreadsheetId :: Lens' SpreadsheetsValuesBatchUpdate Text
svbuSpreadsheetId
  = lens _svbuSpreadsheetId
      (\ s a -> s{_svbuSpreadsheetId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svbuUploadType :: Lens' SpreadsheetsValuesBatchUpdate (Maybe Text)
svbuUploadType
  = lens _svbuUploadType
      (\ s a -> s{_svbuUploadType = a})

-- | Multipart request metadata.
svbuPayload :: Lens' SpreadsheetsValuesBatchUpdate BatchUpdateValuesRequest
svbuPayload
  = lens _svbuPayload (\ s a -> s{_svbuPayload = a})

-- | OAuth bearer token.
svbuBearerToken :: Lens' SpreadsheetsValuesBatchUpdate (Maybe Text)
svbuBearerToken
  = lens _svbuBearerToken
      (\ s a -> s{_svbuBearerToken = a})

-- | JSONP
svbuCallback :: Lens' SpreadsheetsValuesBatchUpdate (Maybe Text)
svbuCallback
  = lens _svbuCallback (\ s a -> s{_svbuCallback = a})

instance GoogleRequest SpreadsheetsValuesBatchUpdate
         where
        type Rs SpreadsheetsValuesBatchUpdate =
             BatchUpdateValuesResponse
        type Scopes SpreadsheetsValuesBatchUpdate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/spreadsheets"]
        requestClient SpreadsheetsValuesBatchUpdate'{..}
          = go _svbuSpreadsheetId _svbuXgafv
              _svbuUploadProtocol
              (Just _svbuPp)
              _svbuAccessToken
              _svbuUploadType
              _svbuBearerToken
              _svbuCallback
              (Just AltJSON)
              _svbuPayload
              sheetsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy SpreadsheetsValuesBatchUpdateResource)
                      mempty
