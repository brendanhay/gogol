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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified address resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalAddressesDelete@.
module Network.Google.Resource.Compute.GlobalAddresses.Delete
    (
    -- * REST Resource
      GlobalAddressesDeleteResource

    -- * Creating a Request
    , globalAddressesDelete'
    , GlobalAddressesDelete'

    -- * Request Lenses
    , gadProject
    , gadAddress
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalAddressesDelete@ method which the
-- 'GlobalAddressesDelete'' request conforms to.
type GlobalAddressesDeleteResource =
     Capture "project" Text :>
       "global" :>
         "addresses" :>
           Capture "address" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified address resource.
--
-- /See:/ 'globalAddressesDelete'' smart constructor.
data GlobalAddressesDelete' = GlobalAddressesDelete'
    { _gadProject :: !Text
    , _gadAddress :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalAddressesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gadProject'
--
-- * 'gadAddress'
globalAddressesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'address'
    -> GlobalAddressesDelete'
globalAddressesDelete' pGadProject_ pGadAddress_ =
    GlobalAddressesDelete'
    { _gadProject = pGadProject_
    , _gadAddress = pGadAddress_
    }

-- | Project ID for this request.
gadProject :: Lens' GlobalAddressesDelete' Text
gadProject
  = lens _gadProject (\ s a -> s{_gadProject = a})

-- | Name of the address resource to delete.
gadAddress :: Lens' GlobalAddressesDelete' Text
gadAddress
  = lens _gadAddress (\ s a -> s{_gadAddress = a})

instance GoogleRequest GlobalAddressesDelete' where
        type Rs GlobalAddressesDelete' = Operation
        requestClient GlobalAddressesDelete'{..}
          = go _gadProject _gadAddress (Just AltJSON) compute
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalAddressesDeleteResource)
                      mempty
