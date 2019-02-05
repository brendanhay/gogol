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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the state of a Cloud Spanner database.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.get@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Get
    (
    -- * REST Resource
      ProjectsInstancesDatabasesGetResource

    -- * Creating a Request
    , projectsInstancesDatabasesGet
    , ProjectsInstancesDatabasesGet

    -- * Request Lenses
    , pidgXgafv
    , pidgUploadProtocol
    , pidgAccessToken
    , pidgUploadType
    , pidgName
    , pidgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.get@ method which the
-- 'ProjectsInstancesDatabasesGet' request conforms to.
type ProjectsInstancesDatabasesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Database

-- | Gets the state of a Cloud Spanner database.
--
-- /See:/ 'projectsInstancesDatabasesGet' smart constructor.
data ProjectsInstancesDatabasesGet = ProjectsInstancesDatabasesGet'
    { _pidgXgafv          :: !(Maybe Xgafv)
    , _pidgUploadProtocol :: !(Maybe Text)
    , _pidgAccessToken    :: !(Maybe Text)
    , _pidgUploadType     :: !(Maybe Text)
    , _pidgName           :: !Text
    , _pidgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsInstancesDatabasesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidgXgafv'
--
-- * 'pidgUploadProtocol'
--
-- * 'pidgAccessToken'
--
-- * 'pidgUploadType'
--
-- * 'pidgName'
--
-- * 'pidgCallback'
projectsInstancesDatabasesGet
    :: Text -- ^ 'pidgName'
    -> ProjectsInstancesDatabasesGet
projectsInstancesDatabasesGet pPidgName_ =
    ProjectsInstancesDatabasesGet'
    { _pidgXgafv = Nothing
    , _pidgUploadProtocol = Nothing
    , _pidgAccessToken = Nothing
    , _pidgUploadType = Nothing
    , _pidgName = pPidgName_
    , _pidgCallback = Nothing
    }

-- | V1 error format.
pidgXgafv :: Lens' ProjectsInstancesDatabasesGet (Maybe Xgafv)
pidgXgafv
  = lens _pidgXgafv (\ s a -> s{_pidgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidgUploadProtocol :: Lens' ProjectsInstancesDatabasesGet (Maybe Text)
pidgUploadProtocol
  = lens _pidgUploadProtocol
      (\ s a -> s{_pidgUploadProtocol = a})

-- | OAuth access token.
pidgAccessToken :: Lens' ProjectsInstancesDatabasesGet (Maybe Text)
pidgAccessToken
  = lens _pidgAccessToken
      (\ s a -> s{_pidgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidgUploadType :: Lens' ProjectsInstancesDatabasesGet (Maybe Text)
pidgUploadType
  = lens _pidgUploadType
      (\ s a -> s{_pidgUploadType = a})

-- | Required. The name of the requested database. Values are of the form
-- \`projects\/\/instances\/\/databases\/\`.
pidgName :: Lens' ProjectsInstancesDatabasesGet Text
pidgName = lens _pidgName (\ s a -> s{_pidgName = a})

-- | JSONP
pidgCallback :: Lens' ProjectsInstancesDatabasesGet (Maybe Text)
pidgCallback
  = lens _pidgCallback (\ s a -> s{_pidgCallback = a})

instance GoogleRequest ProjectsInstancesDatabasesGet
         where
        type Rs ProjectsInstancesDatabasesGet = Database
        type Scopes ProjectsInstancesDatabasesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesDatabasesGet'{..}
          = go _pidgName _pidgXgafv _pidgUploadProtocol
              _pidgAccessToken
              _pidgUploadType
              _pidgCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesDatabasesGetResource)
                      mempty
