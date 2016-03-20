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
-- Module      : Network.Google.Resource.Compute.Images.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified image. Get a list of available images by making a
-- list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.get@.
module Network.Google.Resource.Compute.Images.Get
    (
    -- * REST Resource
      ImagesGetResource

    -- * Creating a Request
    , imagesGet
    , ImagesGet

    -- * Request Lenses
    , iImage
    , iProject
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.images.get@ method which the
-- 'ImagesGet' request conforms to.
type ImagesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 Capture "image" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Image

-- | Returns the specified image. Get a list of available images by making a
-- list() request.
--
-- /See:/ 'imagesGet' smart constructor.
data ImagesGet = ImagesGet
    { _iImage   :: !Text
    , _iProject :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iImage'
--
-- * 'iProject'
imagesGet
    :: Text -- ^ 'iImage'
    -> Text -- ^ 'iProject'
    -> ImagesGet
imagesGet pIImage_ pIProject_ =
    ImagesGet
    { _iImage = pIImage_
    , _iProject = pIProject_
    }

-- | Name of the image resource to return.
iImage :: Lens' ImagesGet Text
iImage = lens _iImage (\ s a -> s{_iImage = a})

-- | Project ID for this request.
iProject :: Lens' ImagesGet Text
iProject = lens _iProject (\ s a -> s{_iProject = a})

instance GoogleRequest ImagesGet where
        type Rs ImagesGet = Image
        requestClient ImagesGet{..}
          = go _iProject _iImage (Just AltJSON) computeService
          where go
                  = buildClient (Proxy :: Proxy ImagesGetResource)
                      mempty
