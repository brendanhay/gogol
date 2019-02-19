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
-- Module      : Network.Google.Resource.DNS.ManagedZones.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an existing ManagedZone.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @dns.managedZones.update@.
module Network.Google.Resource.DNS.ManagedZones.Update
    (
    -- * REST Resource
      ManagedZonesUpdateResource

    -- * Creating a Request
    , managedZonesUpdate
    , ManagedZonesUpdate

    -- * Request Lenses
    , mzuProject
    , mzuPayload
    , mzuManagedZone
    , mzuClientOperationId
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @dns.managedZones.update@ method which the
-- 'ManagedZonesUpdate' request conforms to.
type ManagedZonesUpdateResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               Capture "managedZone" Text :>
                 QueryParam "clientOperationId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ManagedZone :> Put '[JSON] Operation

-- | Update an existing ManagedZone.
--
-- /See:/ 'managedZonesUpdate' smart constructor.
data ManagedZonesUpdate =
  ManagedZonesUpdate'
    { _mzuProject           :: !Text
    , _mzuPayload           :: !ManagedZone
    , _mzuManagedZone       :: !Text
    , _mzuClientOperationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedZonesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzuProject'
--
-- * 'mzuPayload'
--
-- * 'mzuManagedZone'
--
-- * 'mzuClientOperationId'
managedZonesUpdate
    :: Text -- ^ 'mzuProject'
    -> ManagedZone -- ^ 'mzuPayload'
    -> Text -- ^ 'mzuManagedZone'
    -> ManagedZonesUpdate
managedZonesUpdate pMzuProject_ pMzuPayload_ pMzuManagedZone_ =
  ManagedZonesUpdate'
    { _mzuProject = pMzuProject_
    , _mzuPayload = pMzuPayload_
    , _mzuManagedZone = pMzuManagedZone_
    , _mzuClientOperationId = Nothing
    }

-- | Identifies the project addressed by this request.
mzuProject :: Lens' ManagedZonesUpdate Text
mzuProject
  = lens _mzuProject (\ s a -> s{_mzuProject = a})

-- | Multipart request metadata.
mzuPayload :: Lens' ManagedZonesUpdate ManagedZone
mzuPayload
  = lens _mzuPayload (\ s a -> s{_mzuPayload = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
mzuManagedZone :: Lens' ManagedZonesUpdate Text
mzuManagedZone
  = lens _mzuManagedZone
      (\ s a -> s{_mzuManagedZone = a})

-- | For mutating operation requests only. An optional identifier specified
-- by the client. Must be unique for operation resources in the Operations
-- collection.
mzuClientOperationId :: Lens' ManagedZonesUpdate (Maybe Text)
mzuClientOperationId
  = lens _mzuClientOperationId
      (\ s a -> s{_mzuClientOperationId = a})

instance GoogleRequest ManagedZonesUpdate where
        type Rs ManagedZonesUpdate = Operation
        type Scopes ManagedZonesUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ManagedZonesUpdate'{..}
          = go _mzuProject _mzuManagedZone
              _mzuClientOperationId
              (Just AltJSON)
              _mzuPayload
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagedZonesUpdateResource)
                      mempty
