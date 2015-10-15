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
-- Module      : Network.Google.Resource.Autoscaler.ZoneOperations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified zone-specific operation resource.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @AutoscalerZoneOperationsDelete@.
module Network.Google.Resource.Autoscaler.ZoneOperations.Delete
    (
    -- * REST Resource
      ZoneOperationsDeleteResource

    -- * Creating a Request
    , zoneOperationsDelete'
    , ZoneOperationsDelete'

    -- * Request Lenses
    , zodProject
    , zodOperation
    , zodZone
    ) where

import           Network.Google.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @AutoscalerZoneOperationsDelete@ method which the
-- 'ZoneOperationsDelete'' request conforms to.
type ZoneOperationsDeleteResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "operations" :>
             Capture "operation" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified zone-specific operation resource.
--
-- /See:/ 'zoneOperationsDelete'' smart constructor.
data ZoneOperationsDelete' = ZoneOperationsDelete'
    { _zodProject   :: !Text
    , _zodOperation :: !Text
    , _zodZone      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneOperationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zodProject'
--
-- * 'zodOperation'
--
-- * 'zodZone'
zoneOperationsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'operation'
    -> Text -- ^ 'zone'
    -> ZoneOperationsDelete'
zoneOperationsDelete' pZodProject_ pZodOperation_ pZodZone_ =
    ZoneOperationsDelete'
    { _zodProject = pZodProject_
    , _zodOperation = pZodOperation_
    , _zodZone = pZodZone_
    }

zodProject :: Lens' ZoneOperationsDelete' Text
zodProject
  = lens _zodProject (\ s a -> s{_zodProject = a})

zodOperation :: Lens' ZoneOperationsDelete' Text
zodOperation
  = lens _zodOperation (\ s a -> s{_zodOperation = a})

zodZone :: Lens' ZoneOperationsDelete' Text
zodZone = lens _zodZone (\ s a -> s{_zodZone = a})

instance GoogleRequest ZoneOperationsDelete' where
        type Rs ZoneOperationsDelete' = ()
        requestClient ZoneOperationsDelete'{..}
          = go _zodProject _zodZone _zodOperation
              (Just AltJSON)
              autoscaler
          where go
                  = buildClient
                      (Proxy :: Proxy ZoneOperationsDeleteResource)
                      mempty
