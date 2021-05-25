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
-- Module      : Network.Google.Resource.Compute.Networks.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a network in the specified project using the data included in
-- the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networks.insert@.
module Network.Google.Resource.Compute.Networks.Insert
    (
    -- * REST Resource
      NetworksInsertResource

    -- * Creating a Request
    , networksInsert
    , NetworksInsert

    -- * Request Lenses
    , niRequestId
    , niProject
    , niPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.networks.insert@ method which the
-- 'NetworksInsert' request conforms to.
type NetworksInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networks" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Network :> Post '[JSON] Operation

-- | Creates a network in the specified project using the data included in
-- the request.
--
-- /See:/ 'networksInsert' smart constructor.
data NetworksInsert =
  NetworksInsert'
    { _niRequestId :: !(Maybe Text)
    , _niProject :: !Text
    , _niPayload :: !Network
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niRequestId'
--
-- * 'niProject'
--
-- * 'niPayload'
networksInsert
    :: Text -- ^ 'niProject'
    -> Network -- ^ 'niPayload'
    -> NetworksInsert
networksInsert pNiProject_ pNiPayload_ =
  NetworksInsert'
    {_niRequestId = Nothing, _niProject = pNiProject_, _niPayload = pNiPayload_}


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
niRequestId :: Lens' NetworksInsert (Maybe Text)
niRequestId
  = lens _niRequestId (\ s a -> s{_niRequestId = a})

-- | Project ID for this request.
niProject :: Lens' NetworksInsert Text
niProject
  = lens _niProject (\ s a -> s{_niProject = a})

-- | Multipart request metadata.
niPayload :: Lens' NetworksInsert Network
niPayload
  = lens _niPayload (\ s a -> s{_niPayload = a})

instance GoogleRequest NetworksInsert where
        type Rs NetworksInsert = Operation
        type Scopes NetworksInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NetworksInsert'{..}
          = go _niProject _niRequestId (Just AltJSON)
              _niPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy NetworksInsertResource)
                      mempty
