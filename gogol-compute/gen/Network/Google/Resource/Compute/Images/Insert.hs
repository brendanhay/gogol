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
    , iiRequestId
    , iiProject
    , iiPayload
    , iiForceCreate
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.images.insert@ method which the
-- 'ImagesInsert' request conforms to.
type ImagesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 QueryParam "requestId" Text :>
                   QueryParam "forceCreate" Bool :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Image :> Post '[JSON] Operation

-- | Creates an image in the specified project using the data included in the
-- request.
--
-- /See:/ 'imagesInsert' smart constructor.
data ImagesInsert =
  ImagesInsert'
    { _iiRequestId :: !(Maybe Text)
    , _iiProject :: !Text
    , _iiPayload :: !Image
    , _iiForceCreate :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImagesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiRequestId'
--
-- * 'iiProject'
--
-- * 'iiPayload'
--
-- * 'iiForceCreate'
imagesInsert
    :: Text -- ^ 'iiProject'
    -> Image -- ^ 'iiPayload'
    -> ImagesInsert
imagesInsert pIiProject_ pIiPayload_ =
  ImagesInsert'
    { _iiRequestId = Nothing
    , _iiProject = pIiProject_
    , _iiPayload = pIiPayload_
    , _iiForceCreate = Nothing
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
iiRequestId :: Lens' ImagesInsert (Maybe Text)
iiRequestId
  = lens _iiRequestId (\ s a -> s{_iiRequestId = a})

-- | Project ID for this request.
iiProject :: Lens' ImagesInsert Text
iiProject
  = lens _iiProject (\ s a -> s{_iiProject = a})

-- | Multipart request metadata.
iiPayload :: Lens' ImagesInsert Image
iiPayload
  = lens _iiPayload (\ s a -> s{_iiPayload = a})

-- | Force image creation if true.
iiForceCreate :: Lens' ImagesInsert (Maybe Bool)
iiForceCreate
  = lens _iiForceCreate
      (\ s a -> s{_iiForceCreate = a})

instance GoogleRequest ImagesInsert where
        type Rs ImagesInsert = Operation
        type Scopes ImagesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient ImagesInsert'{..}
          = go _iiProject _iiRequestId _iiForceCreate
              (Just AltJSON)
              _iiPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy ImagesInsertResource)
                      mempty
