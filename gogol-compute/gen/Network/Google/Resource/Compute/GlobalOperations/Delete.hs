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
-- Module      : Network.Google.Resource.Compute.GlobalOperations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Operations resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalOperations.delete@.
module Network.Google.Resource.Compute.GlobalOperations.Delete
    (
    -- * REST Resource
      GlobalOperationsDeleteResource

    -- * Creating a Request
    , globalOperationsDelete
    , GlobalOperationsDelete

    -- * Request Lenses
    , godProject
    , godOperation
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.globalOperations.delete@ method which the
-- 'GlobalOperationsDelete' request conforms to.
type GlobalOperationsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "operations" :>
                 Capture "operation" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified Operations resource.
--
-- /See:/ 'globalOperationsDelete' smart constructor.
data GlobalOperationsDelete = GlobalOperationsDelete
    { _godProject   :: !Text
    , _godOperation :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalOperationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'godProject'
--
-- * 'godOperation'
globalOperationsDelete
    :: Text -- ^ 'godProject'
    -> Text -- ^ 'godOperation'
    -> GlobalOperationsDelete
globalOperationsDelete pGodProject_ pGodOperation_ =
    GlobalOperationsDelete
    { _godProject = pGodProject_
    , _godOperation = pGodOperation_
    }

-- | Project ID for this request.
godProject :: Lens' GlobalOperationsDelete Text
godProject
  = lens _godProject (\ s a -> s{_godProject = a})

-- | Name of the Operations resource to delete.
godOperation :: Lens' GlobalOperationsDelete Text
godOperation
  = lens _godOperation (\ s a -> s{_godOperation = a})

instance GoogleRequest GlobalOperationsDelete where
        type Rs GlobalOperationsDelete = ()
        requestClient GlobalOperationsDelete{..}
          = go _godProject _godOperation (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalOperationsDeleteResource)
                      mempty
