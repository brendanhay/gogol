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
-- Module      : Network.Google.Resource.DoubleClickSearch.Reports.GetFile
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Downloads a report file encoded in UTF-8.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.reports.getFile@.
module Network.Google.Resource.DoubleClickSearch.Reports.GetFile
    (
    -- * REST Resource
      ReportsGetFileResource

    -- * Creating a Request
    , reportsGetFile
    , ReportsGetFile

    -- * Request Lenses
    , rgfXgafv
    , rgfUploadProtocol
    , rgfAccessToken
    , rgfReportId
    , rgfUploadType
    , rgfReportFragment
    , rgfCallback
    ) where

import Network.Google.DoubleClickSearch.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclicksearch.reports.getFile@ method which the
-- 'ReportsGetFile' request conforms to.
type ReportsGetFileResource =
     "doubleclicksearch" :>
       "v2" :>
         "reports" :>
           Capture "reportId" Text :>
             "files" :>
               Capture "reportFragment" (Textual Int32) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] ()
       :<|>
       "doubleclicksearch" :>
         "v2" :>
           "reports" :>
             Capture "reportId" Text :>
               "files" :>
                 Capture "reportFragment" (Textual Int32) :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltMedia :>
                               Get '[OctetStream] Stream

-- | Downloads a report file encoded in UTF-8.
--
-- /See:/ 'reportsGetFile' smart constructor.
data ReportsGetFile =
  ReportsGetFile'
    { _rgfXgafv :: !(Maybe Xgafv)
    , _rgfUploadProtocol :: !(Maybe Text)
    , _rgfAccessToken :: !(Maybe Text)
    , _rgfReportId :: !Text
    , _rgfUploadType :: !(Maybe Text)
    , _rgfReportFragment :: !(Textual Int32)
    , _rgfCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsGetFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgfXgafv'
--
-- * 'rgfUploadProtocol'
--
-- * 'rgfAccessToken'
--
-- * 'rgfReportId'
--
-- * 'rgfUploadType'
--
-- * 'rgfReportFragment'
--
-- * 'rgfCallback'
reportsGetFile
    :: Text -- ^ 'rgfReportId'
    -> Int32 -- ^ 'rgfReportFragment'
    -> ReportsGetFile
reportsGetFile pRgfReportId_ pRgfReportFragment_ =
  ReportsGetFile'
    { _rgfXgafv = Nothing
    , _rgfUploadProtocol = Nothing
    , _rgfAccessToken = Nothing
    , _rgfReportId = pRgfReportId_
    , _rgfUploadType = Nothing
    , _rgfReportFragment = _Coerce # pRgfReportFragment_
    , _rgfCallback = Nothing
    }


-- | V1 error format.
rgfXgafv :: Lens' ReportsGetFile (Maybe Xgafv)
rgfXgafv = lens _rgfXgafv (\ s a -> s{_rgfXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgfUploadProtocol :: Lens' ReportsGetFile (Maybe Text)
rgfUploadProtocol
  = lens _rgfUploadProtocol
      (\ s a -> s{_rgfUploadProtocol = a})

-- | OAuth access token.
rgfAccessToken :: Lens' ReportsGetFile (Maybe Text)
rgfAccessToken
  = lens _rgfAccessToken
      (\ s a -> s{_rgfAccessToken = a})

-- | ID of the report.
rgfReportId :: Lens' ReportsGetFile Text
rgfReportId
  = lens _rgfReportId (\ s a -> s{_rgfReportId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgfUploadType :: Lens' ReportsGetFile (Maybe Text)
rgfUploadType
  = lens _rgfUploadType
      (\ s a -> s{_rgfUploadType = a})

-- | The index of the report fragment to download.
rgfReportFragment :: Lens' ReportsGetFile Int32
rgfReportFragment
  = lens _rgfReportFragment
      (\ s a -> s{_rgfReportFragment = a})
      . _Coerce

-- | JSONP
rgfCallback :: Lens' ReportsGetFile (Maybe Text)
rgfCallback
  = lens _rgfCallback (\ s a -> s{_rgfCallback = a})

instance GoogleRequest ReportsGetFile where
        type Rs ReportsGetFile = ()
        type Scopes ReportsGetFile =
             '["https://www.googleapis.com/auth/doubleclicksearch"]
        requestClient ReportsGetFile'{..}
          = go _rgfReportId _rgfReportFragment _rgfXgafv
              _rgfUploadProtocol
              _rgfAccessToken
              _rgfUploadType
              _rgfCallback
              (Just AltJSON)
              doubleClickSearchService
          where go :<|> _
                  = buildClient (Proxy :: Proxy ReportsGetFileResource)
                      mempty

instance GoogleRequest (MediaDownload ReportsGetFile)
         where
        type Rs (MediaDownload ReportsGetFile) = Stream
        type Scopes (MediaDownload ReportsGetFile) =
             Scopes ReportsGetFile
        requestClient (MediaDownload ReportsGetFile'{..})
          = go _rgfReportId _rgfReportFragment _rgfXgafv
              _rgfUploadProtocol
              _rgfAccessToken
              _rgfUploadType
              _rgfCallback
              (Just AltMedia)
              doubleClickSearchService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy ReportsGetFileResource)
                      mempty
