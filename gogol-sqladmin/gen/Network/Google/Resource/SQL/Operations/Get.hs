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
-- Module      : Network.Google.Resource.SQL.Operations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an instance operation that has been performed on an instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.operations.get@.
module Network.Google.Resource.SQL.Operations.Get
    (
    -- * REST Resource
      OperationsGetResource

    -- * Creating a Request
    , operationsGet
    , OperationsGet

    -- * Request Lenses
    , ogProject
    , ogOperation
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.operations.get@ method which the
-- 'OperationsGet' request conforms to.
type OperationsGetResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "operations" :>
               Capture "operation" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Retrieves an instance operation that has been performed on an instance.
--
-- /See:/ 'operationsGet' smart constructor.
data OperationsGet =
  OperationsGet'
    { _ogProject   :: !Text
    , _ogOperation :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogProject'
--
-- * 'ogOperation'
operationsGet
    :: Text -- ^ 'ogProject'
    -> Text -- ^ 'ogOperation'
    -> OperationsGet
operationsGet pOgProject_ pOgOperation_ =
  OperationsGet' {_ogProject = pOgProject_, _ogOperation = pOgOperation_}

-- | Project ID of the project that contains the instance.
ogProject :: Lens' OperationsGet Text
ogProject
  = lens _ogProject (\ s a -> s{_ogProject = a})

-- | Instance operation ID.
ogOperation :: Lens' OperationsGet Text
ogOperation
  = lens _ogOperation (\ s a -> s{_ogOperation = a})

instance GoogleRequest OperationsGet where
        type Rs OperationsGet = Operation
        type Scopes OperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient OperationsGet'{..}
          = go _ogProject _ogOperation (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy OperationsGetResource)
                      mempty
