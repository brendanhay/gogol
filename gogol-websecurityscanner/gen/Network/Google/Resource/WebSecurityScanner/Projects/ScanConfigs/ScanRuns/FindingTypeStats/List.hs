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
-- Module      : Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.FindingTypeStats.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all FindingTypeStats under a given ScanRun.
--
-- /See:/ <https://cloud.google.com/security-scanner/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.scanRuns.findingTypeStats.list@.
module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.FindingTypeStats.List
    (
    -- * REST Resource
      ProjectsScanConfigsScanRunsFindingTypeStatsListResource

    -- * Creating a Request
    , projectsScanConfigsScanRunsFindingTypeStatsList
    , ProjectsScanConfigsScanRunsFindingTypeStatsList

    -- * Request Lenses
    , pscsrftslParent
    , pscsrftslXgafv
    , pscsrftslUploadProtocol
    , pscsrftslAccessToken
    , pscsrftslUploadType
    , pscsrftslCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.scanRuns.findingTypeStats.list@ method which the
-- 'ProjectsScanConfigsScanRunsFindingTypeStatsList' request conforms to.
type ProjectsScanConfigsScanRunsFindingTypeStatsListResource
     =
     "v1alpha" :>
       Capture "parent" Text :>
         "findingTypeStats" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ListFindingTypeStatsResponse

-- | List all FindingTypeStats under a given ScanRun.
--
-- /See:/ 'projectsScanConfigsScanRunsFindingTypeStatsList' smart constructor.
data ProjectsScanConfigsScanRunsFindingTypeStatsList =
  ProjectsScanConfigsScanRunsFindingTypeStatsList'
    { _pscsrftslParent         :: !Text
    , _pscsrftslXgafv          :: !(Maybe Xgafv)
    , _pscsrftslUploadProtocol :: !(Maybe Text)
    , _pscsrftslAccessToken    :: !(Maybe Text)
    , _pscsrftslUploadType     :: !(Maybe Text)
    , _pscsrftslCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsScanConfigsScanRunsFindingTypeStatsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscsrftslParent'
--
-- * 'pscsrftslXgafv'
--
-- * 'pscsrftslUploadProtocol'
--
-- * 'pscsrftslAccessToken'
--
-- * 'pscsrftslUploadType'
--
-- * 'pscsrftslCallback'
projectsScanConfigsScanRunsFindingTypeStatsList
    :: Text -- ^ 'pscsrftslParent'
    -> ProjectsScanConfigsScanRunsFindingTypeStatsList
projectsScanConfigsScanRunsFindingTypeStatsList pPscsrftslParent_ =
  ProjectsScanConfigsScanRunsFindingTypeStatsList'
    { _pscsrftslParent = pPscsrftslParent_
    , _pscsrftslXgafv = Nothing
    , _pscsrftslUploadProtocol = Nothing
    , _pscsrftslAccessToken = Nothing
    , _pscsrftslUploadType = Nothing
    , _pscsrftslCallback = Nothing
    }


-- | Required. The parent resource name, which should be a scan run resource
-- name in the format
-- \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\'.
pscsrftslParent :: Lens' ProjectsScanConfigsScanRunsFindingTypeStatsList Text
pscsrftslParent
  = lens _pscsrftslParent
      (\ s a -> s{_pscsrftslParent = a})

-- | V1 error format.
pscsrftslXgafv :: Lens' ProjectsScanConfigsScanRunsFindingTypeStatsList (Maybe Xgafv)
pscsrftslXgafv
  = lens _pscsrftslXgafv
      (\ s a -> s{_pscsrftslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscsrftslUploadProtocol :: Lens' ProjectsScanConfigsScanRunsFindingTypeStatsList (Maybe Text)
pscsrftslUploadProtocol
  = lens _pscsrftslUploadProtocol
      (\ s a -> s{_pscsrftslUploadProtocol = a})

-- | OAuth access token.
pscsrftslAccessToken :: Lens' ProjectsScanConfigsScanRunsFindingTypeStatsList (Maybe Text)
pscsrftslAccessToken
  = lens _pscsrftslAccessToken
      (\ s a -> s{_pscsrftslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscsrftslUploadType :: Lens' ProjectsScanConfigsScanRunsFindingTypeStatsList (Maybe Text)
pscsrftslUploadType
  = lens _pscsrftslUploadType
      (\ s a -> s{_pscsrftslUploadType = a})

-- | JSONP
pscsrftslCallback :: Lens' ProjectsScanConfigsScanRunsFindingTypeStatsList (Maybe Text)
pscsrftslCallback
  = lens _pscsrftslCallback
      (\ s a -> s{_pscsrftslCallback = a})

instance GoogleRequest
           ProjectsScanConfigsScanRunsFindingTypeStatsList
         where
        type Rs
               ProjectsScanConfigsScanRunsFindingTypeStatsList
             = ListFindingTypeStatsResponse
        type Scopes
               ProjectsScanConfigsScanRunsFindingTypeStatsList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsScanConfigsScanRunsFindingTypeStatsList'{..}
          = go _pscsrftslParent _pscsrftslXgafv
              _pscsrftslUploadProtocol
              _pscsrftslAccessToken
              _pscsrftslUploadType
              _pscsrftslCallback
              (Just AltJSON)
              webSecurityScannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsScanConfigsScanRunsFindingTypeStatsListResource)
                      mempty
