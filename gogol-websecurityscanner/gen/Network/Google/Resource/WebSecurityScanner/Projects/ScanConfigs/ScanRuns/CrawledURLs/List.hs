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
-- Module      : Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.CrawledURLs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List CrawledUrls under a given ScanRun.
--
-- /See:/ <https://cloud.google.com/security-scanner/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.scanRuns.crawledUrls.list@.
module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.CrawledURLs.List
    (
    -- * REST Resource
      ProjectsScanConfigsScanRunsCrawledURLsListResource

    -- * Creating a Request
    , projectsScanConfigsScanRunsCrawledURLsList
    , ProjectsScanConfigsScanRunsCrawledURLsList

    -- * Request Lenses
    , pscsrculParent
    , pscsrculXgafv
    , pscsrculUploadProtocol
    , pscsrculAccessToken
    , pscsrculUploadType
    , pscsrculPageToken
    , pscsrculPageSize
    , pscsrculCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.scanRuns.crawledUrls.list@ method which the
-- 'ProjectsScanConfigsScanRunsCrawledURLsList' request conforms to.
type ProjectsScanConfigsScanRunsCrawledURLsListResource
     =
     "v1beta" :>
       Capture "parent" Text :>
         "crawledUrls" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListCrawledURLsResponse

-- | List CrawledUrls under a given ScanRun.
--
-- /See:/ 'projectsScanConfigsScanRunsCrawledURLsList' smart constructor.
data ProjectsScanConfigsScanRunsCrawledURLsList =
  ProjectsScanConfigsScanRunsCrawledURLsList'
    { _pscsrculParent         :: !Text
    , _pscsrculXgafv          :: !(Maybe Xgafv)
    , _pscsrculUploadProtocol :: !(Maybe Text)
    , _pscsrculAccessToken    :: !(Maybe Text)
    , _pscsrculUploadType     :: !(Maybe Text)
    , _pscsrculPageToken      :: !(Maybe Text)
    , _pscsrculPageSize       :: !(Maybe (Textual Int32))
    , _pscsrculCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsScanConfigsScanRunsCrawledURLsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscsrculParent'
--
-- * 'pscsrculXgafv'
--
-- * 'pscsrculUploadProtocol'
--
-- * 'pscsrculAccessToken'
--
-- * 'pscsrculUploadType'
--
-- * 'pscsrculPageToken'
--
-- * 'pscsrculPageSize'
--
-- * 'pscsrculCallback'
projectsScanConfigsScanRunsCrawledURLsList
    :: Text -- ^ 'pscsrculParent'
    -> ProjectsScanConfigsScanRunsCrawledURLsList
projectsScanConfigsScanRunsCrawledURLsList pPscsrculParent_ =
  ProjectsScanConfigsScanRunsCrawledURLsList'
    { _pscsrculParent = pPscsrculParent_
    , _pscsrculXgafv = Nothing
    , _pscsrculUploadProtocol = Nothing
    , _pscsrculAccessToken = Nothing
    , _pscsrculUploadType = Nothing
    , _pscsrculPageToken = Nothing
    , _pscsrculPageSize = Nothing
    , _pscsrculCallback = Nothing
    }


-- | Required. The parent resource name, which should be a scan run resource
-- name in the format
-- \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\'.
pscsrculParent :: Lens' ProjectsScanConfigsScanRunsCrawledURLsList Text
pscsrculParent
  = lens _pscsrculParent
      (\ s a -> s{_pscsrculParent = a})

-- | V1 error format.
pscsrculXgafv :: Lens' ProjectsScanConfigsScanRunsCrawledURLsList (Maybe Xgafv)
pscsrculXgafv
  = lens _pscsrculXgafv
      (\ s a -> s{_pscsrculXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscsrculUploadProtocol :: Lens' ProjectsScanConfigsScanRunsCrawledURLsList (Maybe Text)
pscsrculUploadProtocol
  = lens _pscsrculUploadProtocol
      (\ s a -> s{_pscsrculUploadProtocol = a})

-- | OAuth access token.
pscsrculAccessToken :: Lens' ProjectsScanConfigsScanRunsCrawledURLsList (Maybe Text)
pscsrculAccessToken
  = lens _pscsrculAccessToken
      (\ s a -> s{_pscsrculAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscsrculUploadType :: Lens' ProjectsScanConfigsScanRunsCrawledURLsList (Maybe Text)
pscsrculUploadType
  = lens _pscsrculUploadType
      (\ s a -> s{_pscsrculUploadType = a})

-- | A token identifying a page of results to be returned. This should be a
-- \`next_page_token\` value returned from a previous List request. If
-- unspecified, the first page of results is returned.
pscsrculPageToken :: Lens' ProjectsScanConfigsScanRunsCrawledURLsList (Maybe Text)
pscsrculPageToken
  = lens _pscsrculPageToken
      (\ s a -> s{_pscsrculPageToken = a})

-- | The maximum number of CrawledUrls to return, can be limited by server.
-- If not specified or not positive, the implementation will select a
-- reasonable value.
pscsrculPageSize :: Lens' ProjectsScanConfigsScanRunsCrawledURLsList (Maybe Int32)
pscsrculPageSize
  = lens _pscsrculPageSize
      (\ s a -> s{_pscsrculPageSize = a})
      . mapping _Coerce

-- | JSONP
pscsrculCallback :: Lens' ProjectsScanConfigsScanRunsCrawledURLsList (Maybe Text)
pscsrculCallback
  = lens _pscsrculCallback
      (\ s a -> s{_pscsrculCallback = a})

instance GoogleRequest
           ProjectsScanConfigsScanRunsCrawledURLsList
         where
        type Rs ProjectsScanConfigsScanRunsCrawledURLsList =
             ListCrawledURLsResponse
        type Scopes
               ProjectsScanConfigsScanRunsCrawledURLsList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsScanConfigsScanRunsCrawledURLsList'{..}
          = go _pscsrculParent _pscsrculXgafv
              _pscsrculUploadProtocol
              _pscsrculAccessToken
              _pscsrculUploadType
              _pscsrculPageToken
              _pscsrculPageSize
              _pscsrculCallback
              (Just AltJSON)
              webSecurityScannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsScanConfigsScanRunsCrawledURLsListResource)
                      mempty
