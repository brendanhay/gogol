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
-- Module      : Network.Google.Resource.Compute.ZoneOperations.Wait
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Waits for the specified Operation resource to return as \`DONE\` or for
-- the request to approach the 2 minute deadline, and retrieves the
-- specified Operation resource. This method differs from the \`GET\`
-- method in that it waits for no more than the default deadline (2
-- minutes) and then returns the current state of the operation, which
-- might be \`DONE\` or still in progress. This method is called on a
-- best-effort basis. Specifically: - In uncommon cases, when the server is
-- overloaded, the request might return before the default deadline is
-- reached, or might return after zero seconds. - If the default deadline
-- is reached, there is no guarantee that the operation is actually done
-- when the method returns. Be prepared to retry if the operation is not
-- \`DONE\`.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.zoneOperations.wait@.
module Network.Google.Resource.Compute.ZoneOperations.Wait
    (
    -- * REST Resource
      ZoneOperationsWaitResource

    -- * Creating a Request
    , zoneOperationsWait
    , ZoneOperationsWait

    -- * Request Lenses
    , zowProject
    , zowOperation
    , zowZone
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.zoneOperations.wait@ method which the
-- 'ZoneOperationsWait' request conforms to.
type ZoneOperationsWaitResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "operations" :>
                   Capture "operation" Text :>
                     "wait" :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Waits for the specified Operation resource to return as \`DONE\` or for
-- the request to approach the 2 minute deadline, and retrieves the
-- specified Operation resource. This method differs from the \`GET\`
-- method in that it waits for no more than the default deadline (2
-- minutes) and then returns the current state of the operation, which
-- might be \`DONE\` or still in progress. This method is called on a
-- best-effort basis. Specifically: - In uncommon cases, when the server is
-- overloaded, the request might return before the default deadline is
-- reached, or might return after zero seconds. - If the default deadline
-- is reached, there is no guarantee that the operation is actually done
-- when the method returns. Be prepared to retry if the operation is not
-- \`DONE\`.
--
-- /See:/ 'zoneOperationsWait' smart constructor.
data ZoneOperationsWait =
  ZoneOperationsWait'
    { _zowProject :: !Text
    , _zowOperation :: !Text
    , _zowZone :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ZoneOperationsWait' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zowProject'
--
-- * 'zowOperation'
--
-- * 'zowZone'
zoneOperationsWait
    :: Text -- ^ 'zowProject'
    -> Text -- ^ 'zowOperation'
    -> Text -- ^ 'zowZone'
    -> ZoneOperationsWait
zoneOperationsWait pZowProject_ pZowOperation_ pZowZone_ =
  ZoneOperationsWait'
    { _zowProject = pZowProject_
    , _zowOperation = pZowOperation_
    , _zowZone = pZowZone_
    }


-- | Project ID for this request.
zowProject :: Lens' ZoneOperationsWait Text
zowProject
  = lens _zowProject (\ s a -> s{_zowProject = a})

-- | Name of the Operations resource to return.
zowOperation :: Lens' ZoneOperationsWait Text
zowOperation
  = lens _zowOperation (\ s a -> s{_zowOperation = a})

-- | Name of the zone for this request.
zowZone :: Lens' ZoneOperationsWait Text
zowZone = lens _zowZone (\ s a -> s{_zowZone = a})

instance GoogleRequest ZoneOperationsWait where
        type Rs ZoneOperationsWait = Operation
        type Scopes ZoneOperationsWait =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ZoneOperationsWait'{..}
          = go _zowProject _zowZone _zowOperation
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ZoneOperationsWaitResource)
                      mempty
