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
-- Module      : Network.Google.Resource.DLP.Projects.DlpJobs.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new job to inspect storage or calculate risk metrics. See
-- https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and
-- https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn
-- more. When no InfoTypes or CustomInfoTypes are specified in inspect
-- jobs, the system will automatically choose what detectors to run. By
-- default this may be all types, but may change over time as detectors are
-- updated.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.dlpJobs.create@.
module Network.Google.Resource.DLP.Projects.DlpJobs.Create
    (
    -- * REST Resource
      ProjectsDlpJobsCreateResource

    -- * Creating a Request
    , projectsDlpJobsCreate
    , ProjectsDlpJobsCreate

    -- * Request Lenses
    , pParent
    , pXgafv
    , pUploadProtocol
    , pAccessToken
    , pUploadType
    , pPayload
    , pCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.dlpJobs.create@ method which the
-- 'ProjectsDlpJobsCreate' request conforms to.
type ProjectsDlpJobsCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "dlpJobs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GooglePrivacyDlpV2CreateDlpJobRequest
                         :> Post '[JSON] GooglePrivacyDlpV2DlpJob

-- | Creates a new job to inspect storage or calculate risk metrics. See
-- https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and
-- https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn
-- more. When no InfoTypes or CustomInfoTypes are specified in inspect
-- jobs, the system will automatically choose what detectors to run. By
-- default this may be all types, but may change over time as detectors are
-- updated.
--
-- /See:/ 'projectsDlpJobsCreate' smart constructor.
data ProjectsDlpJobsCreate =
  ProjectsDlpJobsCreate'
    { _pParent         :: !Text
    , _pXgafv          :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken    :: !(Maybe Text)
    , _pUploadType     :: !(Maybe Text)
    , _pPayload        :: !GooglePrivacyDlpV2CreateDlpJobRequest
    , _pCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDlpJobsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pParent'
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPayload'
--
-- * 'pCallback'
projectsDlpJobsCreate
    :: Text -- ^ 'pParent'
    -> GooglePrivacyDlpV2CreateDlpJobRequest -- ^ 'pPayload'
    -> ProjectsDlpJobsCreate
projectsDlpJobsCreate pPParent_ pPPayload_ =
  ProjectsDlpJobsCreate'
    { _pParent = pPParent_
    , _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPayload = pPPayload_
    , _pCallback = Nothing
    }


-- | The parent resource name, for example projects\/my-project-id.
pParent :: Lens' ProjectsDlpJobsCreate Text
pParent = lens _pParent (\ s a -> s{_pParent = a})

-- | V1 error format.
pXgafv :: Lens' ProjectsDlpJobsCreate (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsDlpJobsCreate (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsDlpJobsCreate (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsDlpJobsCreate (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Multipart request metadata.
pPayload :: Lens' ProjectsDlpJobsCreate GooglePrivacyDlpV2CreateDlpJobRequest
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | JSONP
pCallback :: Lens' ProjectsDlpJobsCreate (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsDlpJobsCreate where
        type Rs ProjectsDlpJobsCreate =
             GooglePrivacyDlpV2DlpJob
        type Scopes ProjectsDlpJobsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsDlpJobsCreate'{..}
          = go _pParent _pXgafv _pUploadProtocol _pAccessToken
              _pUploadType
              _pCallback
              (Just AltJSON)
              _pPayload
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDlpJobsCreateResource)
                      mempty
