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
-- Module      : Network.Google.Resource.Compute.Autoscalers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified autoscaler resource. Gets a list of available
-- autoscalers by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.autoscalers.get@.
module Network.Google.Resource.Compute.Autoscalers.Get
    (
    -- * REST Resource
      AutoscalersGetResource

    -- * Creating a Request
    , autoscalersGet
    , AutoscalersGet

    -- * Request Lenses
    , agProject
    , agZone
    , agAutoscaler
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.autoscalers.get@ method which the
-- 'AutoscalersGet' request conforms to.
type AutoscalersGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   Capture "autoscaler" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Autoscaler

-- | Returns the specified autoscaler resource. Gets a list of available
-- autoscalers by making a list() request.
--
-- /See:/ 'autoscalersGet' smart constructor.
data AutoscalersGet =
  AutoscalersGet'
    { _agProject    :: !Text
    , _agZone       :: !Text
    , _agAutoscaler :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AutoscalersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agProject'
--
-- * 'agZone'
--
-- * 'agAutoscaler'
autoscalersGet
    :: Text -- ^ 'agProject'
    -> Text -- ^ 'agZone'
    -> Text -- ^ 'agAutoscaler'
    -> AutoscalersGet
autoscalersGet pAgProject_ pAgZone_ pAgAutoscaler_ =
  AutoscalersGet'
    { _agProject = pAgProject_
    , _agZone = pAgZone_
    , _agAutoscaler = pAgAutoscaler_
    }

-- | Project ID for this request.
agProject :: Lens' AutoscalersGet Text
agProject
  = lens _agProject (\ s a -> s{_agProject = a})

-- | Name of the zone for this request.
agZone :: Lens' AutoscalersGet Text
agZone = lens _agZone (\ s a -> s{_agZone = a})

-- | Name of the autoscaler to return.
agAutoscaler :: Lens' AutoscalersGet Text
agAutoscaler
  = lens _agAutoscaler (\ s a -> s{_agAutoscaler = a})

instance GoogleRequest AutoscalersGet where
        type Rs AutoscalersGet = Autoscaler
        type Scopes AutoscalersGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient AutoscalersGet'{..}
          = go _agProject _agZone _agAutoscaler (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy AutoscalersGetResource)
                      mempty
