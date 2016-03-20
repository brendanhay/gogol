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
-- Module      : Network.Google.Resource.Compute.Subnetworks.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a subnetwork in the specified project using the data included in
-- the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.subnetworks.insert@.
module Network.Google.Resource.Compute.Subnetworks.Insert
    (
    -- * REST Resource
      SubnetworksInsertResource

    -- * Creating a Request
    , subnetworksInsert
    , SubnetworksInsert

    -- * Request Lenses
    , siProject
    , siPayload
    , siRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.subnetworks.insert@ method which the
-- 'SubnetworksInsert' request conforms to.
type SubnetworksInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "subnetworks" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Subnetwork :> Post '[JSON] Operation

-- | Creates a subnetwork in the specified project using the data included in
-- the request.
--
-- /See:/ 'subnetworksInsert' smart constructor.
data SubnetworksInsert = SubnetworksInsert
    { _siProject :: !Text
    , _siPayload :: !Subnetwork
    , _siRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubnetworksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siProject'
--
-- * 'siPayload'
--
-- * 'siRegion'
subnetworksInsert
    :: Text -- ^ 'siProject'
    -> Subnetwork -- ^ 'siPayload'
    -> Text -- ^ 'siRegion'
    -> SubnetworksInsert
subnetworksInsert pSiProject_ pSiPayload_ pSiRegion_ =
    SubnetworksInsert
    { _siProject = pSiProject_
    , _siPayload = pSiPayload_
    , _siRegion = pSiRegion_
    }

-- | Project ID for this request.
siProject :: Lens' SubnetworksInsert Text
siProject
  = lens _siProject (\ s a -> s{_siProject = a})

-- | Multipart request metadata.
siPayload :: Lens' SubnetworksInsert Subnetwork
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

-- | Name of the region scoping this request.
siRegion :: Lens' SubnetworksInsert Text
siRegion = lens _siRegion (\ s a -> s{_siRegion = a})

instance GoogleRequest SubnetworksInsert where
        type Rs SubnetworksInsert = Operation
        requestClient SubnetworksInsert{..}
          = go _siProject _siRegion (Just AltJSON) _siPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SubnetworksInsertResource)
                      mempty
