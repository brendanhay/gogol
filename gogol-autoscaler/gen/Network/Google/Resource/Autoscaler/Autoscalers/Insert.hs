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
-- Module      : Network.Google.Resource.Autoscaler.Autoscalers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds new Autoscaler resource.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @AutoscalerAutoscalersInsert@.
module Network.Google.Resource.Autoscaler.Autoscalers.Insert
    (
    -- * REST Resource
      AutoscalersInsertResource

    -- * Creating a Request
    , autoscalersInsert'
    , AutoscalersInsert'

    -- * Request Lenses
    , aiProject
    , aiZone
    , aiPayload
    ) where

import           Network.Google.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @AutoscalerAutoscalersInsert@ method which the
-- 'AutoscalersInsert'' request conforms to.
type AutoscalersInsertResource =
     "projects" :>
       Capture "project" Text :>
         "zones" :>
           Capture "zone" Text :>
             "autoscalers" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Autoscaler :> Post '[JSON] Operation

-- | Adds new Autoscaler resource.
--
-- /See:/ 'autoscalersInsert'' smart constructor.
data AutoscalersInsert' = AutoscalersInsert'
    { _aiProject :: !Text
    , _aiZone    :: !Text
    , _aiPayload :: !Autoscaler
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiProject'
--
-- * 'aiZone'
--
-- * 'aiPayload'
autoscalersInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Autoscaler -- ^ 'payload'
    -> AutoscalersInsert'
autoscalersInsert' pAiProject_ pAiZone_ pAiPayload_ =
    AutoscalersInsert'
    { _aiProject = pAiProject_
    , _aiZone = pAiZone_
    , _aiPayload = pAiPayload_
    }

-- | Project ID of Autoscaler resource.
aiProject :: Lens' AutoscalersInsert' Text
aiProject
  = lens _aiProject (\ s a -> s{_aiProject = a})

-- | Zone name of Autoscaler resource.
aiZone :: Lens' AutoscalersInsert' Text
aiZone = lens _aiZone (\ s a -> s{_aiZone = a})

-- | Multipart request metadata.
aiPayload :: Lens' AutoscalersInsert' Autoscaler
aiPayload
  = lens _aiPayload (\ s a -> s{_aiPayload = a})

instance GoogleRequest AutoscalersInsert' where
        type Rs AutoscalersInsert' = Operation
        requestClient AutoscalersInsert'{..}
          = go _aiProject _aiZone (Just AltJSON) _aiPayload
              autoscalerService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersInsertResource)
                      mempty
