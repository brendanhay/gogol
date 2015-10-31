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
-- Module      : Network.Google.Resource.Compute.Images.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an image in the specified project using the data included in the
-- request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.insert@.
module Network.Google.Resource.Compute.Images.Insert
    (
    -- * REST Resource
      ImagesInsertResource

    -- * Creating a Request
    , imagesInsert
    , ImagesInsert

    -- * Request Lenses
    , iiProject
    , iiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.images.insert@ method which the
-- 'ImagesInsert' request conforms to.
type ImagesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Image :> Post '[JSON] Operation

-- | Creates an image in the specified project using the data included in the
-- request.
--
-- /See:/ 'imagesInsert' smart constructor.
data ImagesInsert = ImagesInsert
    { _iiProject :: !Text
    , _iiPayload :: !Image
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiProject'
--
-- * 'iiPayload'
imagesInsert
    :: Text -- ^ 'iiProject'
    -> Image -- ^ 'iiPayload'
    -> ImagesInsert
imagesInsert pIiProject_ pIiPayload_ =
    ImagesInsert
    { _iiProject = pIiProject_
    , _iiPayload = pIiPayload_
    }

-- | Project ID for this request.
iiProject :: Lens' ImagesInsert Text
iiProject
  = lens _iiProject (\ s a -> s{_iiProject = a})

-- | Multipart request metadata.
iiPayload :: Lens' ImagesInsert Image
iiPayload
  = lens _iiPayload (\ s a -> s{_iiPayload = a})

instance GoogleRequest ImagesInsert where
        type Rs ImagesInsert = Operation
        type Scopes ImagesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient ImagesInsert{..}
          = go _iiProject (Just AltJSON) _iiPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy ImagesInsertResource)
                      mempty
