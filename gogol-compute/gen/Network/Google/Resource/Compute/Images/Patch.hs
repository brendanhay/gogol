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
-- Module      : Network.Google.Resource.Compute.Images.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified image with the data included in the request. Only
-- the following fields can be modified: family, description, deprecation
-- status.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.patch@.
module Network.Google.Resource.Compute.Images.Patch
    (
    -- * REST Resource
      ImagesPatchResource

    -- * Creating a Request
    , imagesPatch
    , ImagesPatch

    -- * Request Lenses
    , ippRequestId
    , ippImage
    , ippProject
    , ippPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.images.patch@ method which the
-- 'ImagesPatch' request conforms to.
type ImagesPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 Capture "image" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Image :> Patch '[JSON] Operation

-- | Patches the specified image with the data included in the request. Only
-- the following fields can be modified: family, description, deprecation
-- status.
--
-- /See:/ 'imagesPatch' smart constructor.
data ImagesPatch =
  ImagesPatch'
    { _ippRequestId :: !(Maybe Text)
    , _ippImage :: !Text
    , _ippProject :: !Text
    , _ippPayload :: !Image
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImagesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ippRequestId'
--
-- * 'ippImage'
--
-- * 'ippProject'
--
-- * 'ippPayload'
imagesPatch
    :: Text -- ^ 'ippImage'
    -> Text -- ^ 'ippProject'
    -> Image -- ^ 'ippPayload'
    -> ImagesPatch
imagesPatch pIppImage_ pIppProject_ pIppPayload_ =
  ImagesPatch'
    { _ippRequestId = Nothing
    , _ippImage = pIppImage_
    , _ippProject = pIppProject_
    , _ippPayload = pIppPayload_
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
ippRequestId :: Lens' ImagesPatch (Maybe Text)
ippRequestId
  = lens _ippRequestId (\ s a -> s{_ippRequestId = a})

-- | Name of the image resource to patch.
ippImage :: Lens' ImagesPatch Text
ippImage = lens _ippImage (\ s a -> s{_ippImage = a})

-- | Project ID for this request.
ippProject :: Lens' ImagesPatch Text
ippProject
  = lens _ippProject (\ s a -> s{_ippProject = a})

-- | Multipart request metadata.
ippPayload :: Lens' ImagesPatch Image
ippPayload
  = lens _ippPayload (\ s a -> s{_ippPayload = a})

instance GoogleRequest ImagesPatch where
        type Rs ImagesPatch = Operation
        type Scopes ImagesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ImagesPatch'{..}
          = go _ippProject _ippImage _ippRequestId
              (Just AltJSON)
              _ippPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy ImagesPatchResource)
                      mempty
