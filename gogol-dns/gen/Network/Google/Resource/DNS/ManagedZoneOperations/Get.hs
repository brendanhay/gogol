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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetch the representation of an existing Operation.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @dns.managedZoneOperations.get@.
module Network.Google.Resource.DNS.ManagedZoneOperations.Get
    (
    -- * REST Resource
      ManagedZoneOperationsGetResource

    -- * Creating a Request
    , managedZoneOperationsGet
    , ManagedZoneOperationsGet

    -- * Request Lenses
    , mzogProject
    , mzogOperation
    , mzogManagedZone
    , mzogClientOperationId
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

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
                     QueryParam "clientOperationId" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Fetch the representation of an existing Operation.
--
-- /See:/ 'managedZoneOperationsGet' smart constructor.
data ManagedZoneOperationsGet =
  ManagedZoneOperationsGet'
    { _mzogProject           :: !Text
    , _mzogOperation         :: !Text
    , _mzogManagedZone       :: !Text
    , _mzogClientOperationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZoneOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzogProject'
--
-- * 'mzogOperation'
--
-- * 'mzogManagedZone'
--
-- * 'mzogClientOperationId'
managedZoneOperationsGet
    :: Text -- ^ 'mzogProject'
    -> Text -- ^ 'mzogOperation'
    -> Text -- ^ 'mzogManagedZone'
    -> ManagedZoneOperationsGet
managedZoneOperationsGet pMzogProject_ pMzogOperation_ pMzogManagedZone_ =
  ManagedZoneOperationsGet'
    { _mzogProject = pMzogProject_
    , _mzogOperation = pMzogOperation_
    , _mzogManagedZone = pMzogManagedZone_
    , _mzogClientOperationId = Nothing
    }


-- | Identifies the project addressed by this request.
mzogProject :: Lens' ManagedZoneOperationsGet Text
mzogProject
  = lens _mzogProject (\ s a -> s{_mzogProject = a})

-- | Identifies the operation addressed by this request.
mzogOperation :: Lens' ManagedZoneOperationsGet Text
mzogOperation
  = lens _mzogOperation
      (\ s a -> s{_mzogOperation = a})

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

instance GoogleRequest ManagedZoneOperationsGet where
        type Rs ManagedZoneOperationsGet = Operation
        type Scopes ManagedZoneOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.clouddns.readonly",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ManagedZoneOperationsGet'{..}
          = go _mzogProject _mzogManagedZone _mzogOperation
              _mzogClientOperationId
              (Just AltJSON)
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagedZoneOperationsGetResource)
                      mempty
