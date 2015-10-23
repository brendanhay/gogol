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
-- Module      : Network.Google.Resource.Autoscaler.Autoscalers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified Autoscaler resource.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @autoscaler.autoscalers.get@.
module Network.Google.Resource.Autoscaler.Autoscalers.Get
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

import           Network.Google.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @autoscaler.autoscalers.get@ method which the
-- 'AutoscalersGet' request conforms to.
type AutoscalersGetResource =
     "autoscaler" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   Capture "autoscaler" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Autoscaler

-- | Gets the specified Autoscaler resource.
--
-- /See:/ 'autoscalersGet' smart constructor.
data AutoscalersGet = AutoscalersGet
    { _agProject    :: !Text
    , _agZone       :: !Text
    , _agAutoscaler :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AutoscalersGet
    { _agProject = pAgProject_
    , _agZone = pAgZone_
    , _agAutoscaler = pAgAutoscaler_
    }

-- | Project ID of Autoscaler resource.
agProject :: Lens' AutoscalersGet Text
agProject
  = lens _agProject (\ s a -> s{_agProject = a})

-- | Zone name of Autoscaler resource.
agZone :: Lens' AutoscalersGet Text
agZone = lens _agZone (\ s a -> s{_agZone = a})

-- | Name of the Autoscaler resource.
agAutoscaler :: Lens' AutoscalersGet Text
agAutoscaler
  = lens _agAutoscaler (\ s a -> s{_agAutoscaler = a})

instance GoogleRequest AutoscalersGet where
        type Rs AutoscalersGet = Autoscaler
        requestClient AutoscalersGet{..}
          = go _agProject _agZone _agAutoscaler (Just AltJSON)
              autoscalerService
          where go
                  = buildClient (Proxy :: Proxy AutoscalersGetResource)
                      mempty
