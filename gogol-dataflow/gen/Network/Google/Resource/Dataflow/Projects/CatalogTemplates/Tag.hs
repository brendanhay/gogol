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
-- Module      : Network.Google.Resource.Dataflow.Projects.CatalogTemplates.Tag
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the tag of the TemplateVersion, and tag is unique in Template.
-- If tag exists in another TemplateVersion in the Template, updates the
-- tag to this TemplateVersion will remove it from the old TemplateVersion
-- and add it to this TemplateVersion. If request is remove_only
-- (remove_only = true), remove the tag from this TemplateVersion.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.catalogTemplates.tag@.
module Network.Google.Resource.Dataflow.Projects.CatalogTemplates.Tag
    (
    -- * REST Resource
      ProjectsCatalogTemplatesTagResource

    -- * Creating a Request
    , projectsCatalogTemplatesTag
    , ProjectsCatalogTemplatesTag

    -- * Request Lenses
    , pcttXgafv
    , pcttUploadProtocol
    , pcttAccessToken
    , pcttUploadType
    , pcttPayload
    , pcttName
    , pcttCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.catalogTemplates.tag@ method which the
-- 'ProjectsCatalogTemplatesTag' request conforms to.
type ProjectsCatalogTemplatesTagResource =
     "v1b3" :>
       CaptureMode "name" "tag" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ModifyTemplateVersionTagRequest :>
                       Post '[JSON] ModifyTemplateVersionTagResponse

-- | Updates the tag of the TemplateVersion, and tag is unique in Template.
-- If tag exists in another TemplateVersion in the Template, updates the
-- tag to this TemplateVersion will remove it from the old TemplateVersion
-- and add it to this TemplateVersion. If request is remove_only
-- (remove_only = true), remove the tag from this TemplateVersion.
--
-- /See:/ 'projectsCatalogTemplatesTag' smart constructor.
data ProjectsCatalogTemplatesTag =
  ProjectsCatalogTemplatesTag'
    { _pcttXgafv :: !(Maybe Xgafv)
    , _pcttUploadProtocol :: !(Maybe Text)
    , _pcttAccessToken :: !(Maybe Text)
    , _pcttUploadType :: !(Maybe Text)
    , _pcttPayload :: !ModifyTemplateVersionTagRequest
    , _pcttName :: !Text
    , _pcttCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsCatalogTemplatesTag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcttXgafv'
--
-- * 'pcttUploadProtocol'
--
-- * 'pcttAccessToken'
--
-- * 'pcttUploadType'
--
-- * 'pcttPayload'
--
-- * 'pcttName'
--
-- * 'pcttCallback'
projectsCatalogTemplatesTag
    :: ModifyTemplateVersionTagRequest -- ^ 'pcttPayload'
    -> Text -- ^ 'pcttName'
    -> ProjectsCatalogTemplatesTag
projectsCatalogTemplatesTag pPcttPayload_ pPcttName_ =
  ProjectsCatalogTemplatesTag'
    { _pcttXgafv = Nothing
    , _pcttUploadProtocol = Nothing
    , _pcttAccessToken = Nothing
    , _pcttUploadType = Nothing
    , _pcttPayload = pPcttPayload_
    , _pcttName = pPcttName_
    , _pcttCallback = Nothing
    }


-- | V1 error format.
pcttXgafv :: Lens' ProjectsCatalogTemplatesTag (Maybe Xgafv)
pcttXgafv
  = lens _pcttXgafv (\ s a -> s{_pcttXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcttUploadProtocol :: Lens' ProjectsCatalogTemplatesTag (Maybe Text)
pcttUploadProtocol
  = lens _pcttUploadProtocol
      (\ s a -> s{_pcttUploadProtocol = a})

-- | OAuth access token.
pcttAccessToken :: Lens' ProjectsCatalogTemplatesTag (Maybe Text)
pcttAccessToken
  = lens _pcttAccessToken
      (\ s a -> s{_pcttAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcttUploadType :: Lens' ProjectsCatalogTemplatesTag (Maybe Text)
pcttUploadType
  = lens _pcttUploadType
      (\ s a -> s{_pcttUploadType = a})

-- | Multipart request metadata.
pcttPayload :: Lens' ProjectsCatalogTemplatesTag ModifyTemplateVersionTagRequest
pcttPayload
  = lens _pcttPayload (\ s a -> s{_pcttPayload = a})

-- | Resource name includes project_id, display_name, and version_id. Updates
-- by project_id(pid1), display_name(tid1), and version_id(vid1): Format:
-- projects\/{pid1}\/catalogTemplates\/{tid1\'vid}
pcttName :: Lens' ProjectsCatalogTemplatesTag Text
pcttName = lens _pcttName (\ s a -> s{_pcttName = a})

-- | JSONP
pcttCallback :: Lens' ProjectsCatalogTemplatesTag (Maybe Text)
pcttCallback
  = lens _pcttCallback (\ s a -> s{_pcttCallback = a})

instance GoogleRequest ProjectsCatalogTemplatesTag
         where
        type Rs ProjectsCatalogTemplatesTag =
             ModifyTemplateVersionTagResponse
        type Scopes ProjectsCatalogTemplatesTag =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsCatalogTemplatesTag'{..}
          = go _pcttName _pcttXgafv _pcttUploadProtocol
              _pcttAccessToken
              _pcttUploadType
              _pcttCallback
              (Just AltJSON)
              _pcttPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsCatalogTemplatesTagResource)
                      mempty
