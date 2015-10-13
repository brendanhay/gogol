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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a network resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeNetworksInsert@.
module Network.Google.Resource.Compute.Networks.Insert
    (
    -- * REST Resource
      NetworksInsertResource

    -- * Creating a Request
    , networksInsert'
    , NetworksInsert'

    -- * Request Lenses
    , niProject
    , niPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeNetworksInsert@ method which the
-- 'NetworksInsert'' request conforms to.
type NetworksInsertResource =
     Capture "project" Text :>
       "global" :>
         "networks" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Network :> Post '[JSON] Operation

-- | Creates a network resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'networksInsert'' smart constructor.
data NetworksInsert' = NetworksInsert'
    { _niProject :: !Text
    , _niPayload :: !Network
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niProject'
--
-- * 'niPayload'
networksInsert'
    :: Text -- ^ 'project'
    -> Network -- ^ 'payload'
    -> NetworksInsert'
networksInsert' pNiProject_ pNiPayload_ =
    NetworksInsert'
    { _niProject = pNiProject_
    , _niPayload = pNiPayload_
    }

-- | Project ID for this request.
niProject :: Lens' NetworksInsert' Text
niProject
  = lens _niProject (\ s a -> s{_niProject = a})

-- | Multipart request metadata.
niPayload :: Lens' NetworksInsert' Network
niPayload
  = lens _niPayload (\ s a -> s{_niPayload = a})

instance GoogleRequest NetworksInsert' where
        type Rs NetworksInsert' = Operation
        requestClient NetworksInsert'{..}
          = go _niProject (Just AltJSON) _niPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy NetworksInsertResource)
                      mempty
