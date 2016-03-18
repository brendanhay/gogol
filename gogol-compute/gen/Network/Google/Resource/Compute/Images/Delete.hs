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
-- Module      : Network.Google.Resource.Compute.Images.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified image.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.delete@.
module Network.Google.Resource.Compute.Images.Delete
    (
    -- * REST Resource
      ImagesDeleteResource

    -- * Creating a Request
    , imagesDelete
    , ImagesDelete

    -- * Request Lenses
    , imaImage
    , imaProject
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.images.delete@ method which the
-- 'ImagesDelete' request conforms to.
type ImagesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 Capture "image" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified image.
--
-- /See:/ 'imagesDelete' smart constructor.
data ImagesDelete = ImagesDelete
    { _imaImage   :: !Text
    , _imaProject :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imaImage'
--
-- * 'imaProject'
imagesDelete
    :: Text -- ^ 'imaImage'
    -> Text -- ^ 'imaProject'
    -> ImagesDelete
imagesDelete pImaImage_ pImaProject_ =
    ImagesDelete
    { _imaImage = pImaImage_
    , _imaProject = pImaProject_
    }

-- | Name of the image resource to delete.
imaImage :: Lens' ImagesDelete Text
imaImage = lens _imaImage (\ s a -> s{_imaImage = a})

-- | Project ID for this request.
imaProject :: Lens' ImagesDelete Text
imaProject
  = lens _imaProject (\ s a -> s{_imaProject = a})

instance GoogleRequest ImagesDelete where
        type Rs ImagesDelete = Operation
        requestClient ImagesDelete{..}
          = go _imaProject _imaImage (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy ImagesDeleteResource)
                      mempty
