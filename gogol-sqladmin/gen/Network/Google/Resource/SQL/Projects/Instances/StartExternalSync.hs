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
-- Module      : Network.Google.Resource.SQL.Projects.Instances.StartExternalSync
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Start External primary instance migration.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.projects.instances.startExternalSync@.
module Network.Google.Resource.SQL.Projects.Instances.StartExternalSync
    (
    -- * REST Resource
      ProjectsInstancesStartExternalSyncResource

    -- * Creating a Request
    , projectsInstancesStartExternalSync
    , ProjectsInstancesStartExternalSync

    -- * Request Lenses
    , pisesXgafv
    , pisesUploadProtocol
    , pisesProject
    , pisesAccessToken
    , pisesUploadType
    , pisesSyncMode
    , pisesSkipVerification
    , pisesCallback
    , pisesInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.projects.instances.startExternalSync@ method which the
-- 'ProjectsInstancesStartExternalSync' request conforms to.
type ProjectsInstancesStartExternalSyncResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "startExternalSync" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "syncMode"
                           ProjectsInstancesStartExternalSyncSyncMode
                           :>
                           QueryParam "skipVerification" Bool :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON] Operation

-- | Start External primary instance migration.
--
-- /See:/ 'projectsInstancesStartExternalSync' smart constructor.
data ProjectsInstancesStartExternalSync =
  ProjectsInstancesStartExternalSync'
    { _pisesXgafv :: !(Maybe Xgafv)
    , _pisesUploadProtocol :: !(Maybe Text)
    , _pisesProject :: !Text
    , _pisesAccessToken :: !(Maybe Text)
    , _pisesUploadType :: !(Maybe Text)
    , _pisesSyncMode :: !(Maybe ProjectsInstancesStartExternalSyncSyncMode)
    , _pisesSkipVerification :: !(Maybe Bool)
    , _pisesCallback :: !(Maybe Text)
    , _pisesInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesStartExternalSync' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pisesXgafv'
--
-- * 'pisesUploadProtocol'
--
-- * 'pisesProject'
--
-- * 'pisesAccessToken'
--
-- * 'pisesUploadType'
--
-- * 'pisesSyncMode'
--
-- * 'pisesSkipVerification'
--
-- * 'pisesCallback'
--
-- * 'pisesInstance'
projectsInstancesStartExternalSync
    :: Text -- ^ 'pisesProject'
    -> Text -- ^ 'pisesInstance'
    -> ProjectsInstancesStartExternalSync
projectsInstancesStartExternalSync pPisesProject_ pPisesInstance_ =
  ProjectsInstancesStartExternalSync'
    { _pisesXgafv = Nothing
    , _pisesUploadProtocol = Nothing
    , _pisesProject = pPisesProject_
    , _pisesAccessToken = Nothing
    , _pisesUploadType = Nothing
    , _pisesSyncMode = Nothing
    , _pisesSkipVerification = Nothing
    , _pisesCallback = Nothing
    , _pisesInstance = pPisesInstance_
    }


-- | V1 error format.
pisesXgafv :: Lens' ProjectsInstancesStartExternalSync (Maybe Xgafv)
pisesXgafv
  = lens _pisesXgafv (\ s a -> s{_pisesXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pisesUploadProtocol :: Lens' ProjectsInstancesStartExternalSync (Maybe Text)
pisesUploadProtocol
  = lens _pisesUploadProtocol
      (\ s a -> s{_pisesUploadProtocol = a})

-- | ID of the project that contains the instance.
pisesProject :: Lens' ProjectsInstancesStartExternalSync Text
pisesProject
  = lens _pisesProject (\ s a -> s{_pisesProject = a})

-- | OAuth access token.
pisesAccessToken :: Lens' ProjectsInstancesStartExternalSync (Maybe Text)
pisesAccessToken
  = lens _pisesAccessToken
      (\ s a -> s{_pisesAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pisesUploadType :: Lens' ProjectsInstancesStartExternalSync (Maybe Text)
pisesUploadType
  = lens _pisesUploadType
      (\ s a -> s{_pisesUploadType = a})

-- | External sync mode.
pisesSyncMode :: Lens' ProjectsInstancesStartExternalSync (Maybe ProjectsInstancesStartExternalSyncSyncMode)
pisesSyncMode
  = lens _pisesSyncMode
      (\ s a -> s{_pisesSyncMode = a})

-- | Whether to skip the verification step (VESS).
pisesSkipVerification :: Lens' ProjectsInstancesStartExternalSync (Maybe Bool)
pisesSkipVerification
  = lens _pisesSkipVerification
      (\ s a -> s{_pisesSkipVerification = a})

-- | JSONP
pisesCallback :: Lens' ProjectsInstancesStartExternalSync (Maybe Text)
pisesCallback
  = lens _pisesCallback
      (\ s a -> s{_pisesCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
pisesInstance :: Lens' ProjectsInstancesStartExternalSync Text
pisesInstance
  = lens _pisesInstance
      (\ s a -> s{_pisesInstance = a})

instance GoogleRequest
           ProjectsInstancesStartExternalSync
         where
        type Rs ProjectsInstancesStartExternalSync =
             Operation
        type Scopes ProjectsInstancesStartExternalSync =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient ProjectsInstancesStartExternalSync'{..}
          = go _pisesProject _pisesInstance _pisesXgafv
              _pisesUploadProtocol
              _pisesAccessToken
              _pisesUploadType
              _pisesSyncMode
              _pisesSkipVerification
              _pisesCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesStartExternalSyncResource)
                      mempty
