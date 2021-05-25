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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Files.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report file by its report ID and file ID. This method
-- supports media download.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.files.get@.
module Network.Google.Resource.DFAReporting.Reports.Files.Get
    (
    -- * REST Resource
      ReportsFilesGetResource

    -- * Creating a Request
    , reportsFilesGet
    , ReportsFilesGet

    -- * Request Lenses
    , rfgXgafv
    , rfgUploadProtocol
    , rfgAccessToken
    , rfgReportId
    , rfgUploadType
    , rfgProFileId
    , rfgFileId
    , rfgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.files.get@ method which the
-- 'ReportsFilesGet' request conforms to.
type ReportsFilesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
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
           "userprofiles" :>
             Capture "profileId" (Textual Int64) :>
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
-- /See:/ 'reportsFilesGet' smart constructor.
data ReportsFilesGet =
  ReportsFilesGet'
    { _rfgXgafv :: !(Maybe Xgafv)
    , _rfgUploadProtocol :: !(Maybe Text)
    , _rfgAccessToken :: !(Maybe Text)
    , _rfgReportId :: !(Textual Int64)
    , _rfgUploadType :: !(Maybe Text)
    , _rfgProFileId :: !(Textual Int64)
    , _rfgFileId :: !(Textual Int64)
    , _rfgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsFilesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfgXgafv'
--
-- * 'rfgUploadProtocol'
--
-- * 'rfgAccessToken'
--
-- * 'rfgReportId'
--
-- * 'rfgUploadType'
--
-- * 'rfgProFileId'
--
-- * 'rfgFileId'
--
-- * 'rfgCallback'
reportsFilesGet
    :: Int64 -- ^ 'rfgReportId'
    -> Int64 -- ^ 'rfgProFileId'
    -> Int64 -- ^ 'rfgFileId'
    -> ReportsFilesGet
reportsFilesGet pRfgReportId_ pRfgProFileId_ pRfgFileId_ =
  ReportsFilesGet'
    { _rfgXgafv = Nothing
    , _rfgUploadProtocol = Nothing
    , _rfgAccessToken = Nothing
    , _rfgReportId = _Coerce # pRfgReportId_
    , _rfgUploadType = Nothing
    , _rfgProFileId = _Coerce # pRfgProFileId_
    , _rfgFileId = _Coerce # pRfgFileId_
    , _rfgCallback = Nothing
    }


-- | V1 error format.
rfgXgafv :: Lens' ReportsFilesGet (Maybe Xgafv)
rfgXgafv = lens _rfgXgafv (\ s a -> s{_rfgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rfgUploadProtocol :: Lens' ReportsFilesGet (Maybe Text)
rfgUploadProtocol
  = lens _rfgUploadProtocol
      (\ s a -> s{_rfgUploadProtocol = a})

-- | OAuth access token.
rfgAccessToken :: Lens' ReportsFilesGet (Maybe Text)
rfgAccessToken
  = lens _rfgAccessToken
      (\ s a -> s{_rfgAccessToken = a})

-- | The ID of the report.
rfgReportId :: Lens' ReportsFilesGet Int64
rfgReportId
  = lens _rfgReportId (\ s a -> s{_rfgReportId = a}) .
      _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rfgUploadType :: Lens' ReportsFilesGet (Maybe Text)
rfgUploadType
  = lens _rfgUploadType
      (\ s a -> s{_rfgUploadType = a})

-- | The Campaign Manager 360 user profile ID.
rfgProFileId :: Lens' ReportsFilesGet Int64
rfgProFileId
  = lens _rfgProFileId (\ s a -> s{_rfgProFileId = a})
      . _Coerce

-- | The ID of the report file.
rfgFileId :: Lens' ReportsFilesGet Int64
rfgFileId
  = lens _rfgFileId (\ s a -> s{_rfgFileId = a}) .
      _Coerce

-- | JSONP
rfgCallback :: Lens' ReportsFilesGet (Maybe Text)
rfgCallback
  = lens _rfgCallback (\ s a -> s{_rfgCallback = a})

instance GoogleRequest ReportsFilesGet where
        type Rs ReportsFilesGet = File
        type Scopes ReportsFilesGet =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient ReportsFilesGet'{..}
          = go _rfgProFileId _rfgReportId _rfgFileId _rfgXgafv
              _rfgUploadProtocol
              _rfgAccessToken
              _rfgUploadType
              _rfgCallback
              (Just AltJSON)
              dFAReportingService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy ReportsFilesGetResource)
                      mempty

instance GoogleRequest
           (MediaDownload ReportsFilesGet)
         where
        type Rs (MediaDownload ReportsFilesGet) = Stream
        type Scopes (MediaDownload ReportsFilesGet) =
             Scopes ReportsFilesGet
        requestClient (MediaDownload ReportsFilesGet'{..})
          = go _rfgProFileId _rfgReportId _rfgFileId _rfgXgafv
              _rfgUploadProtocol
              _rfgAccessToken
              _rfgUploadType
              _rfgCallback
              (Just AltMedia)
              dFAReportingService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy ReportsFilesGetResource)
                      mempty
