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
-- Module      : Network.Google.Resource.Compute.Images.Deprecate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the deprecation status of an image. If an empty request body is
-- given, clears the deprecation status instead.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.deprecate@.
module Network.Google.Resource.Compute.Images.Deprecate
    (
    -- * REST Resource
      ImagesDeprecateResource

    -- * Creating a Request
    , imagesDeprecate'
    , ImagesDeprecate'

    -- * Request Lenses
    , imamImage
    , imamProject
    , imamPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.images.deprecate@ method which the
-- 'ImagesDeprecate'' request conforms to.
type ImagesDeprecateResource =
     Capture "project" Text :>
       "global" :>
         "images" :>
           Capture "image" Text :>
             "deprecate" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] DeprecationStatus :>
                   Post '[JSON] Operation

-- | Sets the deprecation status of an image. If an empty request body is
-- given, clears the deprecation status instead.
--
-- /See:/ 'imagesDeprecate'' smart constructor.
data ImagesDeprecate' = ImagesDeprecate'
    { _imamImage   :: !Text
    , _imamProject :: !Text
    , _imamPayload :: !DeprecationStatus
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesDeprecate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imamImage'
--
-- * 'imamProject'
--
-- * 'imamPayload'
imagesDeprecate'
    :: Text -- ^ 'imamImage'
    -> Text -- ^ 'imamProject'
    -> DeprecationStatus -- ^ 'imamPayload'
    -> ImagesDeprecate'
imagesDeprecate' pImamImage_ pImamProject_ pImamPayload_ =
    ImagesDeprecate'
    { _imamImage = pImamImage_
    , _imamProject = pImamProject_
    , _imamPayload = pImamPayload_
    }

-- | Image name.
imamImage :: Lens' ImagesDeprecate' Text
imamImage
  = lens _imamImage (\ s a -> s{_imamImage = a})

-- | Project ID for this request.
imamProject :: Lens' ImagesDeprecate' Text
imamProject
  = lens _imamProject (\ s a -> s{_imamProject = a})

-- | Multipart request metadata.
imamPayload :: Lens' ImagesDeprecate' DeprecationStatus
imamPayload
  = lens _imamPayload (\ s a -> s{_imamPayload = a})

instance GoogleRequest ImagesDeprecate' where
        type Rs ImagesDeprecate' = Operation
        requestClient ImagesDeprecate'{..}
          = go _imamProject _imamImage (Just AltJSON)
              _imamPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ImagesDeprecateResource)
                      mempty
