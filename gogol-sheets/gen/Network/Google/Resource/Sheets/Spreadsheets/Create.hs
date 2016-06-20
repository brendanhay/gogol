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
-- Module      : Network.Google.Resource.Sheets.Spreadsheets.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a spreadsheet, returning the newly created spreadsheet.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.create@.
module Network.Google.Resource.Sheets.Spreadsheets.Create
    (
    -- * REST Resource
      SpreadsheetsCreateResource

    -- * Creating a Request
    , spreadsheetsCreate
    , SpreadsheetsCreate

    -- * Request Lenses
    , scXgafv
    , scUploadProtocol
    , scPp
    , scAccessToken
    , scUploadType
    , scPayload
    , scBearerToken
    , scCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.create@ method which the
-- 'SpreadsheetsCreate' request conforms to.
type SpreadsheetsCreateResource =
     "v4" :>
       "spreadsheets" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Spreadsheet :>
                           Post '[JSON] Spreadsheet

-- | Creates a spreadsheet, returning the newly created spreadsheet.
--
-- /See:/ 'spreadsheetsCreate' smart constructor.
data SpreadsheetsCreate = SpreadsheetsCreate'
    { _scXgafv          :: !(Maybe Xgafv)
    , _scUploadProtocol :: !(Maybe Text)
    , _scPp             :: !Bool
    , _scAccessToken    :: !(Maybe Text)
    , _scUploadType     :: !(Maybe Text)
    , _scPayload        :: !Spreadsheet
    , _scBearerToken    :: !(Maybe Text)
    , _scCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SpreadsheetsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scXgafv'
--
-- * 'scUploadProtocol'
--
-- * 'scPp'
--
-- * 'scAccessToken'
--
-- * 'scUploadType'
--
-- * 'scPayload'
--
-- * 'scBearerToken'
--
-- * 'scCallback'
spreadsheetsCreate
    :: Spreadsheet -- ^ 'scPayload'
    -> SpreadsheetsCreate
spreadsheetsCreate pScPayload_ =
    SpreadsheetsCreate'
    { _scXgafv = Nothing
    , _scUploadProtocol = Nothing
    , _scPp = True
    , _scAccessToken = Nothing
    , _scUploadType = Nothing
    , _scPayload = pScPayload_
    , _scBearerToken = Nothing
    , _scCallback = Nothing
    }

-- | V1 error format.
scXgafv :: Lens' SpreadsheetsCreate (Maybe Xgafv)
scXgafv = lens _scXgafv (\ s a -> s{_scXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
scUploadProtocol :: Lens' SpreadsheetsCreate (Maybe Text)
scUploadProtocol
  = lens _scUploadProtocol
      (\ s a -> s{_scUploadProtocol = a})

-- | Pretty-print response.
scPp :: Lens' SpreadsheetsCreate Bool
scPp = lens _scPp (\ s a -> s{_scPp = a})

-- | OAuth access token.
scAccessToken :: Lens' SpreadsheetsCreate (Maybe Text)
scAccessToken
  = lens _scAccessToken
      (\ s a -> s{_scAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
scUploadType :: Lens' SpreadsheetsCreate (Maybe Text)
scUploadType
  = lens _scUploadType (\ s a -> s{_scUploadType = a})

-- | Multipart request metadata.
scPayload :: Lens' SpreadsheetsCreate Spreadsheet
scPayload
  = lens _scPayload (\ s a -> s{_scPayload = a})

-- | OAuth bearer token.
scBearerToken :: Lens' SpreadsheetsCreate (Maybe Text)
scBearerToken
  = lens _scBearerToken
      (\ s a -> s{_scBearerToken = a})

-- | JSONP
scCallback :: Lens' SpreadsheetsCreate (Maybe Text)
scCallback
  = lens _scCallback (\ s a -> s{_scCallback = a})

instance GoogleRequest SpreadsheetsCreate where
        type Rs SpreadsheetsCreate = Spreadsheet
        type Scopes SpreadsheetsCreate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/spreadsheets"]
        requestClient SpreadsheetsCreate'{..}
          = go _scXgafv _scUploadProtocol (Just _scPp)
              _scAccessToken
              _scUploadType
              _scBearerToken
              _scCallback
              (Just AltJSON)
              _scPayload
              sheetsService
          where go
                  = buildClient
                      (Proxy :: Proxy SpreadsheetsCreateResource)
                      mempty
