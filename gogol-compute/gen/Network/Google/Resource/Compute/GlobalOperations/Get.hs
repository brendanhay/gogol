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
-- Module      : Network.Google.Resource.Compute.GlobalOperations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified Operations resource. Get a list of operations by
-- making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalOperations.get@.
module Network.Google.Resource.Compute.GlobalOperations.Get
    (
    -- * REST Resource
      GlobalOperationsGetResource

    -- * Creating a Request
    , globalOperationsGet
    , GlobalOperationsGet

    -- * Request Lenses
    , gogProject
    , gogOperation
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.globalOperations.get@ method which the
-- 'GlobalOperationsGet' request conforms to.
type GlobalOperationsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "operations" :>
                 Capture "operation" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Retrieves the specified Operations resource. Get a list of operations by
-- making a list() request.
--
-- /See:/ 'globalOperationsGet' smart constructor.
data GlobalOperationsGet = GlobalOperationsGet'
    { _gogProject   :: !Text
    , _gogOperation :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gogProject'
--
-- * 'gogOperation'
globalOperationsGet
    :: Text -- ^ 'gogProject'
    -> Text -- ^ 'gogOperation'
    -> GlobalOperationsGet
globalOperationsGet pGogProject_ pGogOperation_ =
    GlobalOperationsGet'
    { _gogProject = pGogProject_
    , _gogOperation = pGogOperation_
    }

-- | Project ID for this request.
gogProject :: Lens' GlobalOperationsGet Text
gogProject
  = lens _gogProject (\ s a -> s{_gogProject = a})

-- | Name of the Operations resource to return.
gogOperation :: Lens' GlobalOperationsGet Text
gogOperation
  = lens _gogOperation (\ s a -> s{_gogOperation = a})

instance GoogleRequest GlobalOperationsGet where
        type Rs GlobalOperationsGet = Operation
        type Scopes GlobalOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient GlobalOperationsGet'{..}
          = go _gogProject _gogOperation (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalOperationsGetResource)
                      mempty
