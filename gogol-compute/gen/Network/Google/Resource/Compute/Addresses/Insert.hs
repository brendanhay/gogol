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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an address resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAddressesInsert@.
module Network.Google.Resource.Compute.Addresses.Insert
    (
    -- * REST Resource
      AddressesInsertResource

    -- * Creating a Request
    , addressesInsert'
    , AddressesInsert'

    -- * Request Lenses
    , aiProject
    , aiPayload
    , aiRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAddressesInsert@ method which the
-- 'AddressesInsert'' request conforms to.
type AddressesInsertResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "addresses" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Address :> Post '[JSON] Operation

-- | Creates an address resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'addressesInsert'' smart constructor.
data AddressesInsert' = AddressesInsert'
    { _aiProject :: !Text
    , _aiPayload :: !Address
    , _aiRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiProject'
--
-- * 'aiPayload'
--
-- * 'aiRegion'
addressesInsert'
    :: Text -- ^ 'project'
    -> Address -- ^ 'payload'
    -> Text -- ^ 'region'
    -> AddressesInsert'
addressesInsert' pAiProject_ pAiPayload_ pAiRegion_ =
    AddressesInsert'
    { _aiProject = pAiProject_
    , _aiPayload = pAiPayload_
    , _aiRegion = pAiRegion_
    }

-- | Project ID for this request.
aiProject :: Lens' AddressesInsert' Text
aiProject
  = lens _aiProject (\ s a -> s{_aiProject = a})

-- | Multipart request metadata.
aiPayload :: Lens' AddressesInsert' Address
aiPayload
  = lens _aiPayload (\ s a -> s{_aiPayload = a})

-- | The name of the region for this request.
aiRegion :: Lens' AddressesInsert' Text
aiRegion = lens _aiRegion (\ s a -> s{_aiRegion = a})

instance GoogleRequest AddressesInsert' where
        type Rs AddressesInsert' = Operation
        requestClient AddressesInsert'{..}
          = go _aiProject _aiRegion (Just AltJSON) _aiPayload
              compute
          where go
                  = buildClient
                      (Proxy :: Proxy AddressesInsertResource)
                      mempty
