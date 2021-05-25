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
-- Module      : Network.Google.Resource.Compute.GlobalOrganizationOperations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified Operations resource. Gets a list of operations
-- by making a \`list()\` request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalOrganizationOperations.get@.
module Network.Google.Resource.Compute.GlobalOrganizationOperations.Get
    (
    -- * REST Resource
      GlobalOrganizationOperationsGetResource

    -- * Creating a Request
    , globalOrganizationOperationsGet
    , GlobalOrganizationOperationsGet

    -- * Request Lenses
    , googOperation
    , googParentId
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalOrganizationOperations.get@ method which the
-- 'GlobalOrganizationOperationsGet' request conforms to.
type GlobalOrganizationOperationsGetResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "operations" :>
               Capture "operation" Text :>
                 QueryParam "parentId" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Retrieves the specified Operations resource. Gets a list of operations
-- by making a \`list()\` request.
--
-- /See:/ 'globalOrganizationOperationsGet' smart constructor.
data GlobalOrganizationOperationsGet =
  GlobalOrganizationOperationsGet'
    { _googOperation :: !Text
    , _googParentId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalOrganizationOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'googOperation'
--
-- * 'googParentId'
globalOrganizationOperationsGet
    :: Text -- ^ 'googOperation'
    -> GlobalOrganizationOperationsGet
globalOrganizationOperationsGet pGoogOperation_ =
  GlobalOrganizationOperationsGet'
    {_googOperation = pGoogOperation_, _googParentId = Nothing}


-- | Name of the Operations resource to return.
googOperation :: Lens' GlobalOrganizationOperationsGet Text
googOperation
  = lens _googOperation
      (\ s a -> s{_googOperation = a})

-- | Parent ID for this request.
googParentId :: Lens' GlobalOrganizationOperationsGet (Maybe Text)
googParentId
  = lens _googParentId (\ s a -> s{_googParentId = a})

instance GoogleRequest
           GlobalOrganizationOperationsGet
         where
        type Rs GlobalOrganizationOperationsGet = Operation
        type Scopes GlobalOrganizationOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient GlobalOrganizationOperationsGet'{..}
          = go _googOperation _googParentId (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GlobalOrganizationOperationsGetResource)
                      mempty
