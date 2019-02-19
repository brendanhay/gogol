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
-- Module      : Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists ScanConfigs under a given project.
--
-- /See:/ <https://cloud.google.com/security-scanner/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.list@.
module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.List
    (
    -- * REST Resource
      ProjectsScanConfigsListResource

    -- * Creating a Request
    , projectsScanConfigsList
    , ProjectsScanConfigsList

    -- * Request Lenses
    , psclParent
    , psclXgafv
    , psclUploadProtocol
    , psclAccessToken
    , psclUploadType
    , psclPageToken
    , psclPageSize
    , psclCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.list@ method which the
-- 'ProjectsScanConfigsList' request conforms to.
type ProjectsScanConfigsListResource =
     "v1alpha" :>
       Capture "parent" Text :>
         "scanConfigs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListScanConfigsResponse

-- | Lists ScanConfigs under a given project.
--
-- /See:/ 'projectsScanConfigsList' smart constructor.
data ProjectsScanConfigsList =
  ProjectsScanConfigsList'
    { _psclParent         :: !Text
    , _psclXgafv          :: !(Maybe Xgafv)
    , _psclUploadProtocol :: !(Maybe Text)
    , _psclAccessToken    :: !(Maybe Text)
    , _psclUploadType     :: !(Maybe Text)
    , _psclPageToken      :: !(Maybe Text)
    , _psclPageSize       :: !(Maybe (Textual Int32))
    , _psclCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsScanConfigsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psclParent'
--
-- * 'psclXgafv'
--
-- * 'psclUploadProtocol'
--
-- * 'psclAccessToken'
--
-- * 'psclUploadType'
--
-- * 'psclPageToken'
--
-- * 'psclPageSize'
--
-- * 'psclCallback'
projectsScanConfigsList
    :: Text -- ^ 'psclParent'
    -> ProjectsScanConfigsList
projectsScanConfigsList pPsclParent_ =
  ProjectsScanConfigsList'
    { _psclParent = pPsclParent_
    , _psclXgafv = Nothing
    , _psclUploadProtocol = Nothing
    , _psclAccessToken = Nothing
    , _psclUploadType = Nothing
    , _psclPageToken = Nothing
    , _psclPageSize = Nothing
    , _psclCallback = Nothing
    }


-- | Required. The parent resource name, which should be a project resource
-- name in the format \'projects\/{projectId}\'.
psclParent :: Lens' ProjectsScanConfigsList Text
psclParent
  = lens _psclParent (\ s a -> s{_psclParent = a})

-- | V1 error format.
psclXgafv :: Lens' ProjectsScanConfigsList (Maybe Xgafv)
psclXgafv
  = lens _psclXgafv (\ s a -> s{_psclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psclUploadProtocol :: Lens' ProjectsScanConfigsList (Maybe Text)
psclUploadProtocol
  = lens _psclUploadProtocol
      (\ s a -> s{_psclUploadProtocol = a})

-- | OAuth access token.
psclAccessToken :: Lens' ProjectsScanConfigsList (Maybe Text)
psclAccessToken
  = lens _psclAccessToken
      (\ s a -> s{_psclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psclUploadType :: Lens' ProjectsScanConfigsList (Maybe Text)
psclUploadType
  = lens _psclUploadType
      (\ s a -> s{_psclUploadType = a})

-- | A token identifying a page of results to be returned. This should be a
-- \`next_page_token\` value returned from a previous List request. If
-- unspecified, the first page of results is returned.
psclPageToken :: Lens' ProjectsScanConfigsList (Maybe Text)
psclPageToken
  = lens _psclPageToken
      (\ s a -> s{_psclPageToken = a})

-- | The maximum number of ScanConfigs to return, can be limited by server.
-- If not specified or not positive, the implementation will select a
-- reasonable value.
psclPageSize :: Lens' ProjectsScanConfigsList (Maybe Int32)
psclPageSize
  = lens _psclPageSize (\ s a -> s{_psclPageSize = a})
      . mapping _Coerce

-- | JSONP
psclCallback :: Lens' ProjectsScanConfigsList (Maybe Text)
psclCallback
  = lens _psclCallback (\ s a -> s{_psclCallback = a})

instance GoogleRequest ProjectsScanConfigsList where
        type Rs ProjectsScanConfigsList =
             ListScanConfigsResponse
        type Scopes ProjectsScanConfigsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsScanConfigsList'{..}
          = go _psclParent _psclXgafv _psclUploadProtocol
              _psclAccessToken
              _psclUploadType
              _psclPageToken
              _psclPageSize
              _psclCallback
              (Just AltJSON)
              webSecurityScannerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsScanConfigsListResource)
                      mempty
