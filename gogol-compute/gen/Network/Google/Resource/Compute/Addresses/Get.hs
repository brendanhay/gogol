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
-- Returns the specified address resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.addresses.get@.
module Network.Google.Resource.Compute.Addresses.Get
    (
    -- * REST Resource
      AddressesGetResource

    -- * Creating a Request
    , addressesGet
    , AddressesGet

    -- * Request Lenses
    , addProject
    , addAddress
    , addRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.addresses.get@ method which the
-- 'AddressesGet' request conforms to.
type AddressesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "addresses" :>
                   Capture "address" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Address

-- | Returns the specified address resource.
--
-- /See:/ 'addressesGet' smart constructor.
data AddressesGet = AddressesGet
    { _addProject :: !Text
    , _addAddress :: !Text
    , _addRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addProject'
--
-- * 'addAddress'
--
-- * 'addRegion'
addressesGet
    :: Text -- ^ 'addProject'
    -> Text -- ^ 'addAddress'
    -> Text -- ^ 'addRegion'
    -> AddressesGet
addressesGet pAddProject_ pAddAddress_ pAddRegion_ =
    AddressesGet
    { _addProject = pAddProject_
    , _addAddress = pAddAddress_
    , _addRegion = pAddRegion_
    }

-- | Project ID for this request.
addProject :: Lens' AddressesGet Text
addProject
  = lens _addProject (\ s a -> s{_addProject = a})

-- | Name of the address resource to return.
addAddress :: Lens' AddressesGet Text
addAddress
  = lens _addAddress (\ s a -> s{_addAddress = a})

-- | The name of the region for this request.
addRegion :: Lens' AddressesGet Text
addRegion
  = lens _addRegion (\ s a -> s{_addRegion = a})

instance GoogleRequest AddressesGet where
        type Rs AddressesGet = Address
        requestClient AddressesGet{..}
          = go _addProject _addRegion _addAddress
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy AddressesGetResource)
                      mempty
