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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new KeyRing in a given Project and Location.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.create@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.Create
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCreateResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCreate
    , ProjectsLocationsKeyRingsCreate

    -- * Request Lenses
    , plkrcParent
    , plkrcXgafv
    , plkrcUploadProtocol
    , plkrcAccessToken
    , plkrcUploadType
    , plkrcPayload
    , plkrcKeyRingId
    , plkrcCallback
    ) where

import Network.Google.CloudKMS.Types
import Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.create@ method which the
-- 'ProjectsLocationsKeyRingsCreate' request conforms to.
type ProjectsLocationsKeyRingsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "keyRings" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "keyRingId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] KeyRing :> Post '[JSON] KeyRing

-- | Create a new KeyRing in a given Project and Location.
--
-- /See:/ 'projectsLocationsKeyRingsCreate' smart constructor.
data ProjectsLocationsKeyRingsCreate =
  ProjectsLocationsKeyRingsCreate'
    { _plkrcParent :: !Text
    , _plkrcXgafv :: !(Maybe Xgafv)
    , _plkrcUploadProtocol :: !(Maybe Text)
    , _plkrcAccessToken :: !(Maybe Text)
    , _plkrcUploadType :: !(Maybe Text)
    , _plkrcPayload :: !KeyRing
    , _plkrcKeyRingId :: !(Maybe Text)
    , _plkrcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrcParent'
--
-- * 'plkrcXgafv'
--
-- * 'plkrcUploadProtocol'
--
-- * 'plkrcAccessToken'
--
-- * 'plkrcUploadType'
--
-- * 'plkrcPayload'
--
-- * 'plkrcKeyRingId'
--
-- * 'plkrcCallback'
projectsLocationsKeyRingsCreate
    :: Text -- ^ 'plkrcParent'
    -> KeyRing -- ^ 'plkrcPayload'
    -> ProjectsLocationsKeyRingsCreate
projectsLocationsKeyRingsCreate pPlkrcParent_ pPlkrcPayload_ =
  ProjectsLocationsKeyRingsCreate'
    { _plkrcParent = pPlkrcParent_
    , _plkrcXgafv = Nothing
    , _plkrcUploadProtocol = Nothing
    , _plkrcAccessToken = Nothing
    , _plkrcUploadType = Nothing
    , _plkrcPayload = pPlkrcPayload_
    , _plkrcKeyRingId = Nothing
    , _plkrcCallback = Nothing
    }


-- | Required. The resource name of the location associated with the
-- KeyRings, in the format \`projects\/*\/locations\/*\`.
plkrcParent :: Lens' ProjectsLocationsKeyRingsCreate Text
plkrcParent
  = lens _plkrcParent (\ s a -> s{_plkrcParent = a})

-- | V1 error format.
plkrcXgafv :: Lens' ProjectsLocationsKeyRingsCreate (Maybe Xgafv)
plkrcXgafv
  = lens _plkrcXgafv (\ s a -> s{_plkrcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrcUploadProtocol :: Lens' ProjectsLocationsKeyRingsCreate (Maybe Text)
plkrcUploadProtocol
  = lens _plkrcUploadProtocol
      (\ s a -> s{_plkrcUploadProtocol = a})

-- | OAuth access token.
plkrcAccessToken :: Lens' ProjectsLocationsKeyRingsCreate (Maybe Text)
plkrcAccessToken
  = lens _plkrcAccessToken
      (\ s a -> s{_plkrcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrcUploadType :: Lens' ProjectsLocationsKeyRingsCreate (Maybe Text)
plkrcUploadType
  = lens _plkrcUploadType
      (\ s a -> s{_plkrcUploadType = a})

-- | Multipart request metadata.
plkrcPayload :: Lens' ProjectsLocationsKeyRingsCreate KeyRing
plkrcPayload
  = lens _plkrcPayload (\ s a -> s{_plkrcPayload = a})

-- | Required. It must be unique within a location and match the regular
-- expression \`[a-zA-Z0-9_-]{1,63}\`
plkrcKeyRingId :: Lens' ProjectsLocationsKeyRingsCreate (Maybe Text)
plkrcKeyRingId
  = lens _plkrcKeyRingId
      (\ s a -> s{_plkrcKeyRingId = a})

-- | JSONP
plkrcCallback :: Lens' ProjectsLocationsKeyRingsCreate (Maybe Text)
plkrcCallback
  = lens _plkrcCallback
      (\ s a -> s{_plkrcCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsCreate
         where
        type Rs ProjectsLocationsKeyRingsCreate = KeyRing
        type Scopes ProjectsLocationsKeyRingsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient ProjectsLocationsKeyRingsCreate'{..}
          = go _plkrcParent _plkrcXgafv _plkrcUploadProtocol
              _plkrcAccessToken
              _plkrcUploadType
              _plkrcKeyRingId
              _plkrcCallback
              (Just AltJSON)
              _plkrcPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsKeyRingsCreateResource)
                      mempty
