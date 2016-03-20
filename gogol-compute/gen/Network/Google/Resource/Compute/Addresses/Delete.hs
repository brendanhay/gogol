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
    , aaProject
    , aaAddress
    , aaRegion
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
data AddressesDelete = AddressesDelete
    { _aaProject :: !Text
    , _aaAddress :: !Text
    , _aaRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaProject'
--
-- * 'aaAddress'
--
-- * 'aaRegion'
addressesDelete
    :: Text -- ^ 'aaProject'
    -> Text -- ^ 'aaAddress'
    -> Text -- ^ 'aaRegion'
    -> AddressesDelete
addressesDelete pAaProject_ pAaAddress_ pAaRegion_ =
    AddressesDelete
    { _aaProject = pAaProject_
    , _aaAddress = pAaAddress_
    , _aaRegion = pAaRegion_
    }

-- | Project ID for this request.
aaProject :: Lens' AddressesDelete Text
aaProject
  = lens _aaProject (\ s a -> s{_aaProject = a})

-- | Name of the address resource to delete.
aaAddress :: Lens' AddressesDelete Text
aaAddress
  = lens _aaAddress (\ s a -> s{_aaAddress = a})

-- | Name of the region for this request.
aaRegion :: Lens' AddressesDelete Text
aaRegion = lens _aaRegion (\ s a -> s{_aaRegion = a})

instance GoogleRequest AddressesDelete where
        type Rs AddressesDelete = Operation
        requestClient AddressesDelete{..}
          = go _aaProject _aaRegion _aaAddress (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AddressesDeleteResource)
                      mempty
