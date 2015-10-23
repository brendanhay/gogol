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
-- Module      : Network.Google.Resource.CloudUserAccounts.GlobalAccountsOperations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified operation resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.globalAccountsOperations.delete@.
module Network.Google.Resource.CloudUserAccounts.GlobalAccountsOperations.Delete
    (
    -- * REST Resource
      GlobalAccountsOperationsDeleteResource

    -- * Creating a Request
    , globalAccountsOperationsDelete
    , GlobalAccountsOperationsDelete

    -- * Request Lenses
    , gaodProject
    , gaodOperation
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @clouduseraccounts.globalAccountsOperations.delete@ method which the
-- 'GlobalAccountsOperationsDelete' request conforms to.
type GlobalAccountsOperationsDeleteResource =
     "clouduseraccounts" :>
       "beta" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "operations" :>
                 Capture "operation" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified operation resource.
--
-- /See:/ 'globalAccountsOperationsDelete' smart constructor.
data GlobalAccountsOperationsDelete = GlobalAccountsOperationsDelete
    { _gaodProject   :: !Text
    , _gaodOperation :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalAccountsOperationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaodProject'
--
-- * 'gaodOperation'
globalAccountsOperationsDelete
    :: Text -- ^ 'gaodProject'
    -> Text -- ^ 'gaodOperation'
    -> GlobalAccountsOperationsDelete
globalAccountsOperationsDelete pGaodProject_ pGaodOperation_ =
    GlobalAccountsOperationsDelete
    { _gaodProject = pGaodProject_
    , _gaodOperation = pGaodOperation_
    }

-- | Project ID for this request.
gaodProject :: Lens' GlobalAccountsOperationsDelete Text
gaodProject
  = lens _gaodProject (\ s a -> s{_gaodProject = a})

-- | Name of the Operations resource to delete.
gaodOperation :: Lens' GlobalAccountsOperationsDelete Text
gaodOperation
  = lens _gaodOperation
      (\ s a -> s{_gaodOperation = a})

instance GoogleRequest GlobalAccountsOperationsDelete
         where
        type Rs GlobalAccountsOperationsDelete = ()
        requestClient GlobalAccountsOperationsDelete{..}
          = go _gaodProject _gaodOperation (Just AltJSON)
              userAccountsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GlobalAccountsOperationsDeleteResource)
                      mempty
