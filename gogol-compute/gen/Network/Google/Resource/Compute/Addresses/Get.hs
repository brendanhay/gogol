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
-- Module      : Network.Google.Resource.Compute.Addresses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified address resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAddressesGet@.
module Network.Google.Resource.Compute.Addresses.Get
    (
    -- * REST Resource
      AddressesGetResource

    -- * Creating a Request
    , addressesGet'
    , AddressesGet'

    -- * Request Lenses
    , aggProject
    , aggAddress
    , aggRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAddressesGet@ method which the
-- 'AddressesGet'' request conforms to.
type AddressesGetResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "addresses" :>
             Capture "address" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Address

-- | Returns the specified address resource.
--
-- /See:/ 'addressesGet'' smart constructor.
data AddressesGet' = AddressesGet'
    { _aggProject :: !Text
    , _aggAddress :: !Text
    , _aggRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aggProject'
--
-- * 'aggAddress'
--
-- * 'aggRegion'
addressesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'address'
    -> Text -- ^ 'region'
    -> AddressesGet'
addressesGet' pAggProject_ pAggAddress_ pAggRegion_ =
    AddressesGet'
    { _aggProject = pAggProject_
    , _aggAddress = pAggAddress_
    , _aggRegion = pAggRegion_
    }

-- | Project ID for this request.
aggProject :: Lens' AddressesGet' Text
aggProject
  = lens _aggProject (\ s a -> s{_aggProject = a})

-- | Name of the address resource to return.
aggAddress :: Lens' AddressesGet' Text
aggAddress
  = lens _aggAddress (\ s a -> s{_aggAddress = a})

-- | The name of the region for this request.
aggRegion :: Lens' AddressesGet' Text
aggRegion
  = lens _aggRegion (\ s a -> s{_aggRegion = a})

instance GoogleRequest AddressesGet' where
        type Rs AddressesGet' = Address
        requestClient AddressesGet'{..}
          = go _aggProject _aggRegion _aggAddress
              (Just AltJSON)
              compute
          where go
                  = buildClient (Proxy :: Proxy AddressesGetResource)
                      mempty
