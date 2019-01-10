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
-- Module      : Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists ScanRuns under a given ScanConfig, in descending order of ScanRun
-- stop time.
--
-- /See:/ <https://cloud.google.com/security-scanner/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.scanRuns.list@.
module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.List
    (
    -- * REST Resource
      ProjectsScanConfigsScanRunsListResource

    -- * Creating a Request
    , projectsScanConfigsScanRunsList
    , ProjectsScanConfigsScanRunsList

    -- * Request Lenses
    , pscsrlParent
    , pscsrlXgafv
    , pscsrlUploadProtocol
    , pscsrlAccessToken
    , pscsrlUploadType
    , pscsrlPageToken
    , pscsrlPageSize
    , pscsrlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.scanRuns.list@ method which the
-- 'ProjectsScanConfigsScanRunsList' request conforms to.
type ProjectsScanConfigsScanRunsListResource =
     "v1alpha" :>
       Capture "parent" Text :>
         "scanRuns" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListScanRunsResponse

-- | Lists ScanRuns under a given ScanConfig, in descending order of ScanRun
-- stop time.
--
-- /See:/ 'projectsScanConfigsScanRunsList' smart constructor.
data ProjectsScanConfigsScanRunsList = ProjectsScanConfigsScanRunsList'
    { _pscsrlParent         :: !Text
    , _pscsrlXgafv          :: !(Maybe Xgafv)
    , _pscsrlUploadProtocol :: !(Maybe Text)
    , _pscsrlAccessToken    :: !(Maybe Text)
    , _pscsrlUploadType     :: !(Maybe Text)
    , _pscsrlPageToken      :: !(Maybe Text)
    , _pscsrlPageSize       :: !(Maybe (Textual Int32))
    , _pscsrlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsScanConfigsScanRunsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscsrlParent'
--
-- * 'pscsrlXgafv'
--
-- * 'pscsrlUploadProtocol'
--
-- * 'pscsrlAccessToken'
--
-- * 'pscsrlUploadType'
--
-- * 'pscsrlPageToken'
--
-- * 'pscsrlPageSize'
--
-- * 'pscsrlCallback'
projectsScanConfigsScanRunsList
    :: Text -- ^ 'pscsrlParent'
    -> ProjectsScanConfigsScanRunsList
projectsScanConfigsScanRunsList pPscsrlParent_ =
    ProjectsScanConfigsScanRunsList'
    { _pscsrlParent = pPscsrlParent_
    , _pscsrlXgafv = Nothing
    , _pscsrlUploadProtocol = Nothing
    , _pscsrlAccessToken = Nothing
    , _pscsrlUploadType = Nothing
    , _pscsrlPageToken = Nothing
    , _pscsrlPageSize = Nothing
    , _pscsrlCallback = Nothing
    }

-- | Required. The parent resource name, which should be a scan resource name
-- in the format \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\'.
pscsrlParent :: Lens' ProjectsScanConfigsScanRunsList Text
pscsrlParent
  = lens _pscsrlParent (\ s a -> s{_pscsrlParent = a})

-- | V1 error format.
pscsrlXgafv :: Lens' ProjectsScanConfigsScanRunsList (Maybe Xgafv)
pscsrlXgafv
  = lens _pscsrlXgafv (\ s a -> s{_pscsrlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscsrlUploadProtocol :: Lens' ProjectsScanConfigsScanRunsList (Maybe Text)
pscsrlUploadProtocol
  = lens _pscsrlUploadProtocol
      (\ s a -> s{_pscsrlUploadProtocol = a})

-- | OAuth access token.
pscsrlAccessToken :: Lens' ProjectsScanConfigsScanRunsList (Maybe Text)
pscsrlAccessToken
  = lens _pscsrlAccessToken
      (\ s a -> s{_pscsrlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscsrlUploadType :: Lens' ProjectsScanConfigsScanRunsList (Maybe Text)
pscsrlUploadType
  = lens _pscsrlUploadType
      (\ s a -> s{_pscsrlUploadType = a})

-- | A token identifying a page of results to be returned. This should be a
-- \`next_page_token\` value returned from a previous List request. If
-- unspecified, the first page of results is returned.
pscsrlPageToken :: Lens' ProjectsScanConfigsScanRunsList (Maybe Text)
pscsrlPageToken
  = lens _pscsrlPageToken
      (\ s a -> s{_pscsrlPageToken = a})

-- | The maximum number of ScanRuns to return, can be limited by server. If
-- not specified or not positive, the implementation will select a
-- reasonable value.
pscsrlPageSize :: Lens' ProjectsScanConfigsScanRunsList (Maybe Int32)
pscsrlPageSize
  = lens _pscsrlPageSize
      (\ s a -> s{_pscsrlPageSize = a})
      . mapping _Coerce

-- | JSONP
pscsrlCallback :: Lens' ProjectsScanConfigsScanRunsList (Maybe Text)
pscsrlCallback
  = lens _pscsrlCallback
      (\ s a -> s{_pscsrlCallback = a})

instance GoogleRequest
         ProjectsScanConfigsScanRunsList where
        type Rs ProjectsScanConfigsScanRunsList =
             ListScanRunsResponse
        type Scopes ProjectsScanConfigsScanRunsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsScanConfigsScanRunsList'{..}
          = go _pscsrlParent _pscsrlXgafv _pscsrlUploadProtocol
              _pscsrlAccessToken
              _pscsrlUploadType
              _pscsrlPageToken
              _pscsrlPageSize
              _pscsrlCallback
              (Just AltJSON)
              webSecurityScannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsScanConfigsScanRunsListResource)
                      mempty
