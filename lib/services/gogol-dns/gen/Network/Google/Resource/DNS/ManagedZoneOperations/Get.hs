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
-- Module      : Network.Google.Resource.DNS.ManagedZoneOperations.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetch the representation of an existing Operation.
--
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.managedZoneOperations.get@.
module Network.Google.Resource.DNS.ManagedZoneOperations.Get
    (
    -- * REST Resource
      ManagedZoneOperationsGetResource

    -- * Creating a Request
    , managedZoneOperationsGet
    , ManagedZoneOperationsGet

    -- * Request Lenses
    , mzogXgafv
    , mzogUploadProtocol
    , mzogProject
    , mzogOperation
    , mzogAccessToken
    , mzogUploadType
    , mzogManagedZone
    , mzogClientOperationId
    , mzogCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.managedZoneOperations.get@ method which the
-- 'ManagedZoneOperationsGet' request conforms to.
type ManagedZoneOperationsGetResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               Capture "managedZone" Text :>
                 "operations" :>
                   Capture "operation" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "clientOperationId" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] Operation

-- | Fetch the representation of an existing Operation.
--
-- /See:/ 'managedZoneOperationsGet' smart constructor.
data ManagedZoneOperationsGet =
  ManagedZoneOperationsGet'
    { _mzogXgafv :: !(Maybe Xgafv)
    , _mzogUploadProtocol :: !(Maybe Text)
    , _mzogProject :: !Text
    , _mzogOperation :: !Text
    , _mzogAccessToken :: !(Maybe Text)
    , _mzogUploadType :: !(Maybe Text)
    , _mzogManagedZone :: !Text
    , _mzogClientOperationId :: !(Maybe Text)
    , _mzogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZoneOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzogXgafv'
--
-- * 'mzogUploadProtocol'
--
-- * 'mzogProject'
--
-- * 'mzogOperation'
--
-- * 'mzogAccessToken'
--
-- * 'mzogUploadType'
--
-- * 'mzogManagedZone'
--
-- * 'mzogClientOperationId'
--
-- * 'mzogCallback'
managedZoneOperationsGet
    :: Text -- ^ 'mzogProject'
    -> Text -- ^ 'mzogOperation'
    -> Text -- ^ 'mzogManagedZone'
    -> ManagedZoneOperationsGet
managedZoneOperationsGet pMzogProject_ pMzogOperation_ pMzogManagedZone_ =
  ManagedZoneOperationsGet'
    { _mzogXgafv = Nothing
    , _mzogUploadProtocol = Nothing
    , _mzogProject = pMzogProject_
    , _mzogOperation = pMzogOperation_
    , _mzogAccessToken = Nothing
    , _mzogUploadType = Nothing
    , _mzogManagedZone = pMzogManagedZone_
    , _mzogClientOperationId = Nothing
    , _mzogCallback = Nothing
    }


-- | V1 error format.
mzogXgafv :: Lens' ManagedZoneOperationsGet (Maybe Xgafv)
mzogXgafv
  = lens _mzogXgafv (\ s a -> s{_mzogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mzogUploadProtocol :: Lens' ManagedZoneOperationsGet (Maybe Text)
mzogUploadProtocol
  = lens _mzogUploadProtocol
      (\ s a -> s{_mzogUploadProtocol = a})

-- | Identifies the project addressed by this request.
mzogProject :: Lens' ManagedZoneOperationsGet Text
mzogProject
  = lens _mzogProject (\ s a -> s{_mzogProject = a})

-- | Identifies the operation addressed by this request.
mzogOperation :: Lens' ManagedZoneOperationsGet Text
mzogOperation
  = lens _mzogOperation
      (\ s a -> s{_mzogOperation = a})

-- | OAuth access token.
mzogAccessToken :: Lens' ManagedZoneOperationsGet (Maybe Text)
mzogAccessToken
  = lens _mzogAccessToken
      (\ s a -> s{_mzogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mzogUploadType :: Lens' ManagedZoneOperationsGet (Maybe Text)
mzogUploadType
  = lens _mzogUploadType
      (\ s a -> s{_mzogUploadType = a})

-- | Identifies the managed zone addressed by this request.
mzogManagedZone :: Lens' ManagedZoneOperationsGet Text
mzogManagedZone
  = lens _mzogManagedZone
      (\ s a -> s{_mzogManagedZone = a})

-- | For mutating operation requests only. An optional identifier specified
-- by the client. Must be unique for operation resources in the Operations
-- collection.
mzogClientOperationId :: Lens' ManagedZoneOperationsGet (Maybe Text)
mzogClientOperationId
  = lens _mzogClientOperationId
      (\ s a -> s{_mzogClientOperationId = a})

-- | JSONP
mzogCallback :: Lens' ManagedZoneOperationsGet (Maybe Text)
mzogCallback
  = lens _mzogCallback (\ s a -> s{_mzogCallback = a})

instance GoogleRequest ManagedZoneOperationsGet where
        type Rs ManagedZoneOperationsGet = Operation
        type Scopes ManagedZoneOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.clouddns.readonly",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ManagedZoneOperationsGet'{..}
          = go _mzogProject _mzogManagedZone _mzogOperation
              _mzogXgafv
              _mzogUploadProtocol
              _mzogAccessToken
              _mzogUploadType
              _mzogClientOperationId
              _mzogCallback
              (Just AltJSON)
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagedZoneOperationsGetResource)
                      mempty
