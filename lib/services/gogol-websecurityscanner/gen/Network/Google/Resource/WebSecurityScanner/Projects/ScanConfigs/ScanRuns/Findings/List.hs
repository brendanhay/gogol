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
-- Module      : Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Findings.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List Findings under a given ScanRun.
--
-- /See:/ <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.scanRuns.findings.list@.
module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Findings.List
    (
    -- * REST Resource
      ProjectsScanConfigsScanRunsFindingsListResource

    -- * Creating a Request
    , projectsScanConfigsScanRunsFindingsList
    , ProjectsScanConfigsScanRunsFindingsList

    -- * Request Lenses
    , pscsrflParent
    , pscsrflXgafv
    , pscsrflUploadProtocol
    , pscsrflAccessToken
    , pscsrflUploadType
    , pscsrflFilter
    , pscsrflPageToken
    , pscsrflPageSize
    , pscsrflCallback
    ) where

import Network.Google.Prelude
import Network.Google.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.scanRuns.findings.list@ method which the
-- 'ProjectsScanConfigsScanRunsFindingsList' request conforms to.
type ProjectsScanConfigsScanRunsFindingsListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "findings" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListFindingsResponse

-- | List Findings under a given ScanRun.
--
-- /See:/ 'projectsScanConfigsScanRunsFindingsList' smart constructor.
data ProjectsScanConfigsScanRunsFindingsList =
  ProjectsScanConfigsScanRunsFindingsList'
    { _pscsrflParent :: !Text
    , _pscsrflXgafv :: !(Maybe Xgafv)
    , _pscsrflUploadProtocol :: !(Maybe Text)
    , _pscsrflAccessToken :: !(Maybe Text)
    , _pscsrflUploadType :: !(Maybe Text)
    , _pscsrflFilter :: !(Maybe Text)
    , _pscsrflPageToken :: !(Maybe Text)
    , _pscsrflPageSize :: !(Maybe (Textual Int32))
    , _pscsrflCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsScanConfigsScanRunsFindingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscsrflParent'
--
-- * 'pscsrflXgafv'
--
-- * 'pscsrflUploadProtocol'
--
-- * 'pscsrflAccessToken'
--
-- * 'pscsrflUploadType'
--
-- * 'pscsrflFilter'
--
-- * 'pscsrflPageToken'
--
-- * 'pscsrflPageSize'
--
-- * 'pscsrflCallback'
projectsScanConfigsScanRunsFindingsList
    :: Text -- ^ 'pscsrflParent'
    -> ProjectsScanConfigsScanRunsFindingsList
projectsScanConfigsScanRunsFindingsList pPscsrflParent_ =
  ProjectsScanConfigsScanRunsFindingsList'
    { _pscsrflParent = pPscsrflParent_
    , _pscsrflXgafv = Nothing
    , _pscsrflUploadProtocol = Nothing
    , _pscsrflAccessToken = Nothing
    , _pscsrflUploadType = Nothing
    , _pscsrflFilter = Nothing
    , _pscsrflPageToken = Nothing
    , _pscsrflPageSize = Nothing
    , _pscsrflCallback = Nothing
    }


-- | Required. The parent resource name, which should be a scan run resource
-- name in the format
-- \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\'.
pscsrflParent :: Lens' ProjectsScanConfigsScanRunsFindingsList Text
pscsrflParent
  = lens _pscsrflParent
      (\ s a -> s{_pscsrflParent = a})

-- | V1 error format.
pscsrflXgafv :: Lens' ProjectsScanConfigsScanRunsFindingsList (Maybe Xgafv)
pscsrflXgafv
  = lens _pscsrflXgafv (\ s a -> s{_pscsrflXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscsrflUploadProtocol :: Lens' ProjectsScanConfigsScanRunsFindingsList (Maybe Text)
pscsrflUploadProtocol
  = lens _pscsrflUploadProtocol
      (\ s a -> s{_pscsrflUploadProtocol = a})

-- | OAuth access token.
pscsrflAccessToken :: Lens' ProjectsScanConfigsScanRunsFindingsList (Maybe Text)
pscsrflAccessToken
  = lens _pscsrflAccessToken
      (\ s a -> s{_pscsrflAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscsrflUploadType :: Lens' ProjectsScanConfigsScanRunsFindingsList (Maybe Text)
pscsrflUploadType
  = lens _pscsrflUploadType
      (\ s a -> s{_pscsrflUploadType = a})

-- | The filter expression. The expression must be in the format: . Supported
-- field: \'finding_type\'. Supported operator: \'=\'.
pscsrflFilter :: Lens' ProjectsScanConfigsScanRunsFindingsList (Maybe Text)
pscsrflFilter
  = lens _pscsrflFilter
      (\ s a -> s{_pscsrflFilter = a})

-- | A token identifying a page of results to be returned. This should be a
-- \`next_page_token\` value returned from a previous List request. If
-- unspecified, the first page of results is returned.
pscsrflPageToken :: Lens' ProjectsScanConfigsScanRunsFindingsList (Maybe Text)
pscsrflPageToken
  = lens _pscsrflPageToken
      (\ s a -> s{_pscsrflPageToken = a})

-- | The maximum number of Findings to return, can be limited by server. If
-- not specified or not positive, the implementation will select a
-- reasonable value.
pscsrflPageSize :: Lens' ProjectsScanConfigsScanRunsFindingsList (Maybe Int32)
pscsrflPageSize
  = lens _pscsrflPageSize
      (\ s a -> s{_pscsrflPageSize = a})
      . mapping _Coerce

-- | JSONP
pscsrflCallback :: Lens' ProjectsScanConfigsScanRunsFindingsList (Maybe Text)
pscsrflCallback
  = lens _pscsrflCallback
      (\ s a -> s{_pscsrflCallback = a})

instance GoogleRequest
           ProjectsScanConfigsScanRunsFindingsList
         where
        type Rs ProjectsScanConfigsScanRunsFindingsList =
             ListFindingsResponse
        type Scopes ProjectsScanConfigsScanRunsFindingsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsScanConfigsScanRunsFindingsList'{..}
          = go _pscsrflParent _pscsrflXgafv
              _pscsrflUploadProtocol
              _pscsrflAccessToken
              _pscsrflUploadType
              _pscsrflFilter
              _pscsrflPageToken
              _pscsrflPageSize
              _pscsrflCallback
              (Just AltJSON)
              webSecurityScannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsScanConfigsScanRunsFindingsListResource)
                      mempty
