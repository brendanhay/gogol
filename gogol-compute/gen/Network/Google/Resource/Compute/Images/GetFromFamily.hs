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
-- Module      : Network.Google.Resource.Compute.Images.GetFromFamily
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the latest image that is part of an image family and is not
-- deprecated.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.getFromFamily@.
module Network.Google.Resource.Compute.Images.GetFromFamily
    (
    -- * REST Resource
      ImagesGetFromFamilyResource

    -- * Creating a Request
    , imagesGetFromFamily
    , ImagesGetFromFamily

    -- * Request Lenses
    , igffProject
    , igffFamily
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.images.getFromFamily@ method which the
-- 'ImagesGetFromFamily' request conforms to.
type ImagesGetFromFamilyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 "family" :>
                   Capture "family" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Image

-- | Returns the latest image that is part of an image family and is not
-- deprecated.
--
-- /See:/ 'imagesGetFromFamily' smart constructor.
data ImagesGetFromFamily =
  ImagesGetFromFamily'
    { _igffProject :: !Text
    , _igffFamily :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImagesGetFromFamily' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igffProject'
--
-- * 'igffFamily'
imagesGetFromFamily
    :: Text -- ^ 'igffProject'
    -> Text -- ^ 'igffFamily'
    -> ImagesGetFromFamily
imagesGetFromFamily pIgffProject_ pIgffFamily_ =
  ImagesGetFromFamily'
    {_igffProject = pIgffProject_, _igffFamily = pIgffFamily_}


-- | Project ID for this request.
igffProject :: Lens' ImagesGetFromFamily Text
igffProject
  = lens _igffProject (\ s a -> s{_igffProject = a})

-- | Name of the image family to search for.
igffFamily :: Lens' ImagesGetFromFamily Text
igffFamily
  = lens _igffFamily (\ s a -> s{_igffFamily = a})

instance GoogleRequest ImagesGetFromFamily where
        type Rs ImagesGetFromFamily = Image
        type Scopes ImagesGetFromFamily =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ImagesGetFromFamily'{..}
          = go _igffProject _igffFamily (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ImagesGetFromFamilyResource)
                      mempty
