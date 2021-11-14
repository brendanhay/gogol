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
-- Module      : Network.Google.Resource.DFAReporting.Files.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report file by its report ID and file ID. This method
-- supports media download.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.files.get@.
module Network.Google.Resource.DFAReporting.Files.Get
    (
    -- * REST Resource
      FilesGetResource

    -- * Creating a Request
    , filesGet
    , FilesGet

    -- * Request Lenses
    , fgXgafv
    , fgUploadProtocol
    , fgAccessToken
    , fgReportId
    , fgUploadType
    , fgFileId
    , fgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.files.get@ method which the
-- 'FilesGet' request conforms to.
type FilesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "reports" :>
           Capture "reportId" (Textual Int64) :>
             "files" :>
               Capture "fileId" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] File
       :<|>
       "dfareporting" :>
         "v3.5" :>
           "reports" :>
             Capture "reportId" (Textual Int64) :>
               "files" :>
                 Capture "fileId" (Textual Int64) :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltMedia :>
                               Get '[OctetStream] Stream

-- | Retrieves a report file by its report ID and file ID. This method
-- supports media download.
--
-- /See:/ 'filesGet' smart constructor.
data FilesGet =
  FilesGet'
    { _fgXgafv :: !(Maybe Xgafv)
    , _fgUploadProtocol :: !(Maybe Text)
    , _fgAccessToken :: !(Maybe Text)
    , _fgReportId :: !(Textual Int64)
    , _fgUploadType :: !(Maybe Text)
    , _fgFileId :: !(Textual Int64)
    , _fgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FilesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgXgafv'
--
-- * 'fgUploadProtocol'
--
-- * 'fgAccessToken'
--
-- * 'fgReportId'
--
-- * 'fgUploadType'
--
-- * 'fgFileId'
--
-- * 'fgCallback'
filesGet
    :: Int64 -- ^ 'fgReportId'
    -> Int64 -- ^ 'fgFileId'
    -> FilesGet
filesGet pFgReportId_ pFgFileId_ =
  FilesGet'
    { _fgXgafv = Nothing
    , _fgUploadProtocol = Nothing
    , _fgAccessToken = Nothing
    , _fgReportId = _Coerce # pFgReportId_
    , _fgUploadType = Nothing
    , _fgFileId = _Coerce # pFgFileId_
    , _fgCallback = Nothing
    }


-- | V1 error format.
fgXgafv :: Lens' FilesGet (Maybe Xgafv)
fgXgafv = lens _fgXgafv (\ s a -> s{_fgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fgUploadProtocol :: Lens' FilesGet (Maybe Text)
fgUploadProtocol
  = lens _fgUploadProtocol
      (\ s a -> s{_fgUploadProtocol = a})

-- | OAuth access token.
fgAccessToken :: Lens' FilesGet (Maybe Text)
fgAccessToken
  = lens _fgAccessToken
      (\ s a -> s{_fgAccessToken = a})

-- | The ID of the report.
fgReportId :: Lens' FilesGet Int64
fgReportId
  = lens _fgReportId (\ s a -> s{_fgReportId = a}) .
      _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fgUploadType :: Lens' FilesGet (Maybe Text)
fgUploadType
  = lens _fgUploadType (\ s a -> s{_fgUploadType = a})

-- | The ID of the report file.
fgFileId :: Lens' FilesGet Int64
fgFileId
  = lens _fgFileId (\ s a -> s{_fgFileId = a}) .
      _Coerce

-- | JSONP
fgCallback :: Lens' FilesGet (Maybe Text)
fgCallback
  = lens _fgCallback (\ s a -> s{_fgCallback = a})

instance GoogleRequest FilesGet where
        type Rs FilesGet = File
        type Scopes FilesGet =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient FilesGet'{..}
          = go _fgReportId _fgFileId _fgXgafv _fgUploadProtocol
              _fgAccessToken
              _fgUploadType
              _fgCallback
              (Just AltJSON)
              dFAReportingService
          where go :<|> _
                  = buildClient (Proxy :: Proxy FilesGetResource)
                      mempty

instance GoogleRequest (MediaDownload FilesGet) where
        type Rs (MediaDownload FilesGet) = Stream
        type Scopes (MediaDownload FilesGet) =
             Scopes FilesGet
        requestClient (MediaDownload FilesGet'{..})
          = go _fgReportId _fgFileId _fgXgafv _fgUploadProtocol
              _fgAccessToken
              _fgUploadType
              _fgCallback
              (Just AltMedia)
              dFAReportingService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy FilesGetResource)
                      mempty
