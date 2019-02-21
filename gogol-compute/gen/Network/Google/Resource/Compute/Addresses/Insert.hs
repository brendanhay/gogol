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
-- Module      : Network.Google.Resource.Compute.Addresses.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an address resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.addresses.insert@.
module Network.Google.Resource.Compute.Addresses.Insert
    (
    -- * REST Resource
      AddressesInsertResource

    -- * Creating a Request
    , addressesInsert
    , AddressesInsert

    -- * Request Lenses
    , aiRequestId
    , aiProject
    , aiPayload
    , aiRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.addresses.insert@ method which the
-- 'AddressesInsert' request conforms to.
type AddressesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "addresses" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Address :> Post '[JSON] Operation

-- | Creates an address resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'addressesInsert' smart constructor.
data AddressesInsert =
  AddressesInsert'
    { _aiRequestId :: !(Maybe Text)
    , _aiProject   :: !Text
    , _aiPayload   :: !Address
    , _aiRegion    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddressesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiRequestId'
--
-- * 'aiProject'
--
-- * 'aiPayload'
--
-- * 'aiRegion'
addressesInsert
    :: Text -- ^ 'aiProject'
    -> Address -- ^ 'aiPayload'
    -> Text -- ^ 'aiRegion'
    -> AddressesInsert
addressesInsert pAiProject_ pAiPayload_ pAiRegion_ =
  AddressesInsert'
    { _aiRequestId = Nothing
    , _aiProject = pAiProject_
    , _aiPayload = pAiPayload_
    , _aiRegion = pAiRegion_
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
aiRequestId :: Lens' AddressesInsert (Maybe Text)
aiRequestId
  = lens _aiRequestId (\ s a -> s{_aiRequestId = a})

-- | Project ID for this request.
aiProject :: Lens' AddressesInsert Text
aiProject
  = lens _aiProject (\ s a -> s{_aiProject = a})

-- | Multipart request metadata.
aiPayload :: Lens' AddressesInsert Address
aiPayload
  = lens _aiPayload (\ s a -> s{_aiPayload = a})

-- | Name of the region for this request.
aiRegion :: Lens' AddressesInsert Text
aiRegion = lens _aiRegion (\ s a -> s{_aiRegion = a})

instance GoogleRequest AddressesInsert where
        type Rs AddressesInsert = Operation
        type Scopes AddressesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient AddressesInsert'{..}
          = go _aiProject _aiRegion _aiRequestId (Just AltJSON)
              _aiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AddressesInsertResource)
                      mempty
