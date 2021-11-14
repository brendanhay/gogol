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
-- Module      : Network.Google.Resource.Dataflow.Projects.CatalogTemplates.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get TemplateVersion using project_id and display_name with an optional
-- version_id field. Get latest (has tag \"latest\") TemplateVersion if
-- version_id not set.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.catalogTemplates.get@.
module Network.Google.Resource.Dataflow.Projects.CatalogTemplates.Get
    (
    -- * REST Resource
      ProjectsCatalogTemplatesGetResource

    -- * Creating a Request
    , projectsCatalogTemplatesGet
    , ProjectsCatalogTemplatesGet

    -- * Request Lenses
    , pctgXgafv
    , pctgUploadProtocol
    , pctgAccessToken
    , pctgUploadType
    , pctgName
    , pctgCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.catalogTemplates.get@ method which the
-- 'ProjectsCatalogTemplatesGet' request conforms to.
type ProjectsCatalogTemplatesGetResource =
     "v1b3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] TemplateVersion

-- | Get TemplateVersion using project_id and display_name with an optional
-- version_id field. Get latest (has tag \"latest\") TemplateVersion if
-- version_id not set.
--
-- /See:/ 'projectsCatalogTemplatesGet' smart constructor.
data ProjectsCatalogTemplatesGet =
  ProjectsCatalogTemplatesGet'
    { _pctgXgafv :: !(Maybe Xgafv)
    , _pctgUploadProtocol :: !(Maybe Text)
    , _pctgAccessToken :: !(Maybe Text)
    , _pctgUploadType :: !(Maybe Text)
    , _pctgName :: !Text
    , _pctgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsCatalogTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pctgXgafv'
--
-- * 'pctgUploadProtocol'
--
-- * 'pctgAccessToken'
--
-- * 'pctgUploadType'
--
-- * 'pctgName'
--
-- * 'pctgCallback'
projectsCatalogTemplatesGet
    :: Text -- ^ 'pctgName'
    -> ProjectsCatalogTemplatesGet
projectsCatalogTemplatesGet pPctgName_ =
  ProjectsCatalogTemplatesGet'
    { _pctgXgafv = Nothing
    , _pctgUploadProtocol = Nothing
    , _pctgAccessToken = Nothing
    , _pctgUploadType = Nothing
    , _pctgName = pPctgName_
    , _pctgCallback = Nothing
    }


-- | V1 error format.
pctgXgafv :: Lens' ProjectsCatalogTemplatesGet (Maybe Xgafv)
pctgXgafv
  = lens _pctgXgafv (\ s a -> s{_pctgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pctgUploadProtocol :: Lens' ProjectsCatalogTemplatesGet (Maybe Text)
pctgUploadProtocol
  = lens _pctgUploadProtocol
      (\ s a -> s{_pctgUploadProtocol = a})

-- | OAuth access token.
pctgAccessToken :: Lens' ProjectsCatalogTemplatesGet (Maybe Text)
pctgAccessToken
  = lens _pctgAccessToken
      (\ s a -> s{_pctgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pctgUploadType :: Lens' ProjectsCatalogTemplatesGet (Maybe Text)
pctgUploadType
  = lens _pctgUploadType
      (\ s a -> s{_pctgUploadType = a})

-- | Resource name includes project_id and display_name. version_id is
-- optional. Get the latest TemplateVersion if version_id not set. Get by
-- project_id(pid1) and display_name(tid1): Format:
-- projects\/{pid1}\/catalogTemplates\/{tid1} Get by project_id(pid1),
-- display_name(tid1), and version_id(vid1): Format:
-- projects\/{pid1}\/catalogTemplates\/{tid1\'vid}
pctgName :: Lens' ProjectsCatalogTemplatesGet Text
pctgName = lens _pctgName (\ s a -> s{_pctgName = a})

-- | JSONP
pctgCallback :: Lens' ProjectsCatalogTemplatesGet (Maybe Text)
pctgCallback
  = lens _pctgCallback (\ s a -> s{_pctgCallback = a})

instance GoogleRequest ProjectsCatalogTemplatesGet
         where
        type Rs ProjectsCatalogTemplatesGet = TemplateVersion
        type Scopes ProjectsCatalogTemplatesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsCatalogTemplatesGet'{..}
          = go _pctgName _pctgXgafv _pctgUploadProtocol
              _pctgAccessToken
              _pctgUploadType
              _pctgCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsCatalogTemplatesGetResource)
                      mempty
