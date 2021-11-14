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
-- Module      : Network.Google.Resource.Compute.URLMaps.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a UrlMap resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.urlMaps.insert@.
module Network.Google.Resource.Compute.URLMaps.Insert
    (
    -- * REST Resource
      URLMapsInsertResource

    -- * Creating a Request
    , urlMapsInsert
    , URLMapsInsert

    -- * Request Lenses
    , umiRequestId
    , umiProject
    , umiPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.urlMaps.insert@ method which the
-- 'URLMapsInsert' request conforms to.
type URLMapsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "urlMaps" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] URLMap :> Post '[JSON] Operation

-- | Creates a UrlMap resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'urlMapsInsert' smart constructor.
data URLMapsInsert =
  URLMapsInsert'
    { _umiRequestId :: !(Maybe Text)
    , _umiProject :: !Text
    , _umiPayload :: !URLMap
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'URLMapsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umiRequestId'
--
-- * 'umiProject'
--
-- * 'umiPayload'
urlMapsInsert
    :: Text -- ^ 'umiProject'
    -> URLMap -- ^ 'umiPayload'
    -> URLMapsInsert
urlMapsInsert pUmiProject_ pUmiPayload_ =
  URLMapsInsert'
    { _umiRequestId = Nothing
    , _umiProject = pUmiProject_
    , _umiPayload = pUmiPayload_
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
umiRequestId :: Lens' URLMapsInsert (Maybe Text)
umiRequestId
  = lens _umiRequestId (\ s a -> s{_umiRequestId = a})

-- | Project ID for this request.
umiProject :: Lens' URLMapsInsert Text
umiProject
  = lens _umiProject (\ s a -> s{_umiProject = a})

-- | Multipart request metadata.
umiPayload :: Lens' URLMapsInsert URLMap
umiPayload
  = lens _umiPayload (\ s a -> s{_umiPayload = a})

instance GoogleRequest URLMapsInsert where
        type Rs URLMapsInsert = Operation
        type Scopes URLMapsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient URLMapsInsert'{..}
          = go _umiProject _umiRequestId (Just AltJSON)
              _umiPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy URLMapsInsertResource)
                      mempty
