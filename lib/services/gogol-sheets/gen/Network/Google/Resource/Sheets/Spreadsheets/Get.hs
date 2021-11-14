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
-- Module      : Network.Google.Resource.Sheets.Spreadsheets.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the spreadsheet at the given ID. The caller must specify the
-- spreadsheet ID. By default, data within grids will not be returned. You
-- can include grid data one of two ways: * Specify a field mask listing
-- your desired fields using the \`fields\` URL parameter in HTTP * Set the
-- includeGridData URL parameter to true. If a field mask is set, the
-- \`includeGridData\` parameter is ignored For large spreadsheets, it is
-- recommended to retrieve only the specific fields of the spreadsheet that
-- you want. To retrieve only subsets of the spreadsheet, use the ranges
-- URL parameter. Multiple ranges can be specified. Limiting the range will
-- return only the portions of the spreadsheet that intersect the requested
-- ranges. Ranges are specified using A1 notation.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.get@.
module Network.Google.Resource.Sheets.Spreadsheets.Get
    (
    -- * REST Resource
      SpreadsheetsGetResource

    -- * Creating a Request
    , spreadsheetsGet
    , SpreadsheetsGet

    -- * Request Lenses
    , sgXgafv
    , sgUploadProtocol
    , sgAccessToken
    , sgSpreadsheetId
    , sgUploadType
    , sgRanges
    , sgIncludeGridData
    , sgCallback
    ) where

import Network.Google.Prelude
import Network.Google.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.get@ method which the
-- 'SpreadsheetsGet' request conforms to.
type SpreadsheetsGetResource =
     "v4" :>
       "spreadsheets" :>
         Capture "spreadsheetId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParams "ranges" Text :>
                     QueryParam "includeGridData" Bool :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Spreadsheet

-- | Returns the spreadsheet at the given ID. The caller must specify the
-- spreadsheet ID. By default, data within grids will not be returned. You
-- can include grid data one of two ways: * Specify a field mask listing
-- your desired fields using the \`fields\` URL parameter in HTTP * Set the
-- includeGridData URL parameter to true. If a field mask is set, the
-- \`includeGridData\` parameter is ignored For large spreadsheets, it is
-- recommended to retrieve only the specific fields of the spreadsheet that
-- you want. To retrieve only subsets of the spreadsheet, use the ranges
-- URL parameter. Multiple ranges can be specified. Limiting the range will
-- return only the portions of the spreadsheet that intersect the requested
-- ranges. Ranges are specified using A1 notation.
--
-- /See:/ 'spreadsheetsGet' smart constructor.
data SpreadsheetsGet =
  SpreadsheetsGet'
    { _sgXgafv :: !(Maybe Xgafv)
    , _sgUploadProtocol :: !(Maybe Text)
    , _sgAccessToken :: !(Maybe Text)
    , _sgSpreadsheetId :: !Text
    , _sgUploadType :: !(Maybe Text)
    , _sgRanges :: !(Maybe [Text])
    , _sgIncludeGridData :: !(Maybe Bool)
    , _sgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpreadsheetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgXgafv'
--
-- * 'sgUploadProtocol'
--
-- * 'sgAccessToken'
--
-- * 'sgSpreadsheetId'
--
-- * 'sgUploadType'
--
-- * 'sgRanges'
--
-- * 'sgIncludeGridData'
--
-- * 'sgCallback'
spreadsheetsGet
    :: Text -- ^ 'sgSpreadsheetId'
    -> SpreadsheetsGet
spreadsheetsGet pSgSpreadsheetId_ =
  SpreadsheetsGet'
    { _sgXgafv = Nothing
    , _sgUploadProtocol = Nothing
    , _sgAccessToken = Nothing
    , _sgSpreadsheetId = pSgSpreadsheetId_
    , _sgUploadType = Nothing
    , _sgRanges = Nothing
    , _sgIncludeGridData = Nothing
    , _sgCallback = Nothing
    }


-- | V1 error format.
sgXgafv :: Lens' SpreadsheetsGet (Maybe Xgafv)
sgXgafv = lens _sgXgafv (\ s a -> s{_sgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgUploadProtocol :: Lens' SpreadsheetsGet (Maybe Text)
sgUploadProtocol
  = lens _sgUploadProtocol
      (\ s a -> s{_sgUploadProtocol = a})

-- | OAuth access token.
sgAccessToken :: Lens' SpreadsheetsGet (Maybe Text)
sgAccessToken
  = lens _sgAccessToken
      (\ s a -> s{_sgAccessToken = a})

-- | The spreadsheet to request.
sgSpreadsheetId :: Lens' SpreadsheetsGet Text
sgSpreadsheetId
  = lens _sgSpreadsheetId
      (\ s a -> s{_sgSpreadsheetId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgUploadType :: Lens' SpreadsheetsGet (Maybe Text)
sgUploadType
  = lens _sgUploadType (\ s a -> s{_sgUploadType = a})

-- | The ranges to retrieve from the spreadsheet.
sgRanges :: Lens' SpreadsheetsGet [Text]
sgRanges
  = lens _sgRanges (\ s a -> s{_sgRanges = a}) .
      _Default
      . _Coerce

-- | True if grid data should be returned. This parameter is ignored if a
-- field mask was set in the request.
sgIncludeGridData :: Lens' SpreadsheetsGet (Maybe Bool)
sgIncludeGridData
  = lens _sgIncludeGridData
      (\ s a -> s{_sgIncludeGridData = a})

-- | JSONP
sgCallback :: Lens' SpreadsheetsGet (Maybe Text)
sgCallback
  = lens _sgCallback (\ s a -> s{_sgCallback = a})

instance GoogleRequest SpreadsheetsGet where
        type Rs SpreadsheetsGet = Spreadsheet
        type Scopes SpreadsheetsGet =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.readonly",
               "https://www.googleapis.com/auth/spreadsheets",
               "https://www.googleapis.com/auth/spreadsheets.readonly"]
        requestClient SpreadsheetsGet'{..}
          = go _sgSpreadsheetId _sgXgafv _sgUploadProtocol
              _sgAccessToken
              _sgUploadType
              (_sgRanges ^. _Default)
              _sgIncludeGridData
              _sgCallback
              (Just AltJSON)
              sheetsService
          where go
                  = buildClient
                      (Proxy :: Proxy SpreadsheetsGetResource)
                      mempty
