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
-- Module      : Network.Google.Resource.Genomics.Operations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This method is not implemented. To cancel an operation, please use
-- Operations.CancelOperation.
--
-- /See:/ < Genomics API Reference> for @genomics.operations.delete@.
module Network.Google.Resource.Genomics.Operations.Delete
    (
    -- * REST Resource
      OperationsDeleteResource

    -- * Creating a Request
    , operationsDelete
    , OperationsDelete

    -- * Request Lenses
    , odXgafv
    , odUploadProtocol
    , odPp
    , odAccessToken
    , odUploadType
    , odBearerToken
    , odName
    , odCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.operations.delete@ method which the
-- 'OperationsDelete' request conforms to.
type OperationsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | This method is not implemented. To cancel an operation, please use
-- Operations.CancelOperation.
--
-- /See:/ 'operationsDelete' smart constructor.
data OperationsDelete = OperationsDelete
    { _odXgafv          :: !(Maybe Text)
    , _odUploadProtocol :: !(Maybe Text)
    , _odPp             :: !Bool
    , _odAccessToken    :: !(Maybe Text)
    , _odUploadType     :: !(Maybe Text)
    , _odBearerToken    :: !(Maybe Text)
    , _odName           :: !Text
    , _odCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odXgafv'
--
-- * 'odUploadProtocol'
--
-- * 'odPp'
--
-- * 'odAccessToken'
--
-- * 'odUploadType'
--
-- * 'odBearerToken'
--
-- * 'odName'
--
-- * 'odCallback'
operationsDelete
    :: Text -- ^ 'odName'
    -> OperationsDelete
operationsDelete pOdName_ =
    OperationsDelete
    { _odXgafv = Nothing
    , _odUploadProtocol = Nothing
    , _odPp = True
    , _odAccessToken = Nothing
    , _odUploadType = Nothing
    , _odBearerToken = Nothing
    , _odName = pOdName_
    , _odCallback = Nothing
    }

-- | V1 error format.
odXgafv :: Lens' OperationsDelete (Maybe Text)
odXgafv = lens _odXgafv (\ s a -> s{_odXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
odUploadProtocol :: Lens' OperationsDelete (Maybe Text)
odUploadProtocol
  = lens _odUploadProtocol
      (\ s a -> s{_odUploadProtocol = a})

-- | Pretty-print response.
odPp :: Lens' OperationsDelete Bool
odPp = lens _odPp (\ s a -> s{_odPp = a})

-- | OAuth access token.
odAccessToken :: Lens' OperationsDelete (Maybe Text)
odAccessToken
  = lens _odAccessToken
      (\ s a -> s{_odAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
odUploadType :: Lens' OperationsDelete (Maybe Text)
odUploadType
  = lens _odUploadType (\ s a -> s{_odUploadType = a})

-- | OAuth bearer token.
odBearerToken :: Lens' OperationsDelete (Maybe Text)
odBearerToken
  = lens _odBearerToken
      (\ s a -> s{_odBearerToken = a})

-- | The name of the operation resource to be deleted.
odName :: Lens' OperationsDelete Text
odName = lens _odName (\ s a -> s{_odName = a})

-- | JSONP
odCallback :: Lens' OperationsDelete (Maybe Text)
odCallback
  = lens _odCallback (\ s a -> s{_odCallback = a})

instance GoogleRequest OperationsDelete where
        type Rs OperationsDelete = Empty
        type Scopes OperationsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient OperationsDelete{..}
          = go _odName _odXgafv _odUploadProtocol (Just _odPp)
              _odAccessToken
              _odUploadType
              _odBearerToken
              _odCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy OperationsDeleteResource)
                      mempty
