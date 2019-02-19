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
-- Module      : Network.Google.Resource.Compute.URLMaps.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified UrlMap resource with the data included in the
-- request. This method supports PATCH semantics and uses the JSON merge
-- patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.urlMaps.patch@.
module Network.Google.Resource.Compute.URLMaps.Patch
    (
    -- * REST Resource
      URLMapsPatchResource

    -- * Creating a Request
    , urlMapsPatch
    , URLMapsPatch

    -- * Request Lenses
    , umpRequestId
    , umpURLMap
    , umpProject
    , umpPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.urlMaps.patch@ method which the
-- 'URLMapsPatch' request conforms to.
type URLMapsPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "urlMaps" :>
                 Capture "urlMap" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] URLMap :> Patch '[JSON] Operation

-- | Patches the specified UrlMap resource with the data included in the
-- request. This method supports PATCH semantics and uses the JSON merge
-- patch format and processing rules.
--
-- /See:/ 'urlMapsPatch' smart constructor.
data URLMapsPatch =
  URLMapsPatch'
    { _umpRequestId :: !(Maybe Text)
    , _umpURLMap    :: !Text
    , _umpProject   :: !Text
    , _umpPayload   :: !URLMap
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'URLMapsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umpRequestId'
--
-- * 'umpURLMap'
--
-- * 'umpProject'
--
-- * 'umpPayload'
urlMapsPatch
    :: Text -- ^ 'umpURLMap'
    -> Text -- ^ 'umpProject'
    -> URLMap -- ^ 'umpPayload'
    -> URLMapsPatch
urlMapsPatch pUmpURLMap_ pUmpProject_ pUmpPayload_ =
  URLMapsPatch'
    { _umpRequestId = Nothing
    , _umpURLMap = pUmpURLMap_
    , _umpProject = pUmpProject_
    , _umpPayload = pUmpPayload_
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
umpRequestId :: Lens' URLMapsPatch (Maybe Text)
umpRequestId
  = lens _umpRequestId (\ s a -> s{_umpRequestId = a})

-- | Name of the UrlMap resource to patch.
umpURLMap :: Lens' URLMapsPatch Text
umpURLMap
  = lens _umpURLMap (\ s a -> s{_umpURLMap = a})

-- | Project ID for this request.
umpProject :: Lens' URLMapsPatch Text
umpProject
  = lens _umpProject (\ s a -> s{_umpProject = a})

-- | Multipart request metadata.
umpPayload :: Lens' URLMapsPatch URLMap
umpPayload
  = lens _umpPayload (\ s a -> s{_umpPayload = a})

instance GoogleRequest URLMapsPatch where
        type Rs URLMapsPatch = Operation
        type Scopes URLMapsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient URLMapsPatch'{..}
          = go _umpProject _umpURLMap _umpRequestId
              (Just AltJSON)
              _umpPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy URLMapsPatchResource)
                      mempty
