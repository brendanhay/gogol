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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Backups.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets metadata on a pending or completed Backup.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.get@.
module Network.Google.Resource.Spanner.Projects.Instances.Backups.Get
    (
    -- * REST Resource
      ProjectsInstancesBackupsGetResource

    -- * Creating a Request
    , projectsInstancesBackupsGet
    , ProjectsInstancesBackupsGet

    -- * Request Lenses
    , pibgXgafv
    , pibgUploadProtocol
    , pibgAccessToken
    , pibgUploadType
    , pibgName
    , pibgCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.get@ method which the
-- 'ProjectsInstancesBackupsGet' request conforms to.
type ProjectsInstancesBackupsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Backup

-- | Gets metadata on a pending or completed Backup.
--
-- /See:/ 'projectsInstancesBackupsGet' smart constructor.
data ProjectsInstancesBackupsGet =
  ProjectsInstancesBackupsGet'
    { _pibgXgafv :: !(Maybe Xgafv)
    , _pibgUploadProtocol :: !(Maybe Text)
    , _pibgAccessToken :: !(Maybe Text)
    , _pibgUploadType :: !(Maybe Text)
    , _pibgName :: !Text
    , _pibgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesBackupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pibgXgafv'
--
-- * 'pibgUploadProtocol'
--
-- * 'pibgAccessToken'
--
-- * 'pibgUploadType'
--
-- * 'pibgName'
--
-- * 'pibgCallback'
projectsInstancesBackupsGet
    :: Text -- ^ 'pibgName'
    -> ProjectsInstancesBackupsGet
projectsInstancesBackupsGet pPibgName_ =
  ProjectsInstancesBackupsGet'
    { _pibgXgafv = Nothing
    , _pibgUploadProtocol = Nothing
    , _pibgAccessToken = Nothing
    , _pibgUploadType = Nothing
    , _pibgName = pPibgName_
    , _pibgCallback = Nothing
    }


-- | V1 error format.
pibgXgafv :: Lens' ProjectsInstancesBackupsGet (Maybe Xgafv)
pibgXgafv
  = lens _pibgXgafv (\ s a -> s{_pibgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pibgUploadProtocol :: Lens' ProjectsInstancesBackupsGet (Maybe Text)
pibgUploadProtocol
  = lens _pibgUploadProtocol
      (\ s a -> s{_pibgUploadProtocol = a})

-- | OAuth access token.
pibgAccessToken :: Lens' ProjectsInstancesBackupsGet (Maybe Text)
pibgAccessToken
  = lens _pibgAccessToken
      (\ s a -> s{_pibgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pibgUploadType :: Lens' ProjectsInstancesBackupsGet (Maybe Text)
pibgUploadType
  = lens _pibgUploadType
      (\ s a -> s{_pibgUploadType = a})

-- | Required. Name of the backup. Values are of the form
-- \`projects\/\/instances\/\/backups\/\`.
pibgName :: Lens' ProjectsInstancesBackupsGet Text
pibgName = lens _pibgName (\ s a -> s{_pibgName = a})

-- | JSONP
pibgCallback :: Lens' ProjectsInstancesBackupsGet (Maybe Text)
pibgCallback
  = lens _pibgCallback (\ s a -> s{_pibgCallback = a})

instance GoogleRequest ProjectsInstancesBackupsGet
         where
        type Rs ProjectsInstancesBackupsGet = Backup
        type Scopes ProjectsInstancesBackupsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesBackupsGet'{..}
          = go _pibgName _pibgXgafv _pibgUploadProtocol
              _pibgAccessToken
              _pibgUploadType
              _pibgCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInstancesBackupsGetResource)
                      mempty
