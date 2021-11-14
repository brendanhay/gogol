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
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.Move
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Move a project to another place in your resource hierarchy, under a new
-- resource parent. Returns an operation which can be used to track the
-- process of the project move workflow. Upon success, the
-- \`Operation.response\` field will be populated with the moved project.
-- The caller must have \`resourcemanager.projects.update\` permission on
-- the project and have \`resourcemanager.projects.move\` permission on the
-- project\'s current and proposed new parent. If project has no current
-- parent, or it currently does not have an associated organization
-- resource, you will also need the
-- \`resourcemanager.projects.setIamPolicy\` permission in the project.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.move@.
module Network.Google.Resource.CloudResourceManager.Projects.Move
    (
    -- * REST Resource
      ProjectsMoveResource

    -- * Creating a Request
    , projectsMove
    , ProjectsMove

    -- * Request Lenses
    , pmXgafv
    , pmUploadProtocol
    , pmAccessToken
    , pmUploadType
    , pmPayload
    , pmName
    , pmCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.move@ method which the
-- 'ProjectsMove' request conforms to.
type ProjectsMoveResource =
     "v3" :>
       CaptureMode "name" "move" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] MoveProjectRequest :>
                       Post '[JSON] Operation

-- | Move a project to another place in your resource hierarchy, under a new
-- resource parent. Returns an operation which can be used to track the
-- process of the project move workflow. Upon success, the
-- \`Operation.response\` field will be populated with the moved project.
-- The caller must have \`resourcemanager.projects.update\` permission on
-- the project and have \`resourcemanager.projects.move\` permission on the
-- project\'s current and proposed new parent. If project has no current
-- parent, or it currently does not have an associated organization
-- resource, you will also need the
-- \`resourcemanager.projects.setIamPolicy\` permission in the project.
--
-- /See:/ 'projectsMove' smart constructor.
data ProjectsMove =
  ProjectsMove'
    { _pmXgafv :: !(Maybe Xgafv)
    , _pmUploadProtocol :: !(Maybe Text)
    , _pmAccessToken :: !(Maybe Text)
    , _pmUploadType :: !(Maybe Text)
    , _pmPayload :: !MoveProjectRequest
    , _pmName :: !Text
    , _pmCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsMove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmXgafv'
--
-- * 'pmUploadProtocol'
--
-- * 'pmAccessToken'
--
-- * 'pmUploadType'
--
-- * 'pmPayload'
--
-- * 'pmName'
--
-- * 'pmCallback'
projectsMove
    :: MoveProjectRequest -- ^ 'pmPayload'
    -> Text -- ^ 'pmName'
    -> ProjectsMove
projectsMove pPmPayload_ pPmName_ =
  ProjectsMove'
    { _pmXgafv = Nothing
    , _pmUploadProtocol = Nothing
    , _pmAccessToken = Nothing
    , _pmUploadType = Nothing
    , _pmPayload = pPmPayload_
    , _pmName = pPmName_
    , _pmCallback = Nothing
    }


-- | V1 error format.
pmXgafv :: Lens' ProjectsMove (Maybe Xgafv)
pmXgafv = lens _pmXgafv (\ s a -> s{_pmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmUploadProtocol :: Lens' ProjectsMove (Maybe Text)
pmUploadProtocol
  = lens _pmUploadProtocol
      (\ s a -> s{_pmUploadProtocol = a})

-- | OAuth access token.
pmAccessToken :: Lens' ProjectsMove (Maybe Text)
pmAccessToken
  = lens _pmAccessToken
      (\ s a -> s{_pmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmUploadType :: Lens' ProjectsMove (Maybe Text)
pmUploadType
  = lens _pmUploadType (\ s a -> s{_pmUploadType = a})

-- | Multipart request metadata.
pmPayload :: Lens' ProjectsMove MoveProjectRequest
pmPayload
  = lens _pmPayload (\ s a -> s{_pmPayload = a})

-- | Required. The name of the project to move.
pmName :: Lens' ProjectsMove Text
pmName = lens _pmName (\ s a -> s{_pmName = a})

-- | JSONP
pmCallback :: Lens' ProjectsMove (Maybe Text)
pmCallback
  = lens _pmCallback (\ s a -> s{_pmCallback = a})

instance GoogleRequest ProjectsMove where
        type Rs ProjectsMove = Operation
        type Scopes ProjectsMove =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsMove'{..}
          = go _pmName _pmXgafv _pmUploadProtocol
              _pmAccessToken
              _pmUploadType
              _pmCallback
              (Just AltJSON)
              _pmPayload
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy ProjectsMoveResource)
                      mempty
