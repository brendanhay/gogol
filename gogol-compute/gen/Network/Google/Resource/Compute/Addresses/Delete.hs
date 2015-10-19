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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified address resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAddressesDelete@.
module Network.Google.Resource.Compute.Addresses.Delete
    (
    -- * REST Resource
      AddressesDeleteResource

    -- * Creating a Request
    , addressesDelete'
    , AddressesDelete'

    -- * Request Lenses
    , addProject
    , addAddress
    , addRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAddressesDelete@ method which the
-- 'AddressesDelete'' request conforms to.
type AddressesDeleteResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "addresses" :>
             Capture "address" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified address resource.
--
-- /See:/ 'addressesDelete'' smart constructor.
data AddressesDelete' = AddressesDelete'
    { _addProject :: !Text
    , _addAddress :: !Text
    , _addRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addProject'
--
-- * 'addAddress'
--
-- * 'addRegion'
addressesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'address'
    -> Text -- ^ 'region'
    -> AddressesDelete'
addressesDelete' pAddProject_ pAddAddress_ pAddRegion_ =
    AddressesDelete'
    { _addProject = pAddProject_
    , _addAddress = pAddAddress_
    , _addRegion = pAddRegion_
    }

-- | Project ID for this request.
addProject :: Lens' AddressesDelete' Text
addProject
  = lens _addProject (\ s a -> s{_addProject = a})

-- | Name of the address resource to delete.
addAddress :: Lens' AddressesDelete' Text
addAddress
  = lens _addAddress (\ s a -> s{_addAddress = a})

-- | The name of the region for this request.
addRegion :: Lens' AddressesDelete' Text
addRegion
  = lens _addRegion (\ s a -> s{_addRegion = a})

instance GoogleRequest AddressesDelete' where
        type Rs AddressesDelete' = Operation
        requestClient AddressesDelete'{..}
          = go _addProject _addRegion _addAddress
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AddressesDeleteResource)
                      mempty
