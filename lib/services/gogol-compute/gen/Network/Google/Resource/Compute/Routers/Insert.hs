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
-- Module      : Network.Google.Resource.Compute.Routers.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Router resource in the specified project and region using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routers.insert@.
module Network.Google.Resource.Compute.Routers.Insert
    (
    -- * REST Resource
      RoutersInsertResource

    -- * Creating a Request
    , routersInsert
    , RoutersInsert

    -- * Request Lenses
    , riRequestId
    , riProject
    , riPayload
    , riRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.routers.insert@ method which the
-- 'RoutersInsert' request conforms to.
type RoutersInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "routers" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Router :> Post '[JSON] Operation

-- | Creates a Router resource in the specified project and region using the
-- data included in the request.
--
-- /See:/ 'routersInsert' smart constructor.
data RoutersInsert =
  RoutersInsert'
    { _riRequestId :: !(Maybe Text)
    , _riProject :: !Text
    , _riPayload :: !Router
    , _riRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoutersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riRequestId'
--
-- * 'riProject'
--
-- * 'riPayload'
--
-- * 'riRegion'
routersInsert
    :: Text -- ^ 'riProject'
    -> Router -- ^ 'riPayload'
    -> Text -- ^ 'riRegion'
    -> RoutersInsert
routersInsert pRiProject_ pRiPayload_ pRiRegion_ =
  RoutersInsert'
    { _riRequestId = Nothing
    , _riProject = pRiProject_
    , _riPayload = pRiPayload_
    , _riRegion = pRiRegion_
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
riRequestId :: Lens' RoutersInsert (Maybe Text)
riRequestId
  = lens _riRequestId (\ s a -> s{_riRequestId = a})

-- | Project ID for this request.
riProject :: Lens' RoutersInsert Text
riProject
  = lens _riProject (\ s a -> s{_riProject = a})

-- | Multipart request metadata.
riPayload :: Lens' RoutersInsert Router
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

-- | Name of the region for this request.
riRegion :: Lens' RoutersInsert Text
riRegion = lens _riRegion (\ s a -> s{_riRegion = a})

instance GoogleRequest RoutersInsert where
        type Rs RoutersInsert = Operation
        type Scopes RoutersInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RoutersInsert'{..}
          = go _riProject _riRegion _riRequestId (Just AltJSON)
              _riPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutersInsertResource)
                      mempty
