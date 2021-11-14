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
-- Module      : Network.Google.Resource.Compute.GlobalOperations.Wait
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalOperations.wait@.
module Network.Google.Resource.Compute.GlobalOperations.Wait
    (
    -- * REST Resource
      GlobalOperationsWaitResource

    -- * Creating a Request
    , globalOperationsWait
    , GlobalOperationsWait

    -- * Request Lenses
    , gowProject
    , gowOperation
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalOperations.wait@ method which the
-- 'GlobalOperationsWait' request conforms to.
type GlobalOperationsWaitResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
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
-- /See:/ 'globalOperationsWait' smart constructor.
data GlobalOperationsWait =
  GlobalOperationsWait'
    { _gowProject :: !Text
    , _gowOperation :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalOperationsWait' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gowProject'
--
-- * 'gowOperation'
globalOperationsWait
    :: Text -- ^ 'gowProject'
    -> Text -- ^ 'gowOperation'
    -> GlobalOperationsWait
globalOperationsWait pGowProject_ pGowOperation_ =
  GlobalOperationsWait'
    {_gowProject = pGowProject_, _gowOperation = pGowOperation_}


-- | Project ID for this request.
gowProject :: Lens' GlobalOperationsWait Text
gowProject
  = lens _gowProject (\ s a -> s{_gowProject = a})

-- | Name of the Operations resource to return.
gowOperation :: Lens' GlobalOperationsWait Text
gowOperation
  = lens _gowOperation (\ s a -> s{_gowOperation = a})

instance GoogleRequest GlobalOperationsWait where
        type Rs GlobalOperationsWait = Operation
        type Scopes GlobalOperationsWait =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient GlobalOperationsWait'{..}
          = go _gowProject _gowOperation (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalOperationsWaitResource)
                      mempty
