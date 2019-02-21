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
-- Module      : Network.Google.Resource.Sheets.Spreadsheets.DeveloperMetadata.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all developer metadata matching the specified DataFilter. If the
-- provided DataFilter represents a DeveloperMetadataLookup object, this
-- will return all DeveloperMetadata entries selected by it. If the
-- DataFilter represents a location in a spreadsheet, this will return all
-- developer metadata associated with locations intersecting that region.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.developerMetadata.search@.
module Network.Google.Resource.Sheets.Spreadsheets.DeveloperMetadata.Search
    (
    -- * REST Resource
      SpreadsheetsDeveloperMetadataSearchResource

    -- * Creating a Request
    , spreadsheetsDeveloperMetadataSearch
    , SpreadsheetsDeveloperMetadataSearch

    -- * Request Lenses
    , sdmsXgafv
    , sdmsUploadProtocol
    , sdmsAccessToken
    , sdmsSpreadsheetId
    , sdmsUploadType
    , sdmsPayload
    , sdmsCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.developerMetadata.search@ method which the
-- 'SpreadsheetsDeveloperMetadataSearch' request conforms to.
type SpreadsheetsDeveloperMetadataSearchResource =
     "v4" :>
       "spreadsheets" :>
         Capture "spreadsheetId" Text :>
           "developerMetadata:search" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SearchDeveloperMetadataRequest :>
                           Post '[JSON] SearchDeveloperMetadataResponse

-- | Returns all developer metadata matching the specified DataFilter. If the
-- provided DataFilter represents a DeveloperMetadataLookup object, this
-- will return all DeveloperMetadata entries selected by it. If the
-- DataFilter represents a location in a spreadsheet, this will return all
-- developer metadata associated with locations intersecting that region.
--
-- /See:/ 'spreadsheetsDeveloperMetadataSearch' smart constructor.
data SpreadsheetsDeveloperMetadataSearch =
  SpreadsheetsDeveloperMetadataSearch'
    { _sdmsXgafv          :: !(Maybe Xgafv)
    , _sdmsUploadProtocol :: !(Maybe Text)
    , _sdmsAccessToken    :: !(Maybe Text)
    , _sdmsSpreadsheetId  :: !Text
    , _sdmsUploadType     :: !(Maybe Text)
    , _sdmsPayload        :: !SearchDeveloperMetadataRequest
    , _sdmsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpreadsheetsDeveloperMetadataSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdmsXgafv'
--
-- * 'sdmsUploadProtocol'
--
-- * 'sdmsAccessToken'
--
-- * 'sdmsSpreadsheetId'
--
-- * 'sdmsUploadType'
--
-- * 'sdmsPayload'
--
-- * 'sdmsCallback'
spreadsheetsDeveloperMetadataSearch
    :: Text -- ^ 'sdmsSpreadsheetId'
    -> SearchDeveloperMetadataRequest -- ^ 'sdmsPayload'
    -> SpreadsheetsDeveloperMetadataSearch
spreadsheetsDeveloperMetadataSearch pSdmsSpreadsheetId_ pSdmsPayload_ =
  SpreadsheetsDeveloperMetadataSearch'
    { _sdmsXgafv = Nothing
    , _sdmsUploadProtocol = Nothing
    , _sdmsAccessToken = Nothing
    , _sdmsSpreadsheetId = pSdmsSpreadsheetId_
    , _sdmsUploadType = Nothing
    , _sdmsPayload = pSdmsPayload_
    , _sdmsCallback = Nothing
    }


-- | V1 error format.
sdmsXgafv :: Lens' SpreadsheetsDeveloperMetadataSearch (Maybe Xgafv)
sdmsXgafv
  = lens _sdmsXgafv (\ s a -> s{_sdmsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdmsUploadProtocol :: Lens' SpreadsheetsDeveloperMetadataSearch (Maybe Text)
sdmsUploadProtocol
  = lens _sdmsUploadProtocol
      (\ s a -> s{_sdmsUploadProtocol = a})

-- | OAuth access token.
sdmsAccessToken :: Lens' SpreadsheetsDeveloperMetadataSearch (Maybe Text)
sdmsAccessToken
  = lens _sdmsAccessToken
      (\ s a -> s{_sdmsAccessToken = a})

-- | The ID of the spreadsheet to retrieve metadata from.
sdmsSpreadsheetId :: Lens' SpreadsheetsDeveloperMetadataSearch Text
sdmsSpreadsheetId
  = lens _sdmsSpreadsheetId
      (\ s a -> s{_sdmsSpreadsheetId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdmsUploadType :: Lens' SpreadsheetsDeveloperMetadataSearch (Maybe Text)
sdmsUploadType
  = lens _sdmsUploadType
      (\ s a -> s{_sdmsUploadType = a})

-- | Multipart request metadata.
sdmsPayload :: Lens' SpreadsheetsDeveloperMetadataSearch SearchDeveloperMetadataRequest
sdmsPayload
  = lens _sdmsPayload (\ s a -> s{_sdmsPayload = a})

-- | JSONP
sdmsCallback :: Lens' SpreadsheetsDeveloperMetadataSearch (Maybe Text)
sdmsCallback
  = lens _sdmsCallback (\ s a -> s{_sdmsCallback = a})

instance GoogleRequest
           SpreadsheetsDeveloperMetadataSearch
         where
        type Rs SpreadsheetsDeveloperMetadataSearch =
             SearchDeveloperMetadataResponse
        type Scopes SpreadsheetsDeveloperMetadataSearch =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/spreadsheets"]
        requestClient
          SpreadsheetsDeveloperMetadataSearch'{..}
          = go _sdmsSpreadsheetId _sdmsXgafv
              _sdmsUploadProtocol
              _sdmsAccessToken
              _sdmsUploadType
              _sdmsCallback
              (Just AltJSON)
              _sdmsPayload
              sheetsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy SpreadsheetsDeveloperMetadataSearchResource)
                      mempty
