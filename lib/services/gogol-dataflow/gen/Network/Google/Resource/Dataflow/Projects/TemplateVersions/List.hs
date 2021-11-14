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
-- Module      : Network.Google.Resource.Dataflow.Projects.TemplateVersions.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List TemplateVersions using project_id and an optional display_name
-- field. List all the TemplateVersions in the Template if display set.
-- List all the TemplateVersions in the Project if display_name not set.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.templateVersions.list@.
module Network.Google.Resource.Dataflow.Projects.TemplateVersions.List
    (
    -- * REST Resource
      ProjectsTemplateVersionsListResource

    -- * Creating a Request
    , projectsTemplateVersionsList
    , ProjectsTemplateVersionsList

    -- * Request Lenses
    , ptvlParent
    , ptvlXgafv
    , ptvlUploadProtocol
    , ptvlAccessToken
    , ptvlUploadType
    , ptvlPageToken
    , ptvlPageSize
    , ptvlCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.templateVersions.list@ method which the
-- 'ProjectsTemplateVersionsList' request conforms to.
type ProjectsTemplateVersionsListResource =
     "v1b3" :>
       Capture "parent" Text :>
         "templateVersions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListTemplateVersionsResponse

-- | List TemplateVersions using project_id and an optional display_name
-- field. List all the TemplateVersions in the Template if display set.
-- List all the TemplateVersions in the Project if display_name not set.
--
-- /See:/ 'projectsTemplateVersionsList' smart constructor.
data ProjectsTemplateVersionsList =
  ProjectsTemplateVersionsList'
    { _ptvlParent :: !Text
    , _ptvlXgafv :: !(Maybe Xgafv)
    , _ptvlUploadProtocol :: !(Maybe Text)
    , _ptvlAccessToken :: !(Maybe Text)
    , _ptvlUploadType :: !(Maybe Text)
    , _ptvlPageToken :: !(Maybe Text)
    , _ptvlPageSize :: !(Maybe (Textual Int32))
    , _ptvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTemplateVersionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptvlParent'
--
-- * 'ptvlXgafv'
--
-- * 'ptvlUploadProtocol'
--
-- * 'ptvlAccessToken'
--
-- * 'ptvlUploadType'
--
-- * 'ptvlPageToken'
--
-- * 'ptvlPageSize'
--
-- * 'ptvlCallback'
projectsTemplateVersionsList
    :: Text -- ^ 'ptvlParent'
    -> ProjectsTemplateVersionsList
projectsTemplateVersionsList pPtvlParent_ =
  ProjectsTemplateVersionsList'
    { _ptvlParent = pPtvlParent_
    , _ptvlXgafv = Nothing
    , _ptvlUploadProtocol = Nothing
    , _ptvlAccessToken = Nothing
    , _ptvlUploadType = Nothing
    , _ptvlPageToken = Nothing
    , _ptvlPageSize = Nothing
    , _ptvlCallback = Nothing
    }


-- | parent includes project_id, and display_name is optional. List by
-- project_id(pid1) and display_name(tid1). Format:
-- projects\/{pid1}\/catalogTemplates\/{tid1} List by project_id(pid1).
-- Format: projects\/{pid1}
ptvlParent :: Lens' ProjectsTemplateVersionsList Text
ptvlParent
  = lens _ptvlParent (\ s a -> s{_ptvlParent = a})

-- | V1 error format.
ptvlXgafv :: Lens' ProjectsTemplateVersionsList (Maybe Xgafv)
ptvlXgafv
  = lens _ptvlXgafv (\ s a -> s{_ptvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptvlUploadProtocol :: Lens' ProjectsTemplateVersionsList (Maybe Text)
ptvlUploadProtocol
  = lens _ptvlUploadProtocol
      (\ s a -> s{_ptvlUploadProtocol = a})

-- | OAuth access token.
ptvlAccessToken :: Lens' ProjectsTemplateVersionsList (Maybe Text)
ptvlAccessToken
  = lens _ptvlAccessToken
      (\ s a -> s{_ptvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptvlUploadType :: Lens' ProjectsTemplateVersionsList (Maybe Text)
ptvlUploadType
  = lens _ptvlUploadType
      (\ s a -> s{_ptvlUploadType = a})

-- | The page token, received from a previous ListTemplateVersions call.
-- Provide this to retrieve the subsequent page.
ptvlPageToken :: Lens' ProjectsTemplateVersionsList (Maybe Text)
ptvlPageToken
  = lens _ptvlPageToken
      (\ s a -> s{_ptvlPageToken = a})

-- | The maximum number of TemplateVersions to return per page.
ptvlPageSize :: Lens' ProjectsTemplateVersionsList (Maybe Int32)
ptvlPageSize
  = lens _ptvlPageSize (\ s a -> s{_ptvlPageSize = a})
      . mapping _Coerce

-- | JSONP
ptvlCallback :: Lens' ProjectsTemplateVersionsList (Maybe Text)
ptvlCallback
  = lens _ptvlCallback (\ s a -> s{_ptvlCallback = a})

instance GoogleRequest ProjectsTemplateVersionsList
         where
        type Rs ProjectsTemplateVersionsList =
             ListTemplateVersionsResponse
        type Scopes ProjectsTemplateVersionsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsTemplateVersionsList'{..}
          = go _ptvlParent _ptvlXgafv _ptvlUploadProtocol
              _ptvlAccessToken
              _ptvlUploadType
              _ptvlPageToken
              _ptvlPageSize
              _ptvlCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTemplateVersionsListResource)
                      mempty
