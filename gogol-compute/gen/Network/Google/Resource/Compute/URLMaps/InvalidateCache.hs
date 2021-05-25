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
-- Module      : Network.Google.Resource.Compute.URLMaps.InvalidateCache
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates a cache invalidation operation, invalidating the specified
-- path, scoped to the specified UrlMap. For more information, see
-- [Invalidating cached content](\/cdn\/docs\/invalidating-cached-content).
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.urlMaps.invalidateCache@.
module Network.Google.Resource.Compute.URLMaps.InvalidateCache
    (
    -- * REST Resource
      URLMapsInvalidateCacheResource

    -- * Creating a Request
    , urlMapsInvalidateCache
    , URLMapsInvalidateCache

    -- * Request Lenses
    , umicRequestId
    , umicURLMap
    , umicProject
    , umicPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.urlMaps.invalidateCache@ method which the
-- 'URLMapsInvalidateCache' request conforms to.
type URLMapsInvalidateCacheResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "urlMaps" :>
                 Capture "urlMap" Text :>
                   "invalidateCache" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CacheInvalidationRule :>
                           Post '[JSON] Operation

-- | Initiates a cache invalidation operation, invalidating the specified
-- path, scoped to the specified UrlMap. For more information, see
-- [Invalidating cached content](\/cdn\/docs\/invalidating-cached-content).
--
-- /See:/ 'urlMapsInvalidateCache' smart constructor.
data URLMapsInvalidateCache =
  URLMapsInvalidateCache'
    { _umicRequestId :: !(Maybe Text)
    , _umicURLMap :: !Text
    , _umicProject :: !Text
    , _umicPayload :: !CacheInvalidationRule
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'URLMapsInvalidateCache' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umicRequestId'
--
-- * 'umicURLMap'
--
-- * 'umicProject'
--
-- * 'umicPayload'
urlMapsInvalidateCache
    :: Text -- ^ 'umicURLMap'
    -> Text -- ^ 'umicProject'
    -> CacheInvalidationRule -- ^ 'umicPayload'
    -> URLMapsInvalidateCache
urlMapsInvalidateCache pUmicURLMap_ pUmicProject_ pUmicPayload_ =
  URLMapsInvalidateCache'
    { _umicRequestId = Nothing
    , _umicURLMap = pUmicURLMap_
    , _umicProject = pUmicProject_
    , _umicPayload = pUmicPayload_
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
umicRequestId :: Lens' URLMapsInvalidateCache (Maybe Text)
umicRequestId
  = lens _umicRequestId
      (\ s a -> s{_umicRequestId = a})

-- | Name of the UrlMap scoping this request.
umicURLMap :: Lens' URLMapsInvalidateCache Text
umicURLMap
  = lens _umicURLMap (\ s a -> s{_umicURLMap = a})

-- | Project ID for this request.
umicProject :: Lens' URLMapsInvalidateCache Text
umicProject
  = lens _umicProject (\ s a -> s{_umicProject = a})

-- | Multipart request metadata.
umicPayload :: Lens' URLMapsInvalidateCache CacheInvalidationRule
umicPayload
  = lens _umicPayload (\ s a -> s{_umicPayload = a})

instance GoogleRequest URLMapsInvalidateCache where
        type Rs URLMapsInvalidateCache = Operation
        type Scopes URLMapsInvalidateCache =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient URLMapsInvalidateCache'{..}
          = go _umicProject _umicURLMap _umicRequestId
              (Just AltJSON)
              _umicPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy URLMapsInvalidateCacheResource)
                      mempty
