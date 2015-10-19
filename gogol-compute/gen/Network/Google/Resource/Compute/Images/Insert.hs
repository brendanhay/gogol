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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an image resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeImagesInsert@.
module Network.Google.Resource.Compute.Images.Insert
    (
    -- * REST Resource
      ImagesInsertResource

    -- * Creating a Request
    , imagesInsert'
    , ImagesInsert'

    -- * Request Lenses
    , iProject
    , iPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeImagesInsert@ method which the
-- 'ImagesInsert'' request conforms to.
type ImagesInsertResource =
     Capture "project" Text :>
       "global" :>
         "images" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Image :> Post '[JSON] Operation

-- | Creates an image resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'imagesInsert'' smart constructor.
data ImagesInsert' = ImagesInsert'
    { _iProject :: !Text
    , _iPayload :: !Image
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iProject'
--
-- * 'iPayload'
imagesInsert'
    :: Text -- ^ 'project'
    -> Image -- ^ 'payload'
    -> ImagesInsert'
imagesInsert' pIProject_ pIPayload_ =
    ImagesInsert'
    { _iProject = pIProject_
    , _iPayload = pIPayload_
    }

-- | Project ID for this request.
iProject :: Lens' ImagesInsert' Text
iProject = lens _iProject (\ s a -> s{_iProject = a})

-- | Multipart request metadata.
iPayload :: Lens' ImagesInsert' Image
iPayload = lens _iPayload (\ s a -> s{_iPayload = a})

instance GoogleRequest ImagesInsert' where
        type Rs ImagesInsert' = Operation
        requestClient ImagesInsert'{..}
          = go _iProject (Just AltJSON) _iPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy ImagesInsertResource)
                      mempty
