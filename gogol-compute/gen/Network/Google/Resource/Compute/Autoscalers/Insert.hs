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
-- Module      : Network.Google.Resource.Compute.Autoscalers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an autoscaler resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAutoscalersInsert@.
module Network.Google.Resource.Compute.Autoscalers.Insert
    (
    -- * REST Resource
      AutoscalersInsertResource

    -- * Creating a Request
    , autoscalersInsert'
    , AutoscalersInsert'

    -- * Request Lenses
    , autProject
    , autZone
    , autPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAutoscalersInsert@ method which the
-- 'AutoscalersInsert'' request conforms to.
type AutoscalersInsertResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "autoscalers" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Autoscaler :> Post '[JSON] Operation

-- | Creates an autoscaler resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'autoscalersInsert'' smart constructor.
data AutoscalersInsert' = AutoscalersInsert'
    { _autProject :: !Text
    , _autZone    :: !Text
    , _autPayload :: !Autoscaler
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'autProject'
--
-- * 'autZone'
--
-- * 'autPayload'
autoscalersInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Autoscaler -- ^ 'payload'
    -> AutoscalersInsert'
autoscalersInsert' pAutProject_ pAutZone_ pAutPayload_ =
    AutoscalersInsert'
    { _autProject = pAutProject_
    , _autZone = pAutZone_
    , _autPayload = pAutPayload_
    }

-- | Name of the project scoping this request.
autProject :: Lens' AutoscalersInsert' Text
autProject
  = lens _autProject (\ s a -> s{_autProject = a})

-- | Name of the zone scoping this request.
autZone :: Lens' AutoscalersInsert' Text
autZone = lens _autZone (\ s a -> s{_autZone = a})

-- | Multipart request metadata.
autPayload :: Lens' AutoscalersInsert' Autoscaler
autPayload
  = lens _autPayload (\ s a -> s{_autPayload = a})

instance GoogleRequest AutoscalersInsert' where
        type Rs AutoscalersInsert' = Operation
        requestClient AutoscalersInsert'{..}
          = go _autProject _autZone (Just AltJSON) _autPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersInsertResource)
                      mempty
