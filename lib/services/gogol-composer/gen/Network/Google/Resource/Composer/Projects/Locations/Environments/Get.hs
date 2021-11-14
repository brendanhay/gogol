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
-- Module      : Network.Google.Resource.Composer.Projects.Locations.Environments.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get an existing environment.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.get@.
module Network.Google.Resource.Composer.Projects.Locations.Environments.Get
    (
    -- * REST Resource
      ProjectsLocationsEnvironmentsGetResource

    -- * Creating a Request
    , projectsLocationsEnvironmentsGet
    , ProjectsLocationsEnvironmentsGet

    -- * Request Lenses
    , plegXgafv
    , plegUploadProtocol
    , plegAccessToken
    , plegUploadType
    , plegName
    , plegCallback
    ) where

import Network.Google.Composer.Types
import Network.Google.Prelude

-- | A resource alias for @composer.projects.locations.environments.get@ method which the
-- 'ProjectsLocationsEnvironmentsGet' request conforms to.
type ProjectsLocationsEnvironmentsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Environment

-- | Get an existing environment.
--
-- /See:/ 'projectsLocationsEnvironmentsGet' smart constructor.
data ProjectsLocationsEnvironmentsGet =
  ProjectsLocationsEnvironmentsGet'
    { _plegXgafv :: !(Maybe Xgafv)
    , _plegUploadProtocol :: !(Maybe Text)
    , _plegAccessToken :: !(Maybe Text)
    , _plegUploadType :: !(Maybe Text)
    , _plegName :: !Text
    , _plegCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsEnvironmentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plegXgafv'
--
-- * 'plegUploadProtocol'
--
-- * 'plegAccessToken'
--
-- * 'plegUploadType'
--
-- * 'plegName'
--
-- * 'plegCallback'
projectsLocationsEnvironmentsGet
    :: Text -- ^ 'plegName'
    -> ProjectsLocationsEnvironmentsGet
projectsLocationsEnvironmentsGet pPlegName_ =
  ProjectsLocationsEnvironmentsGet'
    { _plegXgafv = Nothing
    , _plegUploadProtocol = Nothing
    , _plegAccessToken = Nothing
    , _plegUploadType = Nothing
    , _plegName = pPlegName_
    , _plegCallback = Nothing
    }


-- | V1 error format.
plegXgafv :: Lens' ProjectsLocationsEnvironmentsGet (Maybe Xgafv)
plegXgafv
  = lens _plegXgafv (\ s a -> s{_plegXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plegUploadProtocol :: Lens' ProjectsLocationsEnvironmentsGet (Maybe Text)
plegUploadProtocol
  = lens _plegUploadProtocol
      (\ s a -> s{_plegUploadProtocol = a})

-- | OAuth access token.
plegAccessToken :: Lens' ProjectsLocationsEnvironmentsGet (Maybe Text)
plegAccessToken
  = lens _plegAccessToken
      (\ s a -> s{_plegAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plegUploadType :: Lens' ProjectsLocationsEnvironmentsGet (Maybe Text)
plegUploadType
  = lens _plegUploadType
      (\ s a -> s{_plegUploadType = a})

-- | The resource name of the environment to get, in the form:
-- \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
plegName :: Lens' ProjectsLocationsEnvironmentsGet Text
plegName = lens _plegName (\ s a -> s{_plegName = a})

-- | JSONP
plegCallback :: Lens' ProjectsLocationsEnvironmentsGet (Maybe Text)
plegCallback
  = lens _plegCallback (\ s a -> s{_plegCallback = a})

instance GoogleRequest
           ProjectsLocationsEnvironmentsGet
         where
        type Rs ProjectsLocationsEnvironmentsGet =
             Environment
        type Scopes ProjectsLocationsEnvironmentsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsEnvironmentsGet'{..}
          = go _plegName _plegXgafv _plegUploadProtocol
              _plegAccessToken
              _plegUploadType
              _plegCallback
              (Just AltJSON)
              composerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsEnvironmentsGetResource)
                      mempty
