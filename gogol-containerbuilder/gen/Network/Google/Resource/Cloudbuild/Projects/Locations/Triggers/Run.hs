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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Run
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a \`BuildTrigger\` at a particular source revision.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.triggers.run@.
module Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Run
    (
    -- * REST Resource
      ProjectsLocationsTriggersRunResource

    -- * Creating a Request
    , projectsLocationsTriggersRun
    , ProjectsLocationsTriggersRun

    -- * Request Lenses
    , pltrXgafv
    , pltrUploadProtocol
    , pltrAccessToken
    , pltrUploadType
    , pltrPayload
    , pltrName
    , pltrCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.locations.triggers.run@ method which the
-- 'ProjectsLocationsTriggersRun' request conforms to.
type ProjectsLocationsTriggersRunResource =
     "v1" :>
       CaptureMode "name" "run" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RunBuildTriggerRequest :>
                       Post '[JSON] Operation

-- | Runs a \`BuildTrigger\` at a particular source revision.
--
-- /See:/ 'projectsLocationsTriggersRun' smart constructor.
data ProjectsLocationsTriggersRun =
  ProjectsLocationsTriggersRun'
    { _pltrXgafv :: !(Maybe Xgafv)
    , _pltrUploadProtocol :: !(Maybe Text)
    , _pltrAccessToken :: !(Maybe Text)
    , _pltrUploadType :: !(Maybe Text)
    , _pltrPayload :: !RunBuildTriggerRequest
    , _pltrName :: !Text
    , _pltrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTriggersRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltrXgafv'
--
-- * 'pltrUploadProtocol'
--
-- * 'pltrAccessToken'
--
-- * 'pltrUploadType'
--
-- * 'pltrPayload'
--
-- * 'pltrName'
--
-- * 'pltrCallback'
projectsLocationsTriggersRun
    :: RunBuildTriggerRequest -- ^ 'pltrPayload'
    -> Text -- ^ 'pltrName'
    -> ProjectsLocationsTriggersRun
projectsLocationsTriggersRun pPltrPayload_ pPltrName_ =
  ProjectsLocationsTriggersRun'
    { _pltrXgafv = Nothing
    , _pltrUploadProtocol = Nothing
    , _pltrAccessToken = Nothing
    , _pltrUploadType = Nothing
    , _pltrPayload = pPltrPayload_
    , _pltrName = pPltrName_
    , _pltrCallback = Nothing
    }


-- | V1 error format.
pltrXgafv :: Lens' ProjectsLocationsTriggersRun (Maybe Xgafv)
pltrXgafv
  = lens _pltrXgafv (\ s a -> s{_pltrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltrUploadProtocol :: Lens' ProjectsLocationsTriggersRun (Maybe Text)
pltrUploadProtocol
  = lens _pltrUploadProtocol
      (\ s a -> s{_pltrUploadProtocol = a})

-- | OAuth access token.
pltrAccessToken :: Lens' ProjectsLocationsTriggersRun (Maybe Text)
pltrAccessToken
  = lens _pltrAccessToken
      (\ s a -> s{_pltrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltrUploadType :: Lens' ProjectsLocationsTriggersRun (Maybe Text)
pltrUploadType
  = lens _pltrUploadType
      (\ s a -> s{_pltrUploadType = a})

-- | Multipart request metadata.
pltrPayload :: Lens' ProjectsLocationsTriggersRun RunBuildTriggerRequest
pltrPayload
  = lens _pltrPayload (\ s a -> s{_pltrPayload = a})

-- | The name of the \`Trigger\` to run. Format:
-- \`projects\/{project}\/locations\/{location}\/triggers\/{trigger}\`
pltrName :: Lens' ProjectsLocationsTriggersRun Text
pltrName = lens _pltrName (\ s a -> s{_pltrName = a})

-- | JSONP
pltrCallback :: Lens' ProjectsLocationsTriggersRun (Maybe Text)
pltrCallback
  = lens _pltrCallback (\ s a -> s{_pltrCallback = a})

instance GoogleRequest ProjectsLocationsTriggersRun
         where
        type Rs ProjectsLocationsTriggersRun = Operation
        type Scopes ProjectsLocationsTriggersRun =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsTriggersRun'{..}
          = go _pltrName _pltrXgafv _pltrUploadProtocol
              _pltrAccessToken
              _pltrUploadType
              _pltrCallback
              (Just AltJSON)
              _pltrPayload
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsTriggersRunResource)
                      mempty
