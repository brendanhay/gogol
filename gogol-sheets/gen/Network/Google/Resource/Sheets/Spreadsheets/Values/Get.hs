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
-- Module      : Network.Google.Resource.Sheets.Spreadsheets.Values.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a range of values from a spreadsheet. The caller must specify
-- the spreadsheet ID and a range.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.get@.
module Network.Google.Resource.Sheets.Spreadsheets.Values.Get
    (
    -- * REST Resource
      SpreadsheetsValuesGetResource

    -- * Creating a Request
    , spreadsheetsValuesGet
    , SpreadsheetsValuesGet

    -- * Request Lenses
    , svgXgafv
    , svgValueRenderOption
    , svgUploadProtocol
    , svgPp
    , svgAccessToken
    , svgSpreadsheetId
    , svgUploadType
    , svgBearerToken
    , svgRange
    , svgDateTimeRenderOption
    , svgMajorDimension
    , svgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.get@ method which the
-- 'SpreadsheetsValuesGet' request conforms to.
type SpreadsheetsValuesGetResource =
     "v4" :>
       "spreadsheets" :>
         Capture "spreadsheetId" Text :>
           "values" :>
             Capture "range" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "valueRenderOption" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "dateTimeRenderOption" Text :>
                               QueryParam "majorDimension" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ValueRange

-- | Returns a range of values from a spreadsheet. The caller must specify
-- the spreadsheet ID and a range.
--
-- /See:/ 'spreadsheetsValuesGet' smart constructor.
data SpreadsheetsValuesGet = SpreadsheetsValuesGet'
    { _svgXgafv                :: !(Maybe Xgafv)
    , _svgValueRenderOption    :: !(Maybe Text)
    , _svgUploadProtocol       :: !(Maybe Text)
    , _svgPp                   :: !Bool
    , _svgAccessToken          :: !(Maybe Text)
    , _svgSpreadsheetId        :: !Text
    , _svgUploadType           :: !(Maybe Text)
    , _svgBearerToken          :: !(Maybe Text)
    , _svgRange                :: !Text
    , _svgDateTimeRenderOption :: !(Maybe Text)
    , _svgMajorDimension       :: !(Maybe Text)
    , _svgCallback             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SpreadsheetsValuesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svgXgafv'
--
-- * 'svgValueRenderOption'
--
-- * 'svgUploadProtocol'
--
-- * 'svgPp'
--
-- * 'svgAccessToken'
--
-- * 'svgSpreadsheetId'
--
-- * 'svgUploadType'
--
-- * 'svgBearerToken'
--
-- * 'svgRange'
--
-- * 'svgDateTimeRenderOption'
--
-- * 'svgMajorDimension'
--
-- * 'svgCallback'
spreadsheetsValuesGet
    :: Text -- ^ 'svgSpreadsheetId'
    -> Text -- ^ 'svgRange'
    -> SpreadsheetsValuesGet
spreadsheetsValuesGet pSvgSpreadsheetId_ pSvgRange_ =
    SpreadsheetsValuesGet'
    { _svgXgafv = Nothing
    , _svgValueRenderOption = Nothing
    , _svgUploadProtocol = Nothing
    , _svgPp = True
    , _svgAccessToken = Nothing
    , _svgSpreadsheetId = pSvgSpreadsheetId_
    , _svgUploadType = Nothing
    , _svgBearerToken = Nothing
    , _svgRange = pSvgRange_
    , _svgDateTimeRenderOption = Nothing
    , _svgMajorDimension = Nothing
    , _svgCallback = Nothing
    }

-- | V1 error format.
svgXgafv :: Lens' SpreadsheetsValuesGet (Maybe Xgafv)
svgXgafv = lens _svgXgafv (\ s a -> s{_svgXgafv = a})

-- | How values should be represented in the output. The default render
-- option is ValueRenderOption.FORMATTED_VALUE.
svgValueRenderOption :: Lens' SpreadsheetsValuesGet (Maybe Text)
svgValueRenderOption
  = lens _svgValueRenderOption
      (\ s a -> s{_svgValueRenderOption = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svgUploadProtocol :: Lens' SpreadsheetsValuesGet (Maybe Text)
svgUploadProtocol
  = lens _svgUploadProtocol
      (\ s a -> s{_svgUploadProtocol = a})

-- | Pretty-print response.
svgPp :: Lens' SpreadsheetsValuesGet Bool
svgPp = lens _svgPp (\ s a -> s{_svgPp = a})

-- | OAuth access token.
svgAccessToken :: Lens' SpreadsheetsValuesGet (Maybe Text)
svgAccessToken
  = lens _svgAccessToken
      (\ s a -> s{_svgAccessToken = a})

-- | The ID of the spreadsheet to retrieve data from.
svgSpreadsheetId :: Lens' SpreadsheetsValuesGet Text
svgSpreadsheetId
  = lens _svgSpreadsheetId
      (\ s a -> s{_svgSpreadsheetId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svgUploadType :: Lens' SpreadsheetsValuesGet (Maybe Text)
svgUploadType
  = lens _svgUploadType
      (\ s a -> s{_svgUploadType = a})

-- | OAuth bearer token.
svgBearerToken :: Lens' SpreadsheetsValuesGet (Maybe Text)
svgBearerToken
  = lens _svgBearerToken
      (\ s a -> s{_svgBearerToken = a})

-- | The A1 notation of the values to retrieve.
svgRange :: Lens' SpreadsheetsValuesGet Text
svgRange = lens _svgRange (\ s a -> s{_svgRange = a})

-- | How dates, times, and durations should be represented in the output.
-- This is ignored if value_render_option is FORMATTED_VALUE. The default
-- dateTime render option is [DateTimeRenderOption.SERIAL_NUMBER].
svgDateTimeRenderOption :: Lens' SpreadsheetsValuesGet (Maybe Text)
svgDateTimeRenderOption
  = lens _svgDateTimeRenderOption
      (\ s a -> s{_svgDateTimeRenderOption = a})

-- | The major dimension that results should use. For example, if the
-- spreadsheet data is: \`A1=1,B1=2,A2=3,B2=4\`, then requesting
-- \`range=A1:B2,majorDimension=ROWS\` will return \`[[1,2],[3,4]]\`,
-- whereas requesting \`range=A1:B2,majorDimension=COLUMNS\` will return
-- \`[[1,3],[2,4]]\`.
svgMajorDimension :: Lens' SpreadsheetsValuesGet (Maybe Text)
svgMajorDimension
  = lens _svgMajorDimension
      (\ s a -> s{_svgMajorDimension = a})

-- | JSONP
svgCallback :: Lens' SpreadsheetsValuesGet (Maybe Text)
svgCallback
  = lens _svgCallback (\ s a -> s{_svgCallback = a})

instance GoogleRequest SpreadsheetsValuesGet where
        type Rs SpreadsheetsValuesGet = ValueRange
        type Scopes SpreadsheetsValuesGet =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.readonly",
               "https://www.googleapis.com/auth/spreadsheets",
               "https://www.googleapis.com/auth/spreadsheets.readonly"]
        requestClient SpreadsheetsValuesGet'{..}
          = go _svgSpreadsheetId _svgRange _svgXgafv
              _svgValueRenderOption
              _svgUploadProtocol
              (Just _svgPp)
              _svgAccessToken
              _svgUploadType
              _svgBearerToken
              _svgDateTimeRenderOption
              _svgMajorDimension
              _svgCallback
              (Just AltJSON)
              sheetsService
          where go
                  = buildClient
                      (Proxy :: Proxy SpreadsheetsValuesGetResource)
                      mempty
