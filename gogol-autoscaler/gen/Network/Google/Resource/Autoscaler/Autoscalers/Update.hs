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
-- Module      : Network.Google.Resource.Autoscaler.Autoscalers.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the entire content of the Autoscaler resource.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @autoscaler.autoscalers.update@.
module Network.Google.Resource.Autoscaler.Autoscalers.Update
    (
    -- * REST Resource
      AutoscalersUpdateResource

    -- * Creating a Request
    , autoscalersUpdate
    , AutoscalersUpdate

    -- * Request Lenses
    , auProject
    , auZone
    , auPayload
    , auAutoscaler
    ) where

import           Network.Google.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @autoscaler.autoscalers.update@ method which the
-- 'AutoscalersUpdate' request conforms to.
type AutoscalersUpdateResource =
     "autoscaler" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   Capture "autoscaler" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Autoscaler :> Put '[JSON] Operation

-- | Update the entire content of the Autoscaler resource.
--
-- /See:/ 'autoscalersUpdate' smart constructor.
data AutoscalersUpdate = AutoscalersUpdate'
    { _auProject    :: !Text
    , _auZone       :: !Text
    , _auPayload    :: !Autoscaler
    , _auAutoscaler :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auProject'
--
-- * 'auZone'
--
-- * 'auPayload'
--
-- * 'auAutoscaler'
autoscalersUpdate
    :: Text -- ^ 'auProject'
    -> Text -- ^ 'auZone'
    -> Autoscaler -- ^ 'auPayload'
    -> Text -- ^ 'auAutoscaler'
    -> AutoscalersUpdate
autoscalersUpdate pAuProject_ pAuZone_ pAuPayload_ pAuAutoscaler_ =
    AutoscalersUpdate'
    { _auProject = pAuProject_
    , _auZone = pAuZone_
    , _auPayload = pAuPayload_
    , _auAutoscaler = pAuAutoscaler_
    }

-- | Project ID of Autoscaler resource.
auProject :: Lens' AutoscalersUpdate Text
auProject
  = lens _auProject (\ s a -> s{_auProject = a})

-- | Zone name of Autoscaler resource.
auZone :: Lens' AutoscalersUpdate Text
auZone = lens _auZone (\ s a -> s{_auZone = a})

-- | Multipart request metadata.
auPayload :: Lens' AutoscalersUpdate Autoscaler
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

-- | Name of the Autoscaler resource.
auAutoscaler :: Lens' AutoscalersUpdate Text
auAutoscaler
  = lens _auAutoscaler (\ s a -> s{_auAutoscaler = a})

instance GoogleRequest AutoscalersUpdate where
        type Rs AutoscalersUpdate = Operation
        type Scopes AutoscalersUpdate =
             '["https://www.googleapis.com/auth/compute"]
        requestClient AutoscalersUpdate'{..}
          = go _auProject _auZone _auAutoscaler (Just AltJSON)
              _auPayload
              autoscalerService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersUpdateResource)
                      mempty
