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
-- Module      : Network.Google.Resource.Autoscaler.Autoscalers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Autoscaler resource.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @AutoscalerAutoscalersDelete@.
module Network.Google.Resource.Autoscaler.Autoscalers.Delete
    (
    -- * REST Resource
      AutoscalersDeleteResource

    -- * Creating a Request
    , autoscalersDelete'
    , AutoscalersDelete'

    -- * Request Lenses
    , adProject
    , adZone
    , adAutoscaler
    ) where

import           Network.Google.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @AutoscalerAutoscalersDelete@ method which the
-- 'AutoscalersDelete'' request conforms to.
type AutoscalersDeleteResource =
     "projects" :>
       Capture "project" Text :>
         "zones" :>
           Capture "zone" Text :>
             "autoscalers" :>
               Capture "autoscaler" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified Autoscaler resource.
--
-- /See:/ 'autoscalersDelete'' smart constructor.
data AutoscalersDelete' = AutoscalersDelete'
    { _adProject    :: !Text
    , _adZone       :: !Text
    , _adAutoscaler :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adProject'
--
-- * 'adZone'
--
-- * 'adAutoscaler'
autoscalersDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'autoscaler'
    -> AutoscalersDelete'
autoscalersDelete' pAdProject_ pAdZone_ pAdAutoscaler_ =
    AutoscalersDelete'
    { _adProject = pAdProject_
    , _adZone = pAdZone_
    , _adAutoscaler = pAdAutoscaler_
    }

-- | Project ID of Autoscaler resource.
adProject :: Lens' AutoscalersDelete' Text
adProject
  = lens _adProject (\ s a -> s{_adProject = a})

-- | Zone name of Autoscaler resource.
adZone :: Lens' AutoscalersDelete' Text
adZone = lens _adZone (\ s a -> s{_adZone = a})

-- | Name of the Autoscaler resource.
adAutoscaler :: Lens' AutoscalersDelete' Text
adAutoscaler
  = lens _adAutoscaler (\ s a -> s{_adAutoscaler = a})

instance GoogleRequest AutoscalersDelete' where
        type Rs AutoscalersDelete' = Operation
        requestClient AutoscalersDelete'{..}
          = go _adProject _adZone _adAutoscaler (Just AltJSON)
              autoscalerService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersDeleteResource)
                      mempty
