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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an instance operation that has been performed on an instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.operations.get@.
module Network.Google.Resource.SQL.Operations.Get
    (
    -- * REST Resource
      OperationsGetResource

    -- * Creating a Request
    , operationsGet
    , OperationsGet

    -- * Request Lenses
    , ogXgafv
    , ogUploadProtocol
    , ogProject
    , ogOperation
    , ogAccessToken
    , ogUploadType
    , ogCallback
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.operations.get@ method which the
-- 'OperationsGet' request conforms to.
type OperationsGetResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "operations" :>
             Capture "operation" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Retrieves an instance operation that has been performed on an instance.
--
-- /See:/ 'operationsGet' smart constructor.
data OperationsGet =
  OperationsGet'
    { _ogXgafv :: !(Maybe Xgafv)
    , _ogUploadProtocol :: !(Maybe Text)
    , _ogProject :: !Text
    , _ogOperation :: !Text
    , _ogAccessToken :: !(Maybe Text)
    , _ogUploadType :: !(Maybe Text)
    , _ogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogXgafv'
--
-- * 'ogUploadProtocol'
--
-- * 'ogProject'
--
-- * 'ogOperation'
--
-- * 'ogAccessToken'
--
-- * 'ogUploadType'
--
-- * 'ogCallback'
operationsGet
    :: Text -- ^ 'ogProject'
    -> Text -- ^ 'ogOperation'
    -> OperationsGet
operationsGet pOgProject_ pOgOperation_ =
  OperationsGet'
    { _ogXgafv = Nothing
    , _ogUploadProtocol = Nothing
    , _ogProject = pOgProject_
    , _ogOperation = pOgOperation_
    , _ogAccessToken = Nothing
    , _ogUploadType = Nothing
    , _ogCallback = Nothing
    }


-- | V1 error format.
ogXgafv :: Lens' OperationsGet (Maybe Xgafv)
ogXgafv = lens _ogXgafv (\ s a -> s{_ogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ogUploadProtocol :: Lens' OperationsGet (Maybe Text)
ogUploadProtocol
  = lens _ogUploadProtocol
      (\ s a -> s{_ogUploadProtocol = a})

-- | Project ID of the project that contains the instance.
ogProject :: Lens' OperationsGet Text
ogProject
  = lens _ogProject (\ s a -> s{_ogProject = a})

-- | Instance operation ID.
ogOperation :: Lens' OperationsGet Text
ogOperation
  = lens _ogOperation (\ s a -> s{_ogOperation = a})

-- | OAuth access token.
ogAccessToken :: Lens' OperationsGet (Maybe Text)
ogAccessToken
  = lens _ogAccessToken
      (\ s a -> s{_ogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ogUploadType :: Lens' OperationsGet (Maybe Text)
ogUploadType
  = lens _ogUploadType (\ s a -> s{_ogUploadType = a})

-- | JSONP
ogCallback :: Lens' OperationsGet (Maybe Text)
ogCallback
  = lens _ogCallback (\ s a -> s{_ogCallback = a})

instance GoogleRequest OperationsGet where
        type Rs OperationsGet = Operation
        type Scopes OperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient OperationsGet'{..}
          = go _ogProject _ogOperation _ogXgafv
              _ogUploadProtocol
              _ogAccessToken
              _ogUploadType
              _ogCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy OperationsGetResource)
                      mempty
