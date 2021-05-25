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
-- Module      : Network.Google.Resource.Compute.GlobalOrganizationOperations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Operations resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalOrganizationOperations.delete@.
module Network.Google.Resource.Compute.GlobalOrganizationOperations.Delete
    (
    -- * REST Resource
      GlobalOrganizationOperationsDeleteResource

    -- * Creating a Request
    , globalOrganizationOperationsDelete
    , GlobalOrganizationOperationsDelete

    -- * Request Lenses
    , goodOperation
    , goodParentId
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalOrganizationOperations.delete@ method which the
-- 'GlobalOrganizationOperationsDelete' request conforms to.
type GlobalOrganizationOperationsDeleteResource =
     "compute" :>
       "v1" :>
         "locations" :>
           "global" :>
             "operations" :>
               Capture "operation" Text :>
                 QueryParam "parentId" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified Operations resource.
--
-- /See:/ 'globalOrganizationOperationsDelete' smart constructor.
data GlobalOrganizationOperationsDelete =
  GlobalOrganizationOperationsDelete'
    { _goodOperation :: !Text
    , _goodParentId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalOrganizationOperationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goodOperation'
--
-- * 'goodParentId'
globalOrganizationOperationsDelete
    :: Text -- ^ 'goodOperation'
    -> GlobalOrganizationOperationsDelete
globalOrganizationOperationsDelete pGoodOperation_ =
  GlobalOrganizationOperationsDelete'
    {_goodOperation = pGoodOperation_, _goodParentId = Nothing}


-- | Name of the Operations resource to delete.
goodOperation :: Lens' GlobalOrganizationOperationsDelete Text
goodOperation
  = lens _goodOperation
      (\ s a -> s{_goodOperation = a})

-- | Parent ID for this request.
goodParentId :: Lens' GlobalOrganizationOperationsDelete (Maybe Text)
goodParentId
  = lens _goodParentId (\ s a -> s{_goodParentId = a})

instance GoogleRequest
           GlobalOrganizationOperationsDelete
         where
        type Rs GlobalOrganizationOperationsDelete = ()
        type Scopes GlobalOrganizationOperationsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient GlobalOrganizationOperationsDelete'{..}
          = go _goodOperation _goodParentId (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GlobalOrganizationOperationsDeleteResource)
                      mempty
