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
-- Module      : Network.Google.Resource.TPU.Projects.Locations.AcceleratorTypes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets AcceleratorType.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.acceleratorTypes.get@.
module Network.Google.Resource.TPU.Projects.Locations.AcceleratorTypes.Get
    (
    -- * REST Resource
      ProjectsLocationsAcceleratorTypesGetResource

    -- * Creating a Request
    , projectsLocationsAcceleratorTypesGet
    , ProjectsLocationsAcceleratorTypesGet

    -- * Request Lenses
    , platgXgafv
    , platgUploadProtocol
    , platgAccessToken
    , platgUploadType
    , platgName
    , platgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.TPU.Types

-- | A resource alias for @tpu.projects.locations.acceleratorTypes.get@ method which the
-- 'ProjectsLocationsAcceleratorTypesGet' request conforms to.
type ProjectsLocationsAcceleratorTypesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] AcceleratorType

-- | Gets AcceleratorType.
--
-- /See:/ 'projectsLocationsAcceleratorTypesGet' smart constructor.
data ProjectsLocationsAcceleratorTypesGet = ProjectsLocationsAcceleratorTypesGet'
    { _platgXgafv          :: !(Maybe Xgafv)
    , _platgUploadProtocol :: !(Maybe Text)
    , _platgAccessToken    :: !(Maybe Text)
    , _platgUploadType     :: !(Maybe Text)
    , _platgName           :: !Text
    , _platgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsAcceleratorTypesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'platgXgafv'
--
-- * 'platgUploadProtocol'
--
-- * 'platgAccessToken'
--
-- * 'platgUploadType'
--
-- * 'platgName'
--
-- * 'platgCallback'
projectsLocationsAcceleratorTypesGet
    :: Text -- ^ 'platgName'
    -> ProjectsLocationsAcceleratorTypesGet
projectsLocationsAcceleratorTypesGet pPlatgName_ =
    ProjectsLocationsAcceleratorTypesGet'
    { _platgXgafv = Nothing
    , _platgUploadProtocol = Nothing
    , _platgAccessToken = Nothing
    , _platgUploadType = Nothing
    , _platgName = pPlatgName_
    , _platgCallback = Nothing
    }

-- | V1 error format.
platgXgafv :: Lens' ProjectsLocationsAcceleratorTypesGet (Maybe Xgafv)
platgXgafv
  = lens _platgXgafv (\ s a -> s{_platgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
platgUploadProtocol :: Lens' ProjectsLocationsAcceleratorTypesGet (Maybe Text)
platgUploadProtocol
  = lens _platgUploadProtocol
      (\ s a -> s{_platgUploadProtocol = a})

-- | OAuth access token.
platgAccessToken :: Lens' ProjectsLocationsAcceleratorTypesGet (Maybe Text)
platgAccessToken
  = lens _platgAccessToken
      (\ s a -> s{_platgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
platgUploadType :: Lens' ProjectsLocationsAcceleratorTypesGet (Maybe Text)
platgUploadType
  = lens _platgUploadType
      (\ s a -> s{_platgUploadType = a})

-- | The resource name.
platgName :: Lens' ProjectsLocationsAcceleratorTypesGet Text
platgName
  = lens _platgName (\ s a -> s{_platgName = a})

-- | JSONP
platgCallback :: Lens' ProjectsLocationsAcceleratorTypesGet (Maybe Text)
platgCallback
  = lens _platgCallback
      (\ s a -> s{_platgCallback = a})

instance GoogleRequest
         ProjectsLocationsAcceleratorTypesGet where
        type Rs ProjectsLocationsAcceleratorTypesGet =
             AcceleratorType
        type Scopes ProjectsLocationsAcceleratorTypesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsAcceleratorTypesGet'{..}
          = go _platgName _platgXgafv _platgUploadProtocol
              _platgAccessToken
              _platgUploadType
              _platgCallback
              (Just AltJSON)
              tPUService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAcceleratorTypesGetResource)
                      mempty
