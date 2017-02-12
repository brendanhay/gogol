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
-- Module      : Network.Google.Resource.Compute.RegionAutoscalers.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an autoscaler in the specified project using the data included
-- in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionAutoscalers.insert@.
module Network.Google.Resource.Compute.RegionAutoscalers.Insert
    (
    -- * REST Resource
      RegionAutoscalersInsertResource

    -- * Creating a Request
    , regionAutoscalersInsert
    , RegionAutoscalersInsert

    -- * Request Lenses
    , raiProject
    , raiPayload
    , raiRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionAutoscalers.insert@ method which the
-- 'RegionAutoscalersInsert' request conforms to.
type RegionAutoscalersInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "autoscalers" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Autoscaler :> Post '[JSON] Operation

-- | Creates an autoscaler in the specified project using the data included
-- in the request.
--
-- /See:/ 'regionAutoscalersInsert' smart constructor.
data RegionAutoscalersInsert = RegionAutoscalersInsert'
    { _raiProject :: !Text
    , _raiPayload :: !Autoscaler
    , _raiRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionAutoscalersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raiProject'
--
-- * 'raiPayload'
--
-- * 'raiRegion'
regionAutoscalersInsert
    :: Text -- ^ 'raiProject'
    -> Autoscaler -- ^ 'raiPayload'
    -> Text -- ^ 'raiRegion'
    -> RegionAutoscalersInsert
regionAutoscalersInsert pRaiProject_ pRaiPayload_ pRaiRegion_ =
    RegionAutoscalersInsert'
    { _raiProject = pRaiProject_
    , _raiPayload = pRaiPayload_
    , _raiRegion = pRaiRegion_
    }

-- | Project ID for this request.
raiProject :: Lens' RegionAutoscalersInsert Text
raiProject
  = lens _raiProject (\ s a -> s{_raiProject = a})

-- | Multipart request metadata.
raiPayload :: Lens' RegionAutoscalersInsert Autoscaler
raiPayload
  = lens _raiPayload (\ s a -> s{_raiPayload = a})

-- | Name of the region scoping this request.
raiRegion :: Lens' RegionAutoscalersInsert Text
raiRegion
  = lens _raiRegion (\ s a -> s{_raiRegion = a})

instance GoogleRequest RegionAutoscalersInsert where
        type Rs RegionAutoscalersInsert = Operation
        type Scopes RegionAutoscalersInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionAutoscalersInsert'{..}
          = go _raiProject _raiRegion (Just AltJSON)
              _raiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionAutoscalersInsertResource)
                      mempty
