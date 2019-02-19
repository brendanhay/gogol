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
-- Module      : Network.Google.Resource.Compute.TargetPools.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified target pool. Gets a list of available target pools
-- by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetPools.get@.
module Network.Google.Resource.Compute.TargetPools.Get
    (
    -- * REST Resource
      TargetPoolsGetResource

    -- * Creating a Request
    , targetPoolsGet
    , TargetPoolsGet

    -- * Request Lenses
    , tpgProject
    , tpgTargetPool
    , tpgRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetPools.get@ method which the
-- 'TargetPoolsGet' request conforms to.
type TargetPoolsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   Capture "targetPool" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] TargetPool

-- | Returns the specified target pool. Gets a list of available target pools
-- by making a list() request.
--
-- /See:/ 'targetPoolsGet' smart constructor.
data TargetPoolsGet =
  TargetPoolsGet'
    { _tpgProject    :: !Text
    , _tpgTargetPool :: !Text
    , _tpgRegion     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetPoolsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpgProject'
--
-- * 'tpgTargetPool'
--
-- * 'tpgRegion'
targetPoolsGet
    :: Text -- ^ 'tpgProject'
    -> Text -- ^ 'tpgTargetPool'
    -> Text -- ^ 'tpgRegion'
    -> TargetPoolsGet
targetPoolsGet pTpgProject_ pTpgTargetPool_ pTpgRegion_ =
  TargetPoolsGet'
    { _tpgProject = pTpgProject_
    , _tpgTargetPool = pTpgTargetPool_
    , _tpgRegion = pTpgRegion_
    }


-- | Project ID for this request.
tpgProject :: Lens' TargetPoolsGet Text
tpgProject
  = lens _tpgProject (\ s a -> s{_tpgProject = a})

-- | Name of the TargetPool resource to return.
tpgTargetPool :: Lens' TargetPoolsGet Text
tpgTargetPool
  = lens _tpgTargetPool
      (\ s a -> s{_tpgTargetPool = a})

-- | Name of the region scoping this request.
tpgRegion :: Lens' TargetPoolsGet Text
tpgRegion
  = lens _tpgRegion (\ s a -> s{_tpgRegion = a})

instance GoogleRequest TargetPoolsGet where
        type Rs TargetPoolsGet = TargetPool
        type Scopes TargetPoolsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetPoolsGet'{..}
          = go _tpgProject _tpgRegion _tpgTargetPool
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy TargetPoolsGetResource)
                      mempty
