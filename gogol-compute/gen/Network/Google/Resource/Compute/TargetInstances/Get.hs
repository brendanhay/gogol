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
-- Module      : Network.Google.Resource.Compute.TargetInstances.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified TargetInstance resource. Get a list of available
-- target instances by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetInstances.get@.
module Network.Google.Resource.Compute.TargetInstances.Get
    (
    -- * REST Resource
      TargetInstancesGetResource

    -- * Creating a Request
    , targetInstancesGet
    , TargetInstancesGet

    -- * Request Lenses
    , tigProject
    , tigTargetInstance
    , tigZone
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetInstances.get@ method which the
-- 'TargetInstancesGet' request conforms to.
type TargetInstancesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "targetInstances" :>
                   Capture "targetInstance" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] TargetInstance

-- | Returns the specified TargetInstance resource. Get a list of available
-- target instances by making a list() request.
--
-- /See:/ 'targetInstancesGet' smart constructor.
data TargetInstancesGet = TargetInstancesGet'
    { _tigProject        :: !Text
    , _tigTargetInstance :: !Text
    , _tigZone           :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstancesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tigProject'
--
-- * 'tigTargetInstance'
--
-- * 'tigZone'
targetInstancesGet
    :: Text -- ^ 'tigProject'
    -> Text -- ^ 'tigTargetInstance'
    -> Text -- ^ 'tigZone'
    -> TargetInstancesGet
targetInstancesGet pTigProject_ pTigTargetInstance_ pTigZone_ =
    TargetInstancesGet'
    { _tigProject = pTigProject_
    , _tigTargetInstance = pTigTargetInstance_
    , _tigZone = pTigZone_
    }

-- | Project ID for this request.
tigProject :: Lens' TargetInstancesGet Text
tigProject
  = lens _tigProject (\ s a -> s{_tigProject = a})

-- | Name of the TargetInstance resource to return.
tigTargetInstance :: Lens' TargetInstancesGet Text
tigTargetInstance
  = lens _tigTargetInstance
      (\ s a -> s{_tigTargetInstance = a})

-- | Name of the zone scoping this request.
tigZone :: Lens' TargetInstancesGet Text
tigZone = lens _tigZone (\ s a -> s{_tigZone = a})

instance GoogleRequest TargetInstancesGet where
        type Rs TargetInstancesGet = TargetInstance
        type Scopes TargetInstancesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetInstancesGet'{..}
          = go _tigProject _tigZone _tigTargetInstance
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetInstancesGetResource)
                      mempty
