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
-- Module      : Network.Google.Resource.Composer.Projects.Locations.Environments.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new environment.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.create@.
module Network.Google.Resource.Composer.Projects.Locations.Environments.Create
    (
    -- * REST Resource
      ProjectsLocationsEnvironmentsCreateResource

    -- * Creating a Request
    , projectsLocationsEnvironmentsCreate
    , ProjectsLocationsEnvironmentsCreate

    -- * Request Lenses
    , plecParent
    , plecXgafv
    , plecUploadProtocol
    , plecAccessToken
    , plecUploadType
    , plecPayload
    , plecCallback
    ) where

import           Network.Google.Composer.Types
import           Network.Google.Prelude

-- | A resource alias for @composer.projects.locations.environments.create@ method which the
-- 'ProjectsLocationsEnvironmentsCreate' request conforms to.
type ProjectsLocationsEnvironmentsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "environments" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Environment :> Post '[JSON] Operation

-- | Create a new environment.
--
-- /See:/ 'projectsLocationsEnvironmentsCreate' smart constructor.
data ProjectsLocationsEnvironmentsCreate =
  ProjectsLocationsEnvironmentsCreate'
    { _plecParent         :: !Text
    , _plecXgafv          :: !(Maybe Xgafv)
    , _plecUploadProtocol :: !(Maybe Text)
    , _plecAccessToken    :: !(Maybe Text)
    , _plecUploadType     :: !(Maybe Text)
    , _plecPayload        :: !Environment
    , _plecCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsEnvironmentsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plecParent'
--
-- * 'plecXgafv'
--
-- * 'plecUploadProtocol'
--
-- * 'plecAccessToken'
--
-- * 'plecUploadType'
--
-- * 'plecPayload'
--
-- * 'plecCallback'
projectsLocationsEnvironmentsCreate
    :: Text -- ^ 'plecParent'
    -> Environment -- ^ 'plecPayload'
    -> ProjectsLocationsEnvironmentsCreate
projectsLocationsEnvironmentsCreate pPlecParent_ pPlecPayload_ =
  ProjectsLocationsEnvironmentsCreate'
    { _plecParent = pPlecParent_
    , _plecXgafv = Nothing
    , _plecUploadProtocol = Nothing
    , _plecAccessToken = Nothing
    , _plecUploadType = Nothing
    , _plecPayload = pPlecPayload_
    , _plecCallback = Nothing
    }

-- | The parent must be of the form
-- \"projects\/{projectId}\/locations\/{locationId}\".
plecParent :: Lens' ProjectsLocationsEnvironmentsCreate Text
plecParent
  = lens _plecParent (\ s a -> s{_plecParent = a})

-- | V1 error format.
plecXgafv :: Lens' ProjectsLocationsEnvironmentsCreate (Maybe Xgafv)
plecXgafv
  = lens _plecXgafv (\ s a -> s{_plecXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plecUploadProtocol :: Lens' ProjectsLocationsEnvironmentsCreate (Maybe Text)
plecUploadProtocol
  = lens _plecUploadProtocol
      (\ s a -> s{_plecUploadProtocol = a})

-- | OAuth access token.
plecAccessToken :: Lens' ProjectsLocationsEnvironmentsCreate (Maybe Text)
plecAccessToken
  = lens _plecAccessToken
      (\ s a -> s{_plecAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plecUploadType :: Lens' ProjectsLocationsEnvironmentsCreate (Maybe Text)
plecUploadType
  = lens _plecUploadType
      (\ s a -> s{_plecUploadType = a})

-- | Multipart request metadata.
plecPayload :: Lens' ProjectsLocationsEnvironmentsCreate Environment
plecPayload
  = lens _plecPayload (\ s a -> s{_plecPayload = a})

-- | JSONP
plecCallback :: Lens' ProjectsLocationsEnvironmentsCreate (Maybe Text)
plecCallback
  = lens _plecCallback (\ s a -> s{_plecCallback = a})

instance GoogleRequest
           ProjectsLocationsEnvironmentsCreate
         where
        type Rs ProjectsLocationsEnvironmentsCreate =
             Operation
        type Scopes ProjectsLocationsEnvironmentsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsEnvironmentsCreate'{..}
          = go _plecParent _plecXgafv _plecUploadProtocol
              _plecAccessToken
              _plecUploadType
              _plecCallback
              (Just AltJSON)
              _plecPayload
              composerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsEnvironmentsCreateResource)
                      mempty
