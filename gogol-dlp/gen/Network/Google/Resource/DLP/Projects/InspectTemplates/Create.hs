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
-- Module      : Network.Google.Resource.DLP.Projects.InspectTemplates.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an InspectTemplate for re-using frequently used configuration
-- for inspecting content, images, and storage. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.inspectTemplates.create@.
module Network.Google.Resource.DLP.Projects.InspectTemplates.Create
    (
    -- * REST Resource
      ProjectsInspectTemplatesCreateResource

    -- * Creating a Request
    , projectsInspectTemplatesCreate
    , ProjectsInspectTemplatesCreate

    -- * Request Lenses
    , pitcParent
    , pitcXgafv
    , pitcUploadProtocol
    , pitcAccessToken
    , pitcUploadType
    , pitcPayload
    , pitcCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.inspectTemplates.create@ method which the
-- 'ProjectsInspectTemplatesCreate' request conforms to.
type ProjectsInspectTemplatesCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "inspectTemplates" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2CreateInspectTemplateRequest
                         :> Post '[JSON] GooglePrivacyDlpV2InspectTemplate

-- | Creates an InspectTemplate for re-using frequently used configuration
-- for inspecting content, images, and storage. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'projectsInspectTemplatesCreate' smart constructor.
data ProjectsInspectTemplatesCreate =
  ProjectsInspectTemplatesCreate'
    { _pitcParent         :: !Text
    , _pitcXgafv          :: !(Maybe Xgafv)
    , _pitcUploadProtocol :: !(Maybe Text)
    , _pitcAccessToken    :: !(Maybe Text)
    , _pitcUploadType     :: !(Maybe Text)
    , _pitcPayload        :: !GooglePrivacyDlpV2CreateInspectTemplateRequest
    , _pitcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInspectTemplatesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitcParent'
--
-- * 'pitcXgafv'
--
-- * 'pitcUploadProtocol'
--
-- * 'pitcAccessToken'
--
-- * 'pitcUploadType'
--
-- * 'pitcPayload'
--
-- * 'pitcCallback'
projectsInspectTemplatesCreate
    :: Text -- ^ 'pitcParent'
    -> GooglePrivacyDlpV2CreateInspectTemplateRequest -- ^ 'pitcPayload'
    -> ProjectsInspectTemplatesCreate
projectsInspectTemplatesCreate pPitcParent_ pPitcPayload_ =
  ProjectsInspectTemplatesCreate'
    { _pitcParent = pPitcParent_
    , _pitcXgafv = Nothing
    , _pitcUploadProtocol = Nothing
    , _pitcAccessToken = Nothing
    , _pitcUploadType = Nothing
    , _pitcPayload = pPitcPayload_
    , _pitcCallback = Nothing
    }


-- | The parent resource name, for example projects\/my-project-id or
-- organizations\/my-org-id.
pitcParent :: Lens' ProjectsInspectTemplatesCreate Text
pitcParent
  = lens _pitcParent (\ s a -> s{_pitcParent = a})

-- | V1 error format.
pitcXgafv :: Lens' ProjectsInspectTemplatesCreate (Maybe Xgafv)
pitcXgafv
  = lens _pitcXgafv (\ s a -> s{_pitcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitcUploadProtocol :: Lens' ProjectsInspectTemplatesCreate (Maybe Text)
pitcUploadProtocol
  = lens _pitcUploadProtocol
      (\ s a -> s{_pitcUploadProtocol = a})

-- | OAuth access token.
pitcAccessToken :: Lens' ProjectsInspectTemplatesCreate (Maybe Text)
pitcAccessToken
  = lens _pitcAccessToken
      (\ s a -> s{_pitcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitcUploadType :: Lens' ProjectsInspectTemplatesCreate (Maybe Text)
pitcUploadType
  = lens _pitcUploadType
      (\ s a -> s{_pitcUploadType = a})

-- | Multipart request metadata.
pitcPayload :: Lens' ProjectsInspectTemplatesCreate GooglePrivacyDlpV2CreateInspectTemplateRequest
pitcPayload
  = lens _pitcPayload (\ s a -> s{_pitcPayload = a})

-- | JSONP
pitcCallback :: Lens' ProjectsInspectTemplatesCreate (Maybe Text)
pitcCallback
  = lens _pitcCallback (\ s a -> s{_pitcCallback = a})

instance GoogleRequest ProjectsInspectTemplatesCreate
         where
        type Rs ProjectsInspectTemplatesCreate =
             GooglePrivacyDlpV2InspectTemplate
        type Scopes ProjectsInspectTemplatesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInspectTemplatesCreate'{..}
          = go _pitcParent _pitcXgafv _pitcUploadProtocol
              _pitcAccessToken
              _pitcUploadType
              _pitcCallback
              (Just AltJSON)
              _pitcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInspectTemplatesCreateResource)
                      mempty
