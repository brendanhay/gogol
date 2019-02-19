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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , iddRequestId
    , iddImage
    , iddProject
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
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified image.
--
-- /See:/ 'imagesDelete' smart constructor.
data ImagesDelete =
  ImagesDelete'
    { _iddRequestId :: !(Maybe Text)
    , _iddImage     :: !Text
    , _iddProject   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImagesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iddRequestId'
--
-- * 'iddImage'
--
-- * 'iddProject'
imagesDelete
    :: Text -- ^ 'iddImage'
    -> Text -- ^ 'iddProject'
    -> ImagesDelete
imagesDelete pIddImage_ pIddProject_ =
  ImagesDelete'
    { _iddRequestId = Nothing
    , _iddImage = pIddImage_
    , _iddProject = pIddProject_
    }


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
iddRequestId :: Lens' ImagesDelete (Maybe Text)
iddRequestId
  = lens _iddRequestId (\ s a -> s{_iddRequestId = a})

-- | Name of the image resource to delete.
iddImage :: Lens' ImagesDelete Text
iddImage = lens _iddImage (\ s a -> s{_iddImage = a})

-- | Project ID for this request.
iddProject :: Lens' ImagesDelete Text
iddProject
  = lens _iddProject (\ s a -> s{_iddProject = a})

instance GoogleRequest ImagesDelete where
        type Rs ImagesDelete = Operation
        type Scopes ImagesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ImagesDelete'{..}
          = go _iddProject _iddImage _iddRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy ImagesDeleteResource)
                      mempty
