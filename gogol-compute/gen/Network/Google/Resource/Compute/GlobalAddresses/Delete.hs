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
-- Module      : Network.Google.Resource.Compute.GlobalAddresses.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified address resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalAddresses.delete@.
module Network.Google.Resource.Compute.GlobalAddresses.Delete
    (
    -- * REST Resource
      GlobalAddressesDeleteResource

    -- * Creating a Request
    , globalAddressesDelete
    , GlobalAddressesDelete

    -- * Request Lenses
    , gadRequestId
    , gadProject
    , gadAddress
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.globalAddresses.delete@ method which the
-- 'GlobalAddressesDelete' request conforms to.
type GlobalAddressesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "addresses" :>
                 Capture "address" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified address resource.
--
-- /See:/ 'globalAddressesDelete' smart constructor.
data GlobalAddressesDelete =
  GlobalAddressesDelete'
    { _gadRequestId :: !(Maybe Text)
    , _gadProject   :: !Text
    , _gadAddress   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GlobalAddressesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gadRequestId'
--
-- * 'gadProject'
--
-- * 'gadAddress'
globalAddressesDelete
    :: Text -- ^ 'gadProject'
    -> Text -- ^ 'gadAddress'
    -> GlobalAddressesDelete
globalAddressesDelete pGadProject_ pGadAddress_ =
  GlobalAddressesDelete'
    { _gadRequestId = Nothing
    , _gadProject = pGadProject_
    , _gadAddress = pGadAddress_
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
gadRequestId :: Lens' GlobalAddressesDelete (Maybe Text)
gadRequestId
  = lens _gadRequestId (\ s a -> s{_gadRequestId = a})

-- | Project ID for this request.
gadProject :: Lens' GlobalAddressesDelete Text
gadProject
  = lens _gadProject (\ s a -> s{_gadProject = a})

-- | Name of the address resource to delete.
gadAddress :: Lens' GlobalAddressesDelete Text
gadAddress
  = lens _gadAddress (\ s a -> s{_gadAddress = a})

instance GoogleRequest GlobalAddressesDelete where
        type Rs GlobalAddressesDelete = Operation
        type Scopes GlobalAddressesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient GlobalAddressesDelete'{..}
          = go _gadProject _gadAddress _gadRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalAddressesDeleteResource)
                      mempty
