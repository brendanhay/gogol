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
-- Module      : Network.Google.Resource.Autoscaler.Autoscalers.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the entire content of the Autoscaler resource. This method
-- supports patch semantics.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @autoscaler.autoscalers.patch@.
module Network.Google.Resource.Autoscaler.Autoscalers.Patch
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

import           Network.Google.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @autoscaler.autoscalers.patch@ method which the
-- 'AutoscalersPatch' request conforms to.
type AutoscalersPatchResource =
     "autoscaler" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   Capture "autoscaler" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Autoscaler :> Patch '[JSON] Operation

-- | Update the entire content of the Autoscaler resource. This method
-- supports patch semantics.
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

-- | Project ID of Autoscaler resource.
apProject :: Lens' AutoscalersPatch Text
apProject
  = lens _apProject (\ s a -> s{_apProject = a})

-- | Zone name of Autoscaler resource.
apZone :: Lens' AutoscalersPatch Text
apZone = lens _apZone (\ s a -> s{_apZone = a})

-- | Multipart request metadata.
apPayload :: Lens' AutoscalersPatch Autoscaler
apPayload
  = lens _apPayload (\ s a -> s{_apPayload = a})

-- | Name of the Autoscaler resource.
apAutoscaler :: Lens' AutoscalersPatch Text
apAutoscaler
  = lens _apAutoscaler (\ s a -> s{_apAutoscaler = a})

instance GoogleRequest AutoscalersPatch where
        type Rs AutoscalersPatch = Operation
        type Scopes AutoscalersPatch =
             '["https://www.googleapis.com/auth/compute"]
        requestClient AutoscalersPatch{..}
          = go _apProject _apZone _apAutoscaler (Just AltJSON)
              _apPayload
              autoscalerService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersPatchResource)
                      mempty
