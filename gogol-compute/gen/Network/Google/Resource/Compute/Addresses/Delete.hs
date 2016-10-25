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
-- Module      : Network.Google.Resource.Compute.Addresses.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified address resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.addresses.delete@.
module Network.Google.Resource.Compute.Addresses.Delete
    (
    -- * REST Resource
      AddressesDeleteResource

    -- * Creating a Request
    , addressesDelete
    , AddressesDelete

    -- * Request Lenses
    , adddProject
    , adddAddress
    , adddRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.addresses.delete@ method which the
-- 'AddressesDelete' request conforms to.
type AddressesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "addresses" :>
                   Capture "address" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified address resource.
--
-- /See:/ 'addressesDelete' smart constructor.
data AddressesDelete = AddressesDelete'
    { _adddProject :: !Text
    , _adddAddress :: !Text
    , _adddRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adddProject'
--
-- * 'adddAddress'
--
-- * 'adddRegion'
addressesDelete
    :: Text -- ^ 'adddProject'
    -> Text -- ^ 'adddAddress'
    -> Text -- ^ 'adddRegion'
    -> AddressesDelete
addressesDelete pAdddProject_ pAdddAddress_ pAdddRegion_ =
    AddressesDelete'
    { _adddProject = pAdddProject_
    , _adddAddress = pAdddAddress_
    , _adddRegion = pAdddRegion_
    }

-- | Project ID for this request.
adddProject :: Lens' AddressesDelete Text
adddProject
  = lens _adddProject (\ s a -> s{_adddProject = a})

-- | Name of the address resource to delete.
adddAddress :: Lens' AddressesDelete Text
adddAddress
  = lens _adddAddress (\ s a -> s{_adddAddress = a})

-- | Name of the region for this request.
adddRegion :: Lens' AddressesDelete Text
adddRegion
  = lens _adddRegion (\ s a -> s{_adddRegion = a})

instance GoogleRequest AddressesDelete where
        type Rs AddressesDelete = Operation
        type Scopes AddressesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient AddressesDelete'{..}
          = go _adddProject _adddRegion _adddAddress
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AddressesDeleteResource)
                      mempty
