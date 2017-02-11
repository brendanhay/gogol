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
-- Module      : Network.Google.Resource.Compute.RegionAutoscalers.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an autoscaler in the specified project using the data included
-- in the request. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionAutoscalers.patch@.
module Network.Google.Resource.Compute.RegionAutoscalers.Patch
    (
    -- * REST Resource
      RegionAutoscalersPatchResource

    -- * Creating a Request
    , regionAutoscalersPatch
    , RegionAutoscalersPatch

    -- * Request Lenses
    , rapProject
    , rapPayload
    , rapAutoscaler
    , rapRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionAutoscalers.patch@ method which the
-- 'RegionAutoscalersPatch' request conforms to.
type RegionAutoscalersPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "autoscalers" :>
                   QueryParam "autoscaler" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Autoscaler :> Patch '[JSON] Operation

-- | Updates an autoscaler in the specified project using the data included
-- in the request. This method supports patch semantics.
--
-- /See:/ 'regionAutoscalersPatch' smart constructor.
data RegionAutoscalersPatch = RegionAutoscalersPatch'
    { _rapProject    :: !Text
    , _rapPayload    :: !Autoscaler
    , _rapAutoscaler :: !Text
    , _rapRegion     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionAutoscalersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rapProject'
--
-- * 'rapPayload'
--
-- * 'rapAutoscaler'
--
-- * 'rapRegion'
regionAutoscalersPatch
    :: Text -- ^ 'rapProject'
    -> Autoscaler -- ^ 'rapPayload'
    -> Text -- ^ 'rapAutoscaler'
    -> Text -- ^ 'rapRegion'
    -> RegionAutoscalersPatch
regionAutoscalersPatch pRapProject_ pRapPayload_ pRapAutoscaler_ pRapRegion_ =
    RegionAutoscalersPatch'
    { _rapProject = pRapProject_
    , _rapPayload = pRapPayload_
    , _rapAutoscaler = pRapAutoscaler_
    , _rapRegion = pRapRegion_
    }

-- | Project ID for this request.
rapProject :: Lens' RegionAutoscalersPatch Text
rapProject
  = lens _rapProject (\ s a -> s{_rapProject = a})

-- | Multipart request metadata.
rapPayload :: Lens' RegionAutoscalersPatch Autoscaler
rapPayload
  = lens _rapPayload (\ s a -> s{_rapPayload = a})

-- | Name of the autoscaler to update.
rapAutoscaler :: Lens' RegionAutoscalersPatch Text
rapAutoscaler
  = lens _rapAutoscaler
      (\ s a -> s{_rapAutoscaler = a})

-- | Name of the region scoping this request.
rapRegion :: Lens' RegionAutoscalersPatch Text
rapRegion
  = lens _rapRegion (\ s a -> s{_rapRegion = a})

instance GoogleRequest RegionAutoscalersPatch where
        type Rs RegionAutoscalersPatch = Operation
        type Scopes RegionAutoscalersPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionAutoscalersPatch'{..}
          = go _rapProject _rapRegion (Just _rapAutoscaler)
              (Just AltJSON)
              _rapPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionAutoscalersPatchResource)
                      mempty
