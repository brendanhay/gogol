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
-- Module      : Network.Google.Resource.Compute.RegionCommitments.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified commitment resource. Gets a list of available
-- commitments by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionCommitments.get@.
module Network.Google.Resource.Compute.RegionCommitments.Get
    (
    -- * REST Resource
      RegionCommitmentsGetResource

    -- * Creating a Request
    , regionCommitmentsGet
    , RegionCommitmentsGet

    -- * Request Lenses
    , rcgProject
    , rcgRegion
    , rcgCommitment
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionCommitments.get@ method which the
-- 'RegionCommitmentsGet' request conforms to.
type RegionCommitmentsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "commitments" :>
                   Capture "commitment" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Commitment

-- | Returns the specified commitment resource. Gets a list of available
-- commitments by making a list() request.
--
-- /See:/ 'regionCommitmentsGet' smart constructor.
data RegionCommitmentsGet =
  RegionCommitmentsGet'
    { _rcgProject    :: !Text
    , _rcgRegion     :: !Text
    , _rcgCommitment :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RegionCommitmentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcgProject'
--
-- * 'rcgRegion'
--
-- * 'rcgCommitment'
regionCommitmentsGet
    :: Text -- ^ 'rcgProject'
    -> Text -- ^ 'rcgRegion'
    -> Text -- ^ 'rcgCommitment'
    -> RegionCommitmentsGet
regionCommitmentsGet pRcgProject_ pRcgRegion_ pRcgCommitment_ =
  RegionCommitmentsGet'
    { _rcgProject = pRcgProject_
    , _rcgRegion = pRcgRegion_
    , _rcgCommitment = pRcgCommitment_
    }

-- | Project ID for this request.
rcgProject :: Lens' RegionCommitmentsGet Text
rcgProject
  = lens _rcgProject (\ s a -> s{_rcgProject = a})

-- | Name of the region for this request.
rcgRegion :: Lens' RegionCommitmentsGet Text
rcgRegion
  = lens _rcgRegion (\ s a -> s{_rcgRegion = a})

-- | Name of the commitment to return.
rcgCommitment :: Lens' RegionCommitmentsGet Text
rcgCommitment
  = lens _rcgCommitment
      (\ s a -> s{_rcgCommitment = a})

instance GoogleRequest RegionCommitmentsGet where
        type Rs RegionCommitmentsGet = Commitment
        type Scopes RegionCommitmentsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionCommitmentsGet'{..}
          = go _rcgProject _rcgRegion _rcgCommitment
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionCommitmentsGetResource)
                      mempty
