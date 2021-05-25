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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.ScanConfigs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists scan configurations for the specified project.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.scanConfigs.list@.
module Network.Google.Resource.ContainerAnalysis.Projects.ScanConfigs.List
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
    , psclFilter
    , psclPageToken
    , psclPageSize
    , psclCallback
    ) where

import Network.Google.ContainerAnalysis.Types
import Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.scanConfigs.list@ method which the
-- 'ProjectsScanConfigsList' request conforms to.
type ProjectsScanConfigsListResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "scanConfigs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListScanConfigsResponse

-- | Lists scan configurations for the specified project.
--
-- /See:/ 'projectsScanConfigsList' smart constructor.
data ProjectsScanConfigsList =
  ProjectsScanConfigsList'
    { _psclParent :: !Text
    , _psclXgafv :: !(Maybe Xgafv)
    , _psclUploadProtocol :: !(Maybe Text)
    , _psclAccessToken :: !(Maybe Text)
    , _psclUploadType :: !(Maybe Text)
    , _psclFilter :: !(Maybe Text)
    , _psclPageToken :: !(Maybe Text)
    , _psclPageSize :: !(Maybe (Textual Int32))
    , _psclCallback :: !(Maybe Text)
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
-- * 'psclFilter'
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
    , _psclFilter = Nothing
    , _psclPageToken = Nothing
    , _psclPageSize = Nothing
    , _psclCallback = Nothing
    }


-- | Required. The name of the project to list scan configurations for in the
-- form of \`projects\/[PROJECT_ID]\`.
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

-- | Required. The filter expression.
psclFilter :: Lens' ProjectsScanConfigsList (Maybe Text)
psclFilter
  = lens _psclFilter (\ s a -> s{_psclFilter = a})

-- | Token to provide to skip to a particular spot in the list.
psclPageToken :: Lens' ProjectsScanConfigsList (Maybe Text)
psclPageToken
  = lens _psclPageToken
      (\ s a -> s{_psclPageToken = a})

-- | The number of scan configs to return in the list.
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
              _psclFilter
              _psclPageToken
              _psclPageSize
              _psclCallback
              (Just AltJSON)
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsScanConfigsListResource)
                      mempty
