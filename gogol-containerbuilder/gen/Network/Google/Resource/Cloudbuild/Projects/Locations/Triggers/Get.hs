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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a \`BuildTrigger\`. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.triggers.get@.
module Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Get
    (
    -- * REST Resource
      ProjectsLocationsTriggersGetResource

    -- * Creating a Request
    , projectsLocationsTriggersGet
    , ProjectsLocationsTriggersGet

    -- * Request Lenses
    , pltgXgafv
    , pltgUploadProtocol
    , pltgTriggerId
    , pltgAccessToken
    , pltgUploadType
    , pltgName
    , pltgProjectId
    , pltgCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.locations.triggers.get@ method which the
-- 'ProjectsLocationsTriggersGet' request conforms to.
type ProjectsLocationsTriggersGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "triggerId" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "projectId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] BuildTrigger

-- | Returns information about a \`BuildTrigger\`. This API is experimental.
--
-- /See:/ 'projectsLocationsTriggersGet' smart constructor.
data ProjectsLocationsTriggersGet =
  ProjectsLocationsTriggersGet'
    { _pltgXgafv :: !(Maybe Xgafv)
    , _pltgUploadProtocol :: !(Maybe Text)
    , _pltgTriggerId :: !(Maybe Text)
    , _pltgAccessToken :: !(Maybe Text)
    , _pltgUploadType :: !(Maybe Text)
    , _pltgName :: !Text
    , _pltgProjectId :: !(Maybe Text)
    , _pltgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTriggersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltgXgafv'
--
-- * 'pltgUploadProtocol'
--
-- * 'pltgTriggerId'
--
-- * 'pltgAccessToken'
--
-- * 'pltgUploadType'
--
-- * 'pltgName'
--
-- * 'pltgProjectId'
--
-- * 'pltgCallback'
projectsLocationsTriggersGet
    :: Text -- ^ 'pltgName'
    -> ProjectsLocationsTriggersGet
projectsLocationsTriggersGet pPltgName_ =
  ProjectsLocationsTriggersGet'
    { _pltgXgafv = Nothing
    , _pltgUploadProtocol = Nothing
    , _pltgTriggerId = Nothing
    , _pltgAccessToken = Nothing
    , _pltgUploadType = Nothing
    , _pltgName = pPltgName_
    , _pltgProjectId = Nothing
    , _pltgCallback = Nothing
    }


-- | V1 error format.
pltgXgafv :: Lens' ProjectsLocationsTriggersGet (Maybe Xgafv)
pltgXgafv
  = lens _pltgXgafv (\ s a -> s{_pltgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltgUploadProtocol :: Lens' ProjectsLocationsTriggersGet (Maybe Text)
pltgUploadProtocol
  = lens _pltgUploadProtocol
      (\ s a -> s{_pltgUploadProtocol = a})

-- | Required. Identifier (\`id\` or \`name\`) of the \`BuildTrigger\` to
-- get.
pltgTriggerId :: Lens' ProjectsLocationsTriggersGet (Maybe Text)
pltgTriggerId
  = lens _pltgTriggerId
      (\ s a -> s{_pltgTriggerId = a})

-- | OAuth access token.
pltgAccessToken :: Lens' ProjectsLocationsTriggersGet (Maybe Text)
pltgAccessToken
  = lens _pltgAccessToken
      (\ s a -> s{_pltgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltgUploadType :: Lens' ProjectsLocationsTriggersGet (Maybe Text)
pltgUploadType
  = lens _pltgUploadType
      (\ s a -> s{_pltgUploadType = a})

-- | The name of the \`Trigger\` to retrieve. Format:
-- \`projects\/{project}\/locations\/{location}\/triggers\/{trigger}\`
pltgName :: Lens' ProjectsLocationsTriggersGet Text
pltgName = lens _pltgName (\ s a -> s{_pltgName = a})

-- | Required. ID of the project that owns the trigger.
pltgProjectId :: Lens' ProjectsLocationsTriggersGet (Maybe Text)
pltgProjectId
  = lens _pltgProjectId
      (\ s a -> s{_pltgProjectId = a})

-- | JSONP
pltgCallback :: Lens' ProjectsLocationsTriggersGet (Maybe Text)
pltgCallback
  = lens _pltgCallback (\ s a -> s{_pltgCallback = a})

instance GoogleRequest ProjectsLocationsTriggersGet
         where
        type Rs ProjectsLocationsTriggersGet = BuildTrigger
        type Scopes ProjectsLocationsTriggersGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsTriggersGet'{..}
          = go _pltgName _pltgXgafv _pltgUploadProtocol
              _pltgTriggerId
              _pltgAccessToken
              _pltgUploadType
              _pltgProjectId
              _pltgCallback
              (Just AltJSON)
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsTriggersGetResource)
                      mempty
