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
-- Module      : Network.Google.Resource.Compute.Images.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.testIamPermissions@.
module Network.Google.Resource.Compute.Images.TestIAMPermissions
    (
    -- * REST Resource
      ImagesTestIAMPermissionsResource

    -- * Creating a Request
    , imagesTestIAMPermissions
    , ImagesTestIAMPermissions

    -- * Request Lenses
    , itiampProject
    , itiampPayload
    , itiampResource
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.images.testIamPermissions@ method which the
-- 'ImagesTestIAMPermissions' request conforms to.
type ImagesTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 Capture "resource" Text :>
                   "testIamPermissions" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TestPermissionsRequest :>
                         Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'imagesTestIAMPermissions' smart constructor.
data ImagesTestIAMPermissions =
  ImagesTestIAMPermissions'
    { _itiampProject  :: !Text
    , _itiampPayload  :: !TestPermissionsRequest
    , _itiampResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImagesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itiampProject'
--
-- * 'itiampPayload'
--
-- * 'itiampResource'
imagesTestIAMPermissions
    :: Text -- ^ 'itiampProject'
    -> TestPermissionsRequest -- ^ 'itiampPayload'
    -> Text -- ^ 'itiampResource'
    -> ImagesTestIAMPermissions
imagesTestIAMPermissions pItiampProject_ pItiampPayload_ pItiampResource_ =
  ImagesTestIAMPermissions'
    { _itiampProject = pItiampProject_
    , _itiampPayload = pItiampPayload_
    , _itiampResource = pItiampResource_
    }

-- | Project ID for this request.
itiampProject :: Lens' ImagesTestIAMPermissions Text
itiampProject
  = lens _itiampProject
      (\ s a -> s{_itiampProject = a})

-- | Multipart request metadata.
itiampPayload :: Lens' ImagesTestIAMPermissions TestPermissionsRequest
itiampPayload
  = lens _itiampPayload
      (\ s a -> s{_itiampPayload = a})

-- | Name or id of the resource for this request.
itiampResource :: Lens' ImagesTestIAMPermissions Text
itiampResource
  = lens _itiampResource
      (\ s a -> s{_itiampResource = a})

instance GoogleRequest ImagesTestIAMPermissions where
        type Rs ImagesTestIAMPermissions =
             TestPermissionsResponse
        type Scopes ImagesTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ImagesTestIAMPermissions'{..}
          = go _itiampProject _itiampResource (Just AltJSON)
              _itiampPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ImagesTestIAMPermissionsResource)
                      mempty
