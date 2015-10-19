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
-- Module      : Network.Google.Resource.CloudUserAccounts.GlobalAccountsOperations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified operation resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsGlobalAccountsOperationsGet@.
module Network.Google.Resource.CloudUserAccounts.GlobalAccountsOperations.Get
    (
    -- * REST Resource
      GlobalAccountsOperationsGetResource

    -- * Creating a Request
    , globalAccountsOperationsGet'
    , GlobalAccountsOperationsGet'

    -- * Request Lenses
    , gaogProject
    , gaogOperation
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsGlobalAccountsOperationsGet@ method which the
-- 'GlobalAccountsOperationsGet'' request conforms to.
type GlobalAccountsOperationsGetResource =
     Capture "project" Text :>
       "global" :>
         "operations" :>
           Capture "operation" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Retrieves the specified operation resource.
--
-- /See:/ 'globalAccountsOperationsGet'' smart constructor.
data GlobalAccountsOperationsGet' = GlobalAccountsOperationsGet'
    { _gaogProject   :: !Text
    , _gaogOperation :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalAccountsOperationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaogProject'
--
-- * 'gaogOperation'
globalAccountsOperationsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'operation'
    -> GlobalAccountsOperationsGet'
globalAccountsOperationsGet' pGaogProject_ pGaogOperation_ =
    GlobalAccountsOperationsGet'
    { _gaogProject = pGaogProject_
    , _gaogOperation = pGaogOperation_
    }

-- | Project ID for this request.
gaogProject :: Lens' GlobalAccountsOperationsGet' Text
gaogProject
  = lens _gaogProject (\ s a -> s{_gaogProject = a})

-- | Name of the Operations resource to return.
gaogOperation :: Lens' GlobalAccountsOperationsGet' Text
gaogOperation
  = lens _gaogOperation
      (\ s a -> s{_gaogOperation = a})

instance GoogleRequest GlobalAccountsOperationsGet'
         where
        type Rs GlobalAccountsOperationsGet' = Operation
        requestClient GlobalAccountsOperationsGet'{..}
          = go _gaogProject _gaogOperation (Just AltJSON)
              userAccountsService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalAccountsOperationsGetResource)
                      mempty
