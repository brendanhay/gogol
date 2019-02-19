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
-- Module      : Network.Google.Resource.Sheets.Spreadsheets.BatchUpdate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies one or more updates to the spreadsheet. Each request is
-- validated before being applied. If any request is not valid then the
-- entire request will fail and nothing will be applied. Some requests have
-- replies to give you some information about how they are applied. The
-- replies will mirror the requests. For example, if you applied 4 updates
-- and the 3rd one had a reply, then the response will have 2 empty
-- replies, the actual reply, and another empty reply, in that order. Due
-- to the collaborative nature of spreadsheets, it is not guaranteed that
-- the spreadsheet will reflect exactly your changes after this completes,
-- however it is guaranteed that the updates in the request will be applied
-- together atomically. Your changes may be altered with respect to
-- collaborator changes. If there are no collaborators, the spreadsheet
-- should reflect your changes.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.batchUpdate@.
module Network.Google.Resource.Sheets.Spreadsheets.BatchUpdate
    (
    -- * REST Resource
      SpreadsheetsBatchUpdateResource

    -- * Creating a Request
    , spreadsheetsBatchUpdate
    , SpreadsheetsBatchUpdate

    -- * Request Lenses
    , sbuXgafv
    , sbuUploadProtocol
    , sbuAccessToken
    , sbuSpreadsheetId
    , sbuUploadType
    , sbuPayload
    , sbuCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.batchUpdate@ method which the
-- 'SpreadsheetsBatchUpdate' request conforms to.
type SpreadsheetsBatchUpdateResource =
     "v4" :>
       "spreadsheets" :>
         CaptureMode "spreadsheetId" "batchUpdate" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BatchUpdateSpreadsheetRequest :>
                         Post '[JSON] BatchUpdateSpreadsheetResponse

-- | Applies one or more updates to the spreadsheet. Each request is
-- validated before being applied. If any request is not valid then the
-- entire request will fail and nothing will be applied. Some requests have
-- replies to give you some information about how they are applied. The
-- replies will mirror the requests. For example, if you applied 4 updates
-- and the 3rd one had a reply, then the response will have 2 empty
-- replies, the actual reply, and another empty reply, in that order. Due
-- to the collaborative nature of spreadsheets, it is not guaranteed that
-- the spreadsheet will reflect exactly your changes after this completes,
-- however it is guaranteed that the updates in the request will be applied
-- together atomically. Your changes may be altered with respect to
-- collaborator changes. If there are no collaborators, the spreadsheet
-- should reflect your changes.
--
-- /See:/ 'spreadsheetsBatchUpdate' smart constructor.
data SpreadsheetsBatchUpdate =
  SpreadsheetsBatchUpdate'
    { _sbuXgafv          :: !(Maybe Xgafv)
    , _sbuUploadProtocol :: !(Maybe Text)
    , _sbuAccessToken    :: !(Maybe Text)
    , _sbuSpreadsheetId  :: !Text
    , _sbuUploadType     :: !(Maybe Text)
    , _sbuPayload        :: !BatchUpdateSpreadsheetRequest
    , _sbuCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SpreadsheetsBatchUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbuXgafv'
--
-- * 'sbuUploadProtocol'
--
-- * 'sbuAccessToken'
--
-- * 'sbuSpreadsheetId'
--
-- * 'sbuUploadType'
--
-- * 'sbuPayload'
--
-- * 'sbuCallback'
spreadsheetsBatchUpdate
    :: Text -- ^ 'sbuSpreadsheetId'
    -> BatchUpdateSpreadsheetRequest -- ^ 'sbuPayload'
    -> SpreadsheetsBatchUpdate
spreadsheetsBatchUpdate pSbuSpreadsheetId_ pSbuPayload_ =
  SpreadsheetsBatchUpdate'
    { _sbuXgafv = Nothing
    , _sbuUploadProtocol = Nothing
    , _sbuAccessToken = Nothing
    , _sbuSpreadsheetId = pSbuSpreadsheetId_
    , _sbuUploadType = Nothing
    , _sbuPayload = pSbuPayload_
    , _sbuCallback = Nothing
    }

-- | V1 error format.
sbuXgafv :: Lens' SpreadsheetsBatchUpdate (Maybe Xgafv)
sbuXgafv = lens _sbuXgafv (\ s a -> s{_sbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sbuUploadProtocol :: Lens' SpreadsheetsBatchUpdate (Maybe Text)
sbuUploadProtocol
  = lens _sbuUploadProtocol
      (\ s a -> s{_sbuUploadProtocol = a})

-- | OAuth access token.
sbuAccessToken :: Lens' SpreadsheetsBatchUpdate (Maybe Text)
sbuAccessToken
  = lens _sbuAccessToken
      (\ s a -> s{_sbuAccessToken = a})

-- | The spreadsheet to apply the updates to.
sbuSpreadsheetId :: Lens' SpreadsheetsBatchUpdate Text
sbuSpreadsheetId
  = lens _sbuSpreadsheetId
      (\ s a -> s{_sbuSpreadsheetId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sbuUploadType :: Lens' SpreadsheetsBatchUpdate (Maybe Text)
sbuUploadType
  = lens _sbuUploadType
      (\ s a -> s{_sbuUploadType = a})

-- | Multipart request metadata.
sbuPayload :: Lens' SpreadsheetsBatchUpdate BatchUpdateSpreadsheetRequest
sbuPayload
  = lens _sbuPayload (\ s a -> s{_sbuPayload = a})

-- | JSONP
sbuCallback :: Lens' SpreadsheetsBatchUpdate (Maybe Text)
sbuCallback
  = lens _sbuCallback (\ s a -> s{_sbuCallback = a})

instance GoogleRequest SpreadsheetsBatchUpdate where
        type Rs SpreadsheetsBatchUpdate =
             BatchUpdateSpreadsheetResponse
        type Scopes SpreadsheetsBatchUpdate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/spreadsheets"]
        requestClient SpreadsheetsBatchUpdate'{..}
          = go _sbuSpreadsheetId _sbuXgafv _sbuUploadProtocol
              _sbuAccessToken
              _sbuUploadType
              _sbuCallback
              (Just AltJSON)
              _sbuPayload
              sheetsService
          where go
                  = buildClient
                      (Proxy :: Proxy SpreadsheetsBatchUpdateResource)
                      mempty
