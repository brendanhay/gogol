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
-- Deletes the specified image resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.delete@.
module Network.Google.Resource.Compute.Images.Delete
    (
    -- * REST Resource
      ImagesDeleteResource

    -- * Creating a Request
    , imagesDelete'
    , ImagesDelete'

    -- * Request Lenses
    , idImage
    , idProject
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.images.delete@ method which the
-- 'ImagesDelete'' request conforms to.
type ImagesDeleteResource =
     Capture "project" Text :>
       "global" :>
         "images" :>
           Capture "image" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified image resource.
--
-- /See:/ 'imagesDelete'' smart constructor.
data ImagesDelete' = ImagesDelete'
    { _idImage   :: !Text
    , _idProject :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idImage'
--
-- * 'idProject'
imagesDelete'
    :: Text -- ^ 'idImage'
    -> Text -- ^ 'idProject'
    -> ImagesDelete'
imagesDelete' pIdImage_ pIdProject_ =
    ImagesDelete'
    { _idImage = pIdImage_
    , _idProject = pIdProject_
    }

-- | Name of the image resource to delete.
idImage :: Lens' ImagesDelete' Text
idImage = lens _idImage (\ s a -> s{_idImage = a})

-- | Project ID for this request.
idProject :: Lens' ImagesDelete' Text
idProject
  = lens _idProject (\ s a -> s{_idProject = a})

instance GoogleRequest ImagesDelete' where
        type Rs ImagesDelete' = Operation
        requestClient ImagesDelete'{..}
          = go _idProject _idImage (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy ImagesDeleteResource)
                      mempty
