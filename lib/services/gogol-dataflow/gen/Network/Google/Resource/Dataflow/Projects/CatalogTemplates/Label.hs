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
-- Module      : Network.Google.Resource.Dataflow.Projects.CatalogTemplates.Label
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the label of the TemplateVersion. Label can be duplicated in
-- Template, so either add or remove the label in the TemplateVersion.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.catalogTemplates.label@.
module Network.Google.Resource.Dataflow.Projects.CatalogTemplates.Label
    (
    -- * REST Resource
      ProjectsCatalogTemplatesLabelResource

    -- * Creating a Request
    , projectsCatalogTemplatesLabel
    , ProjectsCatalogTemplatesLabel

    -- * Request Lenses
    , pctlXgafv
    , pctlUploadProtocol
    , pctlAccessToken
    , pctlUploadType
    , pctlPayload
    , pctlName
    , pctlCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.catalogTemplates.label@ method which the
-- 'ProjectsCatalogTemplatesLabel' request conforms to.
type ProjectsCatalogTemplatesLabelResource =
     "v1b3" :>
       CaptureMode "name" "label" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ModifyTemplateVersionLabelRequest :>
                       Post '[JSON] ModifyTemplateVersionLabelResponse

-- | Updates the label of the TemplateVersion. Label can be duplicated in
-- Template, so either add or remove the label in the TemplateVersion.
--
-- /See:/ 'projectsCatalogTemplatesLabel' smart constructor.
data ProjectsCatalogTemplatesLabel =
  ProjectsCatalogTemplatesLabel'
    { _pctlXgafv :: !(Maybe Xgafv)
    , _pctlUploadProtocol :: !(Maybe Text)
    , _pctlAccessToken :: !(Maybe Text)
    , _pctlUploadType :: !(Maybe Text)
    , _pctlPayload :: !ModifyTemplateVersionLabelRequest
    , _pctlName :: !Text
    , _pctlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsCatalogTemplatesLabel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pctlXgafv'
--
-- * 'pctlUploadProtocol'
--
-- * 'pctlAccessToken'
--
-- * 'pctlUploadType'
--
-- * 'pctlPayload'
--
-- * 'pctlName'
--
-- * 'pctlCallback'
projectsCatalogTemplatesLabel
    :: ModifyTemplateVersionLabelRequest -- ^ 'pctlPayload'
    -> Text -- ^ 'pctlName'
    -> ProjectsCatalogTemplatesLabel
projectsCatalogTemplatesLabel pPctlPayload_ pPctlName_ =
  ProjectsCatalogTemplatesLabel'
    { _pctlXgafv = Nothing
    , _pctlUploadProtocol = Nothing
    , _pctlAccessToken = Nothing
    , _pctlUploadType = Nothing
    , _pctlPayload = pPctlPayload_
    , _pctlName = pPctlName_
    , _pctlCallback = Nothing
    }


-- | V1 error format.
pctlXgafv :: Lens' ProjectsCatalogTemplatesLabel (Maybe Xgafv)
pctlXgafv
  = lens _pctlXgafv (\ s a -> s{_pctlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pctlUploadProtocol :: Lens' ProjectsCatalogTemplatesLabel (Maybe Text)
pctlUploadProtocol
  = lens _pctlUploadProtocol
      (\ s a -> s{_pctlUploadProtocol = a})

-- | OAuth access token.
pctlAccessToken :: Lens' ProjectsCatalogTemplatesLabel (Maybe Text)
pctlAccessToken
  = lens _pctlAccessToken
      (\ s a -> s{_pctlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pctlUploadType :: Lens' ProjectsCatalogTemplatesLabel (Maybe Text)
pctlUploadType
  = lens _pctlUploadType
      (\ s a -> s{_pctlUploadType = a})

-- | Multipart request metadata.
pctlPayload :: Lens' ProjectsCatalogTemplatesLabel ModifyTemplateVersionLabelRequest
pctlPayload
  = lens _pctlPayload (\ s a -> s{_pctlPayload = a})

-- | Resource name includes project_id, display_name, and version_id. Updates
-- by project_id(pid1), display_name(tid1), and version_id(vid1): Format:
-- projects\/{pid1}\/catalogTemplates\/{tid1\'vid}
pctlName :: Lens' ProjectsCatalogTemplatesLabel Text
pctlName = lens _pctlName (\ s a -> s{_pctlName = a})

-- | JSONP
pctlCallback :: Lens' ProjectsCatalogTemplatesLabel (Maybe Text)
pctlCallback
  = lens _pctlCallback (\ s a -> s{_pctlCallback = a})

instance GoogleRequest ProjectsCatalogTemplatesLabel
         where
        type Rs ProjectsCatalogTemplatesLabel =
             ModifyTemplateVersionLabelResponse
        type Scopes ProjectsCatalogTemplatesLabel =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsCatalogTemplatesLabel'{..}
          = go _pctlName _pctlXgafv _pctlUploadProtocol
              _pctlAccessToken
              _pctlUploadType
              _pctlCallback
              (Just AltJSON)
              _pctlPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsCatalogTemplatesLabelResource)
                      mempty
