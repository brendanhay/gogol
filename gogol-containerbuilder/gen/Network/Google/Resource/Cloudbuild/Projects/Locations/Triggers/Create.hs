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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new \`BuildTrigger\`. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.triggers.create@.
module Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Create
    (
    -- * REST Resource
      ProjectsLocationsTriggersCreateResource

    -- * Creating a Request
    , projectsLocationsTriggersCreate
    , ProjectsLocationsTriggersCreate

    -- * Request Lenses
    , pltcParent
    , pltcXgafv
    , pltcUploadProtocol
    , pltcAccessToken
    , pltcUploadType
    , pltcPayload
    , pltcProjectId
    , pltcCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.locations.triggers.create@ method which the
-- 'ProjectsLocationsTriggersCreate' request conforms to.
type ProjectsLocationsTriggersCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "triggers" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "projectId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] BuildTrigger :>
                           Post '[JSON] BuildTrigger

-- | Creates a new \`BuildTrigger\`. This API is experimental.
--
-- /See:/ 'projectsLocationsTriggersCreate' smart constructor.
data ProjectsLocationsTriggersCreate =
  ProjectsLocationsTriggersCreate'
    { _pltcParent :: !Text
    , _pltcXgafv :: !(Maybe Xgafv)
    , _pltcUploadProtocol :: !(Maybe Text)
    , _pltcAccessToken :: !(Maybe Text)
    , _pltcUploadType :: !(Maybe Text)
    , _pltcPayload :: !BuildTrigger
    , _pltcProjectId :: !(Maybe Text)
    , _pltcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTriggersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltcParent'
--
-- * 'pltcXgafv'
--
-- * 'pltcUploadProtocol'
--
-- * 'pltcAccessToken'
--
-- * 'pltcUploadType'
--
-- * 'pltcPayload'
--
-- * 'pltcProjectId'
--
-- * 'pltcCallback'
projectsLocationsTriggersCreate
    :: Text -- ^ 'pltcParent'
    -> BuildTrigger -- ^ 'pltcPayload'
    -> ProjectsLocationsTriggersCreate
projectsLocationsTriggersCreate pPltcParent_ pPltcPayload_ =
  ProjectsLocationsTriggersCreate'
    { _pltcParent = pPltcParent_
    , _pltcXgafv = Nothing
    , _pltcUploadProtocol = Nothing
    , _pltcAccessToken = Nothing
    , _pltcUploadType = Nothing
    , _pltcPayload = pPltcPayload_
    , _pltcProjectId = Nothing
    , _pltcCallback = Nothing
    }


-- | The parent resource where this trigger will be created. Format:
-- \`projects\/{project}\/locations\/{location}\`
pltcParent :: Lens' ProjectsLocationsTriggersCreate Text
pltcParent
  = lens _pltcParent (\ s a -> s{_pltcParent = a})

-- | V1 error format.
pltcXgafv :: Lens' ProjectsLocationsTriggersCreate (Maybe Xgafv)
pltcXgafv
  = lens _pltcXgafv (\ s a -> s{_pltcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltcUploadProtocol :: Lens' ProjectsLocationsTriggersCreate (Maybe Text)
pltcUploadProtocol
  = lens _pltcUploadProtocol
      (\ s a -> s{_pltcUploadProtocol = a})

-- | OAuth access token.
pltcAccessToken :: Lens' ProjectsLocationsTriggersCreate (Maybe Text)
pltcAccessToken
  = lens _pltcAccessToken
      (\ s a -> s{_pltcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltcUploadType :: Lens' ProjectsLocationsTriggersCreate (Maybe Text)
pltcUploadType
  = lens _pltcUploadType
      (\ s a -> s{_pltcUploadType = a})

-- | Multipart request metadata.
pltcPayload :: Lens' ProjectsLocationsTriggersCreate BuildTrigger
pltcPayload
  = lens _pltcPayload (\ s a -> s{_pltcPayload = a})

-- | Required. ID of the project for which to configure automatic builds.
pltcProjectId :: Lens' ProjectsLocationsTriggersCreate (Maybe Text)
pltcProjectId
  = lens _pltcProjectId
      (\ s a -> s{_pltcProjectId = a})

-- | JSONP
pltcCallback :: Lens' ProjectsLocationsTriggersCreate (Maybe Text)
pltcCallback
  = lens _pltcCallback (\ s a -> s{_pltcCallback = a})

instance GoogleRequest
           ProjectsLocationsTriggersCreate
         where
        type Rs ProjectsLocationsTriggersCreate =
             BuildTrigger
        type Scopes ProjectsLocationsTriggersCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsTriggersCreate'{..}
          = go _pltcParent _pltcXgafv _pltcUploadProtocol
              _pltcAccessToken
              _pltcUploadType
              _pltcProjectId
              _pltcCallback
              (Just AltJSON)
              _pltcPayload
              containerBuilderService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsTriggersCreateResource)
                      mempty
