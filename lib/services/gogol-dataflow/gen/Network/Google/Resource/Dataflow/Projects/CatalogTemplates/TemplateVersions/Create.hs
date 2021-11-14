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
-- Module      : Network.Google.Resource.Dataflow.Projects.CatalogTemplates.TemplateVersions.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Template with TemplateVersion. Requires
-- project_id(projects) and template display_name(catalogTemplates). The
-- template display_name is set by the user.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.catalogTemplates.templateVersions.create@.
module Network.Google.Resource.Dataflow.Projects.CatalogTemplates.TemplateVersions.Create
    (
    -- * REST Resource
      ProjectsCatalogTemplatesTemplateVersionsCreateResource

    -- * Creating a Request
    , projectsCatalogTemplatesTemplateVersionsCreate
    , ProjectsCatalogTemplatesTemplateVersionsCreate

    -- * Request Lenses
    , pcttvcParent
    , pcttvcXgafv
    , pcttvcUploadProtocol
    , pcttvcAccessToken
    , pcttvcUploadType
    , pcttvcPayload
    , pcttvcCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.catalogTemplates.templateVersions.create@ method which the
-- 'ProjectsCatalogTemplatesTemplateVersionsCreate' request conforms to.
type ProjectsCatalogTemplatesTemplateVersionsCreateResource
     =
     "v1b3" :>
       Capture "parent" Text :>
         "templateVersions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateTemplateVersionRequest :>
                         Post '[JSON] TemplateVersion

-- | Creates a new Template with TemplateVersion. Requires
-- project_id(projects) and template display_name(catalogTemplates). The
-- template display_name is set by the user.
--
-- /See:/ 'projectsCatalogTemplatesTemplateVersionsCreate' smart constructor.
data ProjectsCatalogTemplatesTemplateVersionsCreate =
  ProjectsCatalogTemplatesTemplateVersionsCreate'
    { _pcttvcParent :: !Text
    , _pcttvcXgafv :: !(Maybe Xgafv)
    , _pcttvcUploadProtocol :: !(Maybe Text)
    , _pcttvcAccessToken :: !(Maybe Text)
    , _pcttvcUploadType :: !(Maybe Text)
    , _pcttvcPayload :: !CreateTemplateVersionRequest
    , _pcttvcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsCatalogTemplatesTemplateVersionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcttvcParent'
--
-- * 'pcttvcXgafv'
--
-- * 'pcttvcUploadProtocol'
--
-- * 'pcttvcAccessToken'
--
-- * 'pcttvcUploadType'
--
-- * 'pcttvcPayload'
--
-- * 'pcttvcCallback'
projectsCatalogTemplatesTemplateVersionsCreate
    :: Text -- ^ 'pcttvcParent'
    -> CreateTemplateVersionRequest -- ^ 'pcttvcPayload'
    -> ProjectsCatalogTemplatesTemplateVersionsCreate
projectsCatalogTemplatesTemplateVersionsCreate pPcttvcParent_ pPcttvcPayload_ =
  ProjectsCatalogTemplatesTemplateVersionsCreate'
    { _pcttvcParent = pPcttvcParent_
    , _pcttvcXgafv = Nothing
    , _pcttvcUploadProtocol = Nothing
    , _pcttvcAccessToken = Nothing
    , _pcttvcUploadType = Nothing
    , _pcttvcPayload = pPcttvcPayload_
    , _pcttvcCallback = Nothing
    }


-- | The parent project and template that the TemplateVersion will be created
-- under. Create using project_id(pid1) and display_name(tid1). Format:
-- projects\/{pid1}\/catalogTemplates\/{tid1}
pcttvcParent :: Lens' ProjectsCatalogTemplatesTemplateVersionsCreate Text
pcttvcParent
  = lens _pcttvcParent (\ s a -> s{_pcttvcParent = a})

-- | V1 error format.
pcttvcXgafv :: Lens' ProjectsCatalogTemplatesTemplateVersionsCreate (Maybe Xgafv)
pcttvcXgafv
  = lens _pcttvcXgafv (\ s a -> s{_pcttvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcttvcUploadProtocol :: Lens' ProjectsCatalogTemplatesTemplateVersionsCreate (Maybe Text)
pcttvcUploadProtocol
  = lens _pcttvcUploadProtocol
      (\ s a -> s{_pcttvcUploadProtocol = a})

-- | OAuth access token.
pcttvcAccessToken :: Lens' ProjectsCatalogTemplatesTemplateVersionsCreate (Maybe Text)
pcttvcAccessToken
  = lens _pcttvcAccessToken
      (\ s a -> s{_pcttvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcttvcUploadType :: Lens' ProjectsCatalogTemplatesTemplateVersionsCreate (Maybe Text)
pcttvcUploadType
  = lens _pcttvcUploadType
      (\ s a -> s{_pcttvcUploadType = a})

-- | Multipart request metadata.
pcttvcPayload :: Lens' ProjectsCatalogTemplatesTemplateVersionsCreate CreateTemplateVersionRequest
pcttvcPayload
  = lens _pcttvcPayload
      (\ s a -> s{_pcttvcPayload = a})

-- | JSONP
pcttvcCallback :: Lens' ProjectsCatalogTemplatesTemplateVersionsCreate (Maybe Text)
pcttvcCallback
  = lens _pcttvcCallback
      (\ s a -> s{_pcttvcCallback = a})

instance GoogleRequest
           ProjectsCatalogTemplatesTemplateVersionsCreate
         where
        type Rs
               ProjectsCatalogTemplatesTemplateVersionsCreate
             = TemplateVersion
        type Scopes
               ProjectsCatalogTemplatesTemplateVersionsCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient
          ProjectsCatalogTemplatesTemplateVersionsCreate'{..}
          = go _pcttvcParent _pcttvcXgafv _pcttvcUploadProtocol
              _pcttvcAccessToken
              _pcttvcUploadType
              _pcttvcCallback
              (Just AltJSON)
              _pcttvcPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsCatalogTemplatesTemplateVersionsCreateResource)
                      mempty
