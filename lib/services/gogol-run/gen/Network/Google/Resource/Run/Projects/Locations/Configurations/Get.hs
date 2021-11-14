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
-- Module      : Network.Google.Resource.Run.Projects.Locations.Configurations.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about a configuration.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.configurations.get@.
module Network.Google.Resource.Run.Projects.Locations.Configurations.Get
    (
    -- * REST Resource
      ProjectsLocationsConfigurationsGetResource

    -- * Creating a Request
    , projectsLocationsConfigurationsGet
    , ProjectsLocationsConfigurationsGet

    -- * Request Lenses
    , plcgXgafv
    , plcgUploadProtocol
    , plcgAccessToken
    , plcgUploadType
    , plcgName
    , plcgCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.configurations.get@ method which the
-- 'ProjectsLocationsConfigurationsGet' request conforms to.
type ProjectsLocationsConfigurationsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Configuration

-- | Get information about a configuration.
--
-- /See:/ 'projectsLocationsConfigurationsGet' smart constructor.
data ProjectsLocationsConfigurationsGet =
  ProjectsLocationsConfigurationsGet'
    { _plcgXgafv :: !(Maybe Xgafv)
    , _plcgUploadProtocol :: !(Maybe Text)
    , _plcgAccessToken :: !(Maybe Text)
    , _plcgUploadType :: !(Maybe Text)
    , _plcgName :: !Text
    , _plcgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsConfigurationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcgXgafv'
--
-- * 'plcgUploadProtocol'
--
-- * 'plcgAccessToken'
--
-- * 'plcgUploadType'
--
-- * 'plcgName'
--
-- * 'plcgCallback'
projectsLocationsConfigurationsGet
    :: Text -- ^ 'plcgName'
    -> ProjectsLocationsConfigurationsGet
projectsLocationsConfigurationsGet pPlcgName_ =
  ProjectsLocationsConfigurationsGet'
    { _plcgXgafv = Nothing
    , _plcgUploadProtocol = Nothing
    , _plcgAccessToken = Nothing
    , _plcgUploadType = Nothing
    , _plcgName = pPlcgName_
    , _plcgCallback = Nothing
    }


-- | V1 error format.
plcgXgafv :: Lens' ProjectsLocationsConfigurationsGet (Maybe Xgafv)
plcgXgafv
  = lens _plcgXgafv (\ s a -> s{_plcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcgUploadProtocol :: Lens' ProjectsLocationsConfigurationsGet (Maybe Text)
plcgUploadProtocol
  = lens _plcgUploadProtocol
      (\ s a -> s{_plcgUploadProtocol = a})

-- | OAuth access token.
plcgAccessToken :: Lens' ProjectsLocationsConfigurationsGet (Maybe Text)
plcgAccessToken
  = lens _plcgAccessToken
      (\ s a -> s{_plcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcgUploadType :: Lens' ProjectsLocationsConfigurationsGet (Maybe Text)
plcgUploadType
  = lens _plcgUploadType
      (\ s a -> s{_plcgUploadType = a})

-- | The name of the configuration to retrieve. For Cloud Run (fully
-- managed), replace {namespace_id} with the project ID or number.
plcgName :: Lens' ProjectsLocationsConfigurationsGet Text
plcgName = lens _plcgName (\ s a -> s{_plcgName = a})

-- | JSONP
plcgCallback :: Lens' ProjectsLocationsConfigurationsGet (Maybe Text)
plcgCallback
  = lens _plcgCallback (\ s a -> s{_plcgCallback = a})

instance GoogleRequest
           ProjectsLocationsConfigurationsGet
         where
        type Rs ProjectsLocationsConfigurationsGet =
             Configuration
        type Scopes ProjectsLocationsConfigurationsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsConfigurationsGet'{..}
          = go _plcgName _plcgXgafv _plcgUploadProtocol
              _plcgAccessToken
              _plcgUploadType
              _plcgCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsConfigurationsGetResource)
                      mempty
