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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata for a given KeyRing.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.get@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.Get
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsGetResource

    -- * Creating a Request
    , projectsLocationsKeyRingsGet
    , ProjectsLocationsKeyRingsGet

    -- * Request Lenses
    , plkrgXgafv
    , plkrgUploadProtocol
    , plkrgAccessToken
    , plkrgUploadType
    , plkrgName
    , plkrgCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.get@ method which the
-- 'ProjectsLocationsKeyRingsGet' request conforms to.
type ProjectsLocationsKeyRingsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] KeyRing

-- | Returns metadata for a given KeyRing.
--
-- /See:/ 'projectsLocationsKeyRingsGet' smart constructor.
data ProjectsLocationsKeyRingsGet =
  ProjectsLocationsKeyRingsGet'
    { _plkrgXgafv          :: !(Maybe Xgafv)
    , _plkrgUploadProtocol :: !(Maybe Text)
    , _plkrgAccessToken    :: !(Maybe Text)
    , _plkrgUploadType     :: !(Maybe Text)
    , _plkrgName           :: !Text
    , _plkrgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsKeyRingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrgXgafv'
--
-- * 'plkrgUploadProtocol'
--
-- * 'plkrgAccessToken'
--
-- * 'plkrgUploadType'
--
-- * 'plkrgName'
--
-- * 'plkrgCallback'
projectsLocationsKeyRingsGet
    :: Text -- ^ 'plkrgName'
    -> ProjectsLocationsKeyRingsGet
projectsLocationsKeyRingsGet pPlkrgName_ =
  ProjectsLocationsKeyRingsGet'
    { _plkrgXgafv = Nothing
    , _plkrgUploadProtocol = Nothing
    , _plkrgAccessToken = Nothing
    , _plkrgUploadType = Nothing
    , _plkrgName = pPlkrgName_
    , _plkrgCallback = Nothing
    }

-- | V1 error format.
plkrgXgafv :: Lens' ProjectsLocationsKeyRingsGet (Maybe Xgafv)
plkrgXgafv
  = lens _plkrgXgafv (\ s a -> s{_plkrgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrgUploadProtocol :: Lens' ProjectsLocationsKeyRingsGet (Maybe Text)
plkrgUploadProtocol
  = lens _plkrgUploadProtocol
      (\ s a -> s{_plkrgUploadProtocol = a})

-- | OAuth access token.
plkrgAccessToken :: Lens' ProjectsLocationsKeyRingsGet (Maybe Text)
plkrgAccessToken
  = lens _plkrgAccessToken
      (\ s a -> s{_plkrgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrgUploadType :: Lens' ProjectsLocationsKeyRingsGet (Maybe Text)
plkrgUploadType
  = lens _plkrgUploadType
      (\ s a -> s{_plkrgUploadType = a})

-- | The name of the KeyRing to get.
plkrgName :: Lens' ProjectsLocationsKeyRingsGet Text
plkrgName
  = lens _plkrgName (\ s a -> s{_plkrgName = a})

-- | JSONP
plkrgCallback :: Lens' ProjectsLocationsKeyRingsGet (Maybe Text)
plkrgCallback
  = lens _plkrgCallback
      (\ s a -> s{_plkrgCallback = a})

instance GoogleRequest ProjectsLocationsKeyRingsGet
         where
        type Rs ProjectsLocationsKeyRingsGet = KeyRing
        type Scopes ProjectsLocationsKeyRingsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient ProjectsLocationsKeyRingsGet'{..}
          = go _plkrgName _plkrgXgafv _plkrgUploadProtocol
              _plkrgAccessToken
              _plkrgUploadType
              _plkrgCallback
              (Just AltJSON)
              cloudKMSService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsKeyRingsGetResource)
                      mempty
