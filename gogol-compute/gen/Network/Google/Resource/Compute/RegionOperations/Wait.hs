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
-- Module      : Network.Google.Resource.Compute.RegionOperations.Wait
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
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionOperations.wait@.
module Network.Google.Resource.Compute.RegionOperations.Wait
    (
    -- * REST Resource
      RegionOperationsWaitResource

    -- * Creating a Request
    , regionOperationsWait
    , RegionOperationsWait

    -- * Request Lenses
    , rowProject
    , rowOperation
    , rowRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionOperations.wait@ method which the
-- 'RegionOperationsWait' request conforms to.
type RegionOperationsWaitResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
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
-- /See:/ 'regionOperationsWait' smart constructor.
data RegionOperationsWait =
  RegionOperationsWait'
    { _rowProject :: !Text
    , _rowOperation :: !Text
    , _rowRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionOperationsWait' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rowProject'
--
-- * 'rowOperation'
--
-- * 'rowRegion'
regionOperationsWait
    :: Text -- ^ 'rowProject'
    -> Text -- ^ 'rowOperation'
    -> Text -- ^ 'rowRegion'
    -> RegionOperationsWait
regionOperationsWait pRowProject_ pRowOperation_ pRowRegion_ =
  RegionOperationsWait'
    { _rowProject = pRowProject_
    , _rowOperation = pRowOperation_
    , _rowRegion = pRowRegion_
    }


-- | Project ID for this request.
rowProject :: Lens' RegionOperationsWait Text
rowProject
  = lens _rowProject (\ s a -> s{_rowProject = a})

-- | Name of the Operations resource to return.
rowOperation :: Lens' RegionOperationsWait Text
rowOperation
  = lens _rowOperation (\ s a -> s{_rowOperation = a})

-- | Name of the region for this request.
rowRegion :: Lens' RegionOperationsWait Text
rowRegion
  = lens _rowRegion (\ s a -> s{_rowRegion = a})

instance GoogleRequest RegionOperationsWait where
        type Rs RegionOperationsWait = Operation
        type Scopes RegionOperationsWait =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionOperationsWait'{..}
          = go _rowProject _rowRegion _rowOperation
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionOperationsWaitResource)
                      mempty
