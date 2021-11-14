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
-- Module      : Network.Google.Resource.DLP.Projects.DlpJobs.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running DlpJob. See
-- https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and
-- https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.dlpJobs.get@.
module Network.Google.Resource.DLP.Projects.DlpJobs.Get
    (
    -- * REST Resource
      ProjectsDlpJobsGetResource

    -- * Creating a Request
    , projectsDlpJobsGet
    , ProjectsDlpJobsGet

    -- * Request Lenses
    , pdjgXgafv
    , pdjgUploadProtocol
    , pdjgAccessToken
    , pdjgUploadType
    , pdjgName
    , pdjgCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.dlpJobs.get@ method which the
-- 'ProjectsDlpJobsGet' request conforms to.
type ProjectsDlpJobsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GooglePrivacyDlpV2DlpJob

-- | Gets the latest state of a long-running DlpJob. See
-- https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and
-- https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn
-- more.
--
-- /See:/ 'projectsDlpJobsGet' smart constructor.
data ProjectsDlpJobsGet =
  ProjectsDlpJobsGet'
    { _pdjgXgafv :: !(Maybe Xgafv)
    , _pdjgUploadProtocol :: !(Maybe Text)
    , _pdjgAccessToken :: !(Maybe Text)
    , _pdjgUploadType :: !(Maybe Text)
    , _pdjgName :: !Text
    , _pdjgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDlpJobsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdjgXgafv'
--
-- * 'pdjgUploadProtocol'
--
-- * 'pdjgAccessToken'
--
-- * 'pdjgUploadType'
--
-- * 'pdjgName'
--
-- * 'pdjgCallback'
projectsDlpJobsGet
    :: Text -- ^ 'pdjgName'
    -> ProjectsDlpJobsGet
projectsDlpJobsGet pPdjgName_ =
  ProjectsDlpJobsGet'
    { _pdjgXgafv = Nothing
    , _pdjgUploadProtocol = Nothing
    , _pdjgAccessToken = Nothing
    , _pdjgUploadType = Nothing
    , _pdjgName = pPdjgName_
    , _pdjgCallback = Nothing
    }


-- | V1 error format.
pdjgXgafv :: Lens' ProjectsDlpJobsGet (Maybe Xgafv)
pdjgXgafv
  = lens _pdjgXgafv (\ s a -> s{_pdjgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdjgUploadProtocol :: Lens' ProjectsDlpJobsGet (Maybe Text)
pdjgUploadProtocol
  = lens _pdjgUploadProtocol
      (\ s a -> s{_pdjgUploadProtocol = a})

-- | OAuth access token.
pdjgAccessToken :: Lens' ProjectsDlpJobsGet (Maybe Text)
pdjgAccessToken
  = lens _pdjgAccessToken
      (\ s a -> s{_pdjgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdjgUploadType :: Lens' ProjectsDlpJobsGet (Maybe Text)
pdjgUploadType
  = lens _pdjgUploadType
      (\ s a -> s{_pdjgUploadType = a})

-- | Required. The name of the DlpJob resource.
pdjgName :: Lens' ProjectsDlpJobsGet Text
pdjgName = lens _pdjgName (\ s a -> s{_pdjgName = a})

-- | JSONP
pdjgCallback :: Lens' ProjectsDlpJobsGet (Maybe Text)
pdjgCallback
  = lens _pdjgCallback (\ s a -> s{_pdjgCallback = a})

instance GoogleRequest ProjectsDlpJobsGet where
        type Rs ProjectsDlpJobsGet = GooglePrivacyDlpV2DlpJob
        type Scopes ProjectsDlpJobsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsDlpJobsGet'{..}
          = go _pdjgName _pdjgXgafv _pdjgUploadProtocol
              _pdjgAccessToken
              _pdjgUploadType
              _pdjgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDlpJobsGetResource)
                      mempty
