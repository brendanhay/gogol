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
-- Module      : Network.Google.Resource.DLP.Projects.DeidentifyTemplates.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a DeidentifyTemplate for re-using frequently used configuration
-- for de-identifying content, images, and storage. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.deidentifyTemplates.create@.
module Network.Google.Resource.DLP.Projects.DeidentifyTemplates.Create
    (
    -- * REST Resource
      ProjectsDeidentifyTemplatesCreateResource

    -- * Creating a Request
    , projectsDeidentifyTemplatesCreate
    , ProjectsDeidentifyTemplatesCreate

    -- * Request Lenses
    , pdtcParent
    , pdtcXgafv
    , pdtcUploadProtocol
    , pdtcAccessToken
    , pdtcUploadType
    , pdtcPayload
    , pdtcCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.deidentifyTemplates.create@ method which the
-- 'ProjectsDeidentifyTemplatesCreate' request conforms to.
type ProjectsDeidentifyTemplatesCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "deidentifyTemplates" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
                         :> Post '[JSON] GooglePrivacyDlpV2DeidentifyTemplate

-- | Creates a DeidentifyTemplate for re-using frequently used configuration
-- for de-identifying content, images, and storage. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ 'projectsDeidentifyTemplatesCreate' smart constructor.
data ProjectsDeidentifyTemplatesCreate =
  ProjectsDeidentifyTemplatesCreate'
    { _pdtcParent         :: !Text
    , _pdtcXgafv          :: !(Maybe Xgafv)
    , _pdtcUploadProtocol :: !(Maybe Text)
    , _pdtcAccessToken    :: !(Maybe Text)
    , _pdtcUploadType     :: !(Maybe Text)
    , _pdtcPayload        :: !GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
    , _pdtcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDeidentifyTemplatesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdtcParent'
--
-- * 'pdtcXgafv'
--
-- * 'pdtcUploadProtocol'
--
-- * 'pdtcAccessToken'
--
-- * 'pdtcUploadType'
--
-- * 'pdtcPayload'
--
-- * 'pdtcCallback'
projectsDeidentifyTemplatesCreate
    :: Text -- ^ 'pdtcParent'
    -> GooglePrivacyDlpV2CreateDeidentifyTemplateRequest -- ^ 'pdtcPayload'
    -> ProjectsDeidentifyTemplatesCreate
projectsDeidentifyTemplatesCreate pPdtcParent_ pPdtcPayload_ =
  ProjectsDeidentifyTemplatesCreate'
    { _pdtcParent = pPdtcParent_
    , _pdtcXgafv = Nothing
    , _pdtcUploadProtocol = Nothing
    , _pdtcAccessToken = Nothing
    , _pdtcUploadType = Nothing
    , _pdtcPayload = pPdtcPayload_
    , _pdtcCallback = Nothing
    }


-- | The parent resource name, for example projects\/my-project-id or
-- organizations\/my-org-id.
pdtcParent :: Lens' ProjectsDeidentifyTemplatesCreate Text
pdtcParent
  = lens _pdtcParent (\ s a -> s{_pdtcParent = a})

-- | V1 error format.
pdtcXgafv :: Lens' ProjectsDeidentifyTemplatesCreate (Maybe Xgafv)
pdtcXgafv
  = lens _pdtcXgafv (\ s a -> s{_pdtcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdtcUploadProtocol :: Lens' ProjectsDeidentifyTemplatesCreate (Maybe Text)
pdtcUploadProtocol
  = lens _pdtcUploadProtocol
      (\ s a -> s{_pdtcUploadProtocol = a})

-- | OAuth access token.
pdtcAccessToken :: Lens' ProjectsDeidentifyTemplatesCreate (Maybe Text)
pdtcAccessToken
  = lens _pdtcAccessToken
      (\ s a -> s{_pdtcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdtcUploadType :: Lens' ProjectsDeidentifyTemplatesCreate (Maybe Text)
pdtcUploadType
  = lens _pdtcUploadType
      (\ s a -> s{_pdtcUploadType = a})

-- | Multipart request metadata.
pdtcPayload :: Lens' ProjectsDeidentifyTemplatesCreate GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
pdtcPayload
  = lens _pdtcPayload (\ s a -> s{_pdtcPayload = a})

-- | JSONP
pdtcCallback :: Lens' ProjectsDeidentifyTemplatesCreate (Maybe Text)
pdtcCallback
  = lens _pdtcCallback (\ s a -> s{_pdtcCallback = a})

instance GoogleRequest
           ProjectsDeidentifyTemplatesCreate
         where
        type Rs ProjectsDeidentifyTemplatesCreate =
             GooglePrivacyDlpV2DeidentifyTemplate
        type Scopes ProjectsDeidentifyTemplatesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsDeidentifyTemplatesCreate'{..}
          = go _pdtcParent _pdtcXgafv _pdtcUploadProtocol
              _pdtcAccessToken
              _pdtcUploadType
              _pdtcCallback
              (Just AltJSON)
              _pdtcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDeidentifyTemplatesCreateResource)
                      mempty
