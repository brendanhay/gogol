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
-- Module      : Network.Google.Resource.Compute.URLMaps.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified UrlMap resource with the data included in the
-- request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.urlMaps.update@.
module Network.Google.Resource.Compute.URLMaps.Update
    (
    -- * REST Resource
      URLMapsUpdateResource

    -- * Creating a Request
    , urlMapsUpdate
    , URLMapsUpdate

    -- * Request Lenses
    , umuRequestId
    , umuURLMap
    , umuProject
    , umuPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.urlMaps.update@ method which the
-- 'URLMapsUpdate' request conforms to.
type URLMapsUpdateResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "urlMaps" :>
                 Capture "urlMap" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] URLMap :> Put '[JSON] Operation

-- | Updates the specified UrlMap resource with the data included in the
-- request.
--
-- /See:/ 'urlMapsUpdate' smart constructor.
data URLMapsUpdate =
  URLMapsUpdate'
    { _umuRequestId :: !(Maybe Text)
    , _umuURLMap    :: !Text
    , _umuProject   :: !Text
    , _umuPayload   :: !URLMap
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'URLMapsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umuRequestId'
--
-- * 'umuURLMap'
--
-- * 'umuProject'
--
-- * 'umuPayload'
urlMapsUpdate
    :: Text -- ^ 'umuURLMap'
    -> Text -- ^ 'umuProject'
    -> URLMap -- ^ 'umuPayload'
    -> URLMapsUpdate
urlMapsUpdate pUmuURLMap_ pUmuProject_ pUmuPayload_ =
  URLMapsUpdate'
    { _umuRequestId = Nothing
    , _umuURLMap = pUmuURLMap_
    , _umuProject = pUmuProject_
    , _umuPayload = pUmuPayload_
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
umuRequestId :: Lens' URLMapsUpdate (Maybe Text)
umuRequestId
  = lens _umuRequestId (\ s a -> s{_umuRequestId = a})

-- | Name of the UrlMap resource to update.
umuURLMap :: Lens' URLMapsUpdate Text
umuURLMap
  = lens _umuURLMap (\ s a -> s{_umuURLMap = a})

-- | Project ID for this request.
umuProject :: Lens' URLMapsUpdate Text
umuProject
  = lens _umuProject (\ s a -> s{_umuProject = a})

-- | Multipart request metadata.
umuPayload :: Lens' URLMapsUpdate URLMap
umuPayload
  = lens _umuPayload (\ s a -> s{_umuPayload = a})

instance GoogleRequest URLMapsUpdate where
        type Rs URLMapsUpdate = Operation
        type Scopes URLMapsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient URLMapsUpdate'{..}
          = go _umuProject _umuURLMap _umuRequestId
              (Just AltJSON)
              _umuPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy URLMapsUpdateResource)
                      mempty
