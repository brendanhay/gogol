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
-- Copyright   : (c) 2015-2021 Brendan Hay
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
    , imagesDeprecate
    , ImagesDeprecate

    -- * Request Lenses
    , id1RequestId
    , id1Image
    , id1Project
    , id1Payload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.images.deprecate@ method which the
-- 'ImagesDeprecate' request conforms to.
type ImagesDeprecateResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 Capture "image" Text :>
                   "deprecate" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DeprecationStatus :>
                           Post '[JSON] Operation

-- | Sets the deprecation status of an image. If an empty request body is
-- given, clears the deprecation status instead.
--
-- /See:/ 'imagesDeprecate' smart constructor.
data ImagesDeprecate =
  ImagesDeprecate'
    { _id1RequestId :: !(Maybe Text)
    , _id1Image :: !Text
    , _id1Project :: !Text
    , _id1Payload :: !DeprecationStatus
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImagesDeprecate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'id1RequestId'
--
-- * 'id1Image'
--
-- * 'id1Project'
--
-- * 'id1Payload'
imagesDeprecate
    :: Text -- ^ 'id1Image'
    -> Text -- ^ 'id1Project'
    -> DeprecationStatus -- ^ 'id1Payload'
    -> ImagesDeprecate
imagesDeprecate pId1Image_ pId1Project_ pId1Payload_ =
  ImagesDeprecate'
    { _id1RequestId = Nothing
    , _id1Image = pId1Image_
    , _id1Project = pId1Project_
    , _id1Payload = pId1Payload_
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
id1RequestId :: Lens' ImagesDeprecate (Maybe Text)
id1RequestId
  = lens _id1RequestId (\ s a -> s{_id1RequestId = a})

-- | Image name.
id1Image :: Lens' ImagesDeprecate Text
id1Image = lens _id1Image (\ s a -> s{_id1Image = a})

-- | Project ID for this request.
id1Project :: Lens' ImagesDeprecate Text
id1Project
  = lens _id1Project (\ s a -> s{_id1Project = a})

-- | Multipart request metadata.
id1Payload :: Lens' ImagesDeprecate DeprecationStatus
id1Payload
  = lens _id1Payload (\ s a -> s{_id1Payload = a})

instance GoogleRequest ImagesDeprecate where
        type Rs ImagesDeprecate = Operation
        type Scopes ImagesDeprecate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ImagesDeprecate'{..}
          = go _id1Project _id1Image _id1RequestId
              (Just AltJSON)
              _id1Payload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ImagesDeprecateResource)
                      mempty
