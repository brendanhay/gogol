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
-- Module      : Network.Google.Resource.Compute.URLMaps.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified UrlMap resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.urlMaps.delete@.
module Network.Google.Resource.Compute.URLMaps.Delete
    (
    -- * REST Resource
      URLMapsDeleteResource

    -- * Creating a Request
    , urlMapsDelete
    , URLMapsDelete

    -- * Request Lenses
    , umdRequestId
    , umdURLMap
    , umdProject
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.urlMaps.delete@ method which the
-- 'URLMapsDelete' request conforms to.
type URLMapsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "urlMaps" :>
                 Capture "urlMap" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified UrlMap resource.
--
-- /See:/ 'urlMapsDelete' smart constructor.
data URLMapsDelete = URLMapsDelete'
    { _umdRequestId :: !(Maybe Text)
    , _umdURLMap    :: !Text
    , _umdProject   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umdRequestId'
--
-- * 'umdURLMap'
--
-- * 'umdProject'
urlMapsDelete
    :: Text -- ^ 'umdURLMap'
    -> Text -- ^ 'umdProject'
    -> URLMapsDelete
urlMapsDelete pUmdURLMap_ pUmdProject_ =
    URLMapsDelete'
    { _umdRequestId = Nothing
    , _umdURLMap = pUmdURLMap_
    , _umdProject = pUmdProject_
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
umdRequestId :: Lens' URLMapsDelete (Maybe Text)
umdRequestId
  = lens _umdRequestId (\ s a -> s{_umdRequestId = a})

-- | Name of the UrlMap resource to delete.
umdURLMap :: Lens' URLMapsDelete Text
umdURLMap
  = lens _umdURLMap (\ s a -> s{_umdURLMap = a})

-- | Project ID for this request.
umdProject :: Lens' URLMapsDelete Text
umdProject
  = lens _umdProject (\ s a -> s{_umdProject = a})

instance GoogleRequest URLMapsDelete where
        type Rs URLMapsDelete = Operation
        type Scopes URLMapsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient URLMapsDelete'{..}
          = go _umdProject _umdURLMap _umdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy URLMapsDeleteResource)
                      mempty
