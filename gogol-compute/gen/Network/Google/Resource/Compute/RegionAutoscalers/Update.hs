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
-- Module      : Network.Google.Resource.Compute.RegionAutoscalers.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an autoscaler in the specified project using the data included
-- in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionAutoscalers.update@.
module Network.Google.Resource.Compute.RegionAutoscalers.Update
    (
    -- * REST Resource
      RegionAutoscalersUpdateResource

    -- * Creating a Request
    , regionAutoscalersUpdate
    , RegionAutoscalersUpdate

    -- * Request Lenses
    , rauProject
    , rauPayload
    , rauAutoscaler
    , rauRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionAutoscalers.update@ method which the
-- 'RegionAutoscalersUpdate' request conforms to.
type RegionAutoscalersUpdateResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "autoscalers" :>
                   QueryParam "autoscaler" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Autoscaler :> Put '[JSON] Operation

-- | Updates an autoscaler in the specified project using the data included
-- in the request.
--
-- /See:/ 'regionAutoscalersUpdate' smart constructor.
data RegionAutoscalersUpdate = RegionAutoscalersUpdate'
    { _rauProject    :: !Text
    , _rauPayload    :: !Autoscaler
    , _rauAutoscaler :: !(Maybe Text)
    , _rauRegion     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionAutoscalersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rauProject'
--
-- * 'rauPayload'
--
-- * 'rauAutoscaler'
--
-- * 'rauRegion'
regionAutoscalersUpdate
    :: Text -- ^ 'rauProject'
    -> Autoscaler -- ^ 'rauPayload'
    -> Text -- ^ 'rauRegion'
    -> RegionAutoscalersUpdate
regionAutoscalersUpdate pRauProject_ pRauPayload_ pRauRegion_ =
    RegionAutoscalersUpdate'
    { _rauProject = pRauProject_
    , _rauPayload = pRauPayload_
    , _rauAutoscaler = Nothing
    , _rauRegion = pRauRegion_
    }

-- | Project ID for this request.
rauProject :: Lens' RegionAutoscalersUpdate Text
rauProject
  = lens _rauProject (\ s a -> s{_rauProject = a})

-- | Multipart request metadata.
rauPayload :: Lens' RegionAutoscalersUpdate Autoscaler
rauPayload
  = lens _rauPayload (\ s a -> s{_rauPayload = a})

-- | Name of the autoscaler to update.
rauAutoscaler :: Lens' RegionAutoscalersUpdate (Maybe Text)
rauAutoscaler
  = lens _rauAutoscaler
      (\ s a -> s{_rauAutoscaler = a})

-- | Name of the region scoping this request.
rauRegion :: Lens' RegionAutoscalersUpdate Text
rauRegion
  = lens _rauRegion (\ s a -> s{_rauRegion = a})

instance GoogleRequest RegionAutoscalersUpdate where
        type Rs RegionAutoscalersUpdate = Operation
        type Scopes RegionAutoscalersUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionAutoscalersUpdate'{..}
          = go _rauProject _rauRegion _rauAutoscaler
              (Just AltJSON)
              _rauPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionAutoscalersUpdateResource)
                      mempty
