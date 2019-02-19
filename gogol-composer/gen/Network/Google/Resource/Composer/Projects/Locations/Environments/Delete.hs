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
-- Module      : Network.Google.Resource.Composer.Projects.Locations.Environments.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an environment.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.delete@.
module Network.Google.Resource.Composer.Projects.Locations.Environments.Delete
    (
    -- * REST Resource
      ProjectsLocationsEnvironmentsDeleteResource

    -- * Creating a Request
    , projectsLocationsEnvironmentsDelete
    , ProjectsLocationsEnvironmentsDelete

    -- * Request Lenses
    , pledXgafv
    , pledUploadProtocol
    , pledAccessToken
    , pledUploadType
    , pledName
    , pledCallback
    ) where

import           Network.Google.Composer.Types
import           Network.Google.Prelude

-- | A resource alias for @composer.projects.locations.environments.delete@ method which the
-- 'ProjectsLocationsEnvironmentsDelete' request conforms to.
type ProjectsLocationsEnvironmentsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Delete an environment.
--
-- /See:/ 'projectsLocationsEnvironmentsDelete' smart constructor.
data ProjectsLocationsEnvironmentsDelete =
  ProjectsLocationsEnvironmentsDelete'
    { _pledXgafv          :: !(Maybe Xgafv)
    , _pledUploadProtocol :: !(Maybe Text)
    , _pledAccessToken    :: !(Maybe Text)
    , _pledUploadType     :: !(Maybe Text)
    , _pledName           :: !Text
    , _pledCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsEnvironmentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pledXgafv'
--
-- * 'pledUploadProtocol'
--
-- * 'pledAccessToken'
--
-- * 'pledUploadType'
--
-- * 'pledName'
--
-- * 'pledCallback'
projectsLocationsEnvironmentsDelete
    :: Text -- ^ 'pledName'
    -> ProjectsLocationsEnvironmentsDelete
projectsLocationsEnvironmentsDelete pPledName_ =
  ProjectsLocationsEnvironmentsDelete'
    { _pledXgafv = Nothing
    , _pledUploadProtocol = Nothing
    , _pledAccessToken = Nothing
    , _pledUploadType = Nothing
    , _pledName = pPledName_
    , _pledCallback = Nothing
    }

-- | V1 error format.
pledXgafv :: Lens' ProjectsLocationsEnvironmentsDelete (Maybe Xgafv)
pledXgafv
  = lens _pledXgafv (\ s a -> s{_pledXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pledUploadProtocol :: Lens' ProjectsLocationsEnvironmentsDelete (Maybe Text)
pledUploadProtocol
  = lens _pledUploadProtocol
      (\ s a -> s{_pledUploadProtocol = a})

-- | OAuth access token.
pledAccessToken :: Lens' ProjectsLocationsEnvironmentsDelete (Maybe Text)
pledAccessToken
  = lens _pledAccessToken
      (\ s a -> s{_pledAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pledUploadType :: Lens' ProjectsLocationsEnvironmentsDelete (Maybe Text)
pledUploadType
  = lens _pledUploadType
      (\ s a -> s{_pledUploadType = a})

-- | The environment to delete, in the form:
-- \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
pledName :: Lens' ProjectsLocationsEnvironmentsDelete Text
pledName = lens _pledName (\ s a -> s{_pledName = a})

-- | JSONP
pledCallback :: Lens' ProjectsLocationsEnvironmentsDelete (Maybe Text)
pledCallback
  = lens _pledCallback (\ s a -> s{_pledCallback = a})

instance GoogleRequest
           ProjectsLocationsEnvironmentsDelete
         where
        type Rs ProjectsLocationsEnvironmentsDelete =
             Operation
        type Scopes ProjectsLocationsEnvironmentsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsEnvironmentsDelete'{..}
          = go _pledName _pledXgafv _pledUploadProtocol
              _pledAccessToken
              _pledUploadType
              _pledCallback
              (Just AltJSON)
              composerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsEnvironmentsDeleteResource)
                      mempty
