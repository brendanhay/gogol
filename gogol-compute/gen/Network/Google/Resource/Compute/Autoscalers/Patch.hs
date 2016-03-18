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
-- Module      : Network.Google.Resource.Compute.Autoscalers.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an autoscaler in the specified project using the data included
-- in the request. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.autoscalers.patch@.
module Network.Google.Resource.Compute.Autoscalers.Patch
    (
    -- * REST Resource
      AutoscalersPatchResource

    -- * Creating a Request
    , autoscalersPatch
    , AutoscalersPatch

    -- * Request Lenses
    , apProject
    , apZone
    , apPayload
    , apAutoscaler
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.autoscalers.patch@ method which the
-- 'AutoscalersPatch' request conforms to.
type AutoscalersPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   QueryParam "autoscaler" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Autoscaler :> Patch '[JSON] Operation

-- | Updates an autoscaler in the specified project using the data included
-- in the request. This method supports patch semantics.
--
-- /See:/ 'autoscalersPatch' smart constructor.
data AutoscalersPatch = AutoscalersPatch
    { _apProject    :: !Text
    , _apZone       :: !Text
    , _apPayload    :: !Autoscaler
    , _apAutoscaler :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apProject'
--
-- * 'apZone'
--
-- * 'apPayload'
--
-- * 'apAutoscaler'
autoscalersPatch
    :: Text -- ^ 'apProject'
    -> Text -- ^ 'apZone'
    -> Autoscaler -- ^ 'apPayload'
    -> Text -- ^ 'apAutoscaler'
    -> AutoscalersPatch
autoscalersPatch pApProject_ pApZone_ pApPayload_ pApAutoscaler_ =
    AutoscalersPatch
    { _apProject = pApProject_
    , _apZone = pApZone_
    , _apPayload = pApPayload_
    , _apAutoscaler = pApAutoscaler_
    }

-- | Project ID for this request.
apProject :: Lens' AutoscalersPatch Text
apProject
  = lens _apProject (\ s a -> s{_apProject = a})

-- | Name of the zone for this request.
apZone :: Lens' AutoscalersPatch Text
apZone = lens _apZone (\ s a -> s{_apZone = a})

-- | Multipart request metadata.
apPayload :: Lens' AutoscalersPatch Autoscaler
apPayload
  = lens _apPayload (\ s a -> s{_apPayload = a})

-- | Name of the autoscaler to update.
apAutoscaler :: Lens' AutoscalersPatch Text
apAutoscaler
  = lens _apAutoscaler (\ s a -> s{_apAutoscaler = a})

instance GoogleRequest AutoscalersPatch where
        type Rs AutoscalersPatch = Operation
        requestClient AutoscalersPatch{..}
          = go _apProject _apZone (Just _apAutoscaler)
              (Just AltJSON)
              _apPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersPatchResource)
                      mempty
