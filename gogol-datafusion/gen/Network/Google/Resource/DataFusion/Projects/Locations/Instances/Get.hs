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
-- Module      : Network.Google.Resource.DataFusion.Projects.Locations.Instances.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details of a single Data Fusion instance.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.instances.get@.
module Network.Google.Resource.DataFusion.Projects.Locations.Instances.Get
    (
    -- * REST Resource
      ProjectsLocationsInstancesGetResource

    -- * Creating a Request
    , projectsLocationsInstancesGet
    , ProjectsLocationsInstancesGet

    -- * Request Lenses
    , pligXgafv
    , pligUploadProtocol
    , pligAccessToken
    , pligUploadType
    , pligName
    , pligCallback
    ) where

import Network.Google.DataFusion.Types
import Network.Google.Prelude

-- | A resource alias for @datafusion.projects.locations.instances.get@ method which the
-- 'ProjectsLocationsInstancesGet' request conforms to.
type ProjectsLocationsInstancesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Instance

-- | Gets details of a single Data Fusion instance.
--
-- /See:/ 'projectsLocationsInstancesGet' smart constructor.
data ProjectsLocationsInstancesGet =
  ProjectsLocationsInstancesGet'
    { _pligXgafv :: !(Maybe Xgafv)
    , _pligUploadProtocol :: !(Maybe Text)
    , _pligAccessToken :: !(Maybe Text)
    , _pligUploadType :: !(Maybe Text)
    , _pligName :: !Text
    , _pligCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInstancesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pligXgafv'
--
-- * 'pligUploadProtocol'
--
-- * 'pligAccessToken'
--
-- * 'pligUploadType'
--
-- * 'pligName'
--
-- * 'pligCallback'
projectsLocationsInstancesGet
    :: Text -- ^ 'pligName'
    -> ProjectsLocationsInstancesGet
projectsLocationsInstancesGet pPligName_ =
  ProjectsLocationsInstancesGet'
    { _pligXgafv = Nothing
    , _pligUploadProtocol = Nothing
    , _pligAccessToken = Nothing
    , _pligUploadType = Nothing
    , _pligName = pPligName_
    , _pligCallback = Nothing
    }


-- | V1 error format.
pligXgafv :: Lens' ProjectsLocationsInstancesGet (Maybe Xgafv)
pligXgafv
  = lens _pligXgafv (\ s a -> s{_pligXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pligUploadProtocol :: Lens' ProjectsLocationsInstancesGet (Maybe Text)
pligUploadProtocol
  = lens _pligUploadProtocol
      (\ s a -> s{_pligUploadProtocol = a})

-- | OAuth access token.
pligAccessToken :: Lens' ProjectsLocationsInstancesGet (Maybe Text)
pligAccessToken
  = lens _pligAccessToken
      (\ s a -> s{_pligAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pligUploadType :: Lens' ProjectsLocationsInstancesGet (Maybe Text)
pligUploadType
  = lens _pligUploadType
      (\ s a -> s{_pligUploadType = a})

-- | The instance resource name in the format
-- projects\/{project}\/locations\/{location}\/instances\/{instance}.
pligName :: Lens' ProjectsLocationsInstancesGet Text
pligName = lens _pligName (\ s a -> s{_pligName = a})

-- | JSONP
pligCallback :: Lens' ProjectsLocationsInstancesGet (Maybe Text)
pligCallback
  = lens _pligCallback (\ s a -> s{_pligCallback = a})

instance GoogleRequest ProjectsLocationsInstancesGet
         where
        type Rs ProjectsLocationsInstancesGet = Instance
        type Scopes ProjectsLocationsInstancesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsInstancesGet'{..}
          = go _pligName _pligXgafv _pligUploadProtocol
              _pligAccessToken
              _pligUploadType
              _pligCallback
              (Just AltJSON)
              dataFusionService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInstancesGetResource)
                      mempty
