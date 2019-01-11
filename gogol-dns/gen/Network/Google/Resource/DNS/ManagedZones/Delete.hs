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
-- Module      : Network.Google.Resource.DNS.ManagedZones.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a previously created ManagedZone.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @dns.managedZones.delete@.
module Network.Google.Resource.DNS.ManagedZones.Delete
    (
    -- * REST Resource
      ManagedZonesDeleteResource

    -- * Creating a Request
    , managedZonesDelete
    , ManagedZonesDelete

    -- * Request Lenses
    , mzdProject
    , mzdManagedZone
    , mzdClientOperationId
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @dns.managedZones.delete@ method which the
-- 'ManagedZonesDelete' request conforms to.
type ManagedZonesDeleteResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               Capture "managedZone" Text :>
                 QueryParam "clientOperationId" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a previously created ManagedZone.
--
-- /See:/ 'managedZonesDelete' smart constructor.
data ManagedZonesDelete = ManagedZonesDelete'
    { _mzdProject           :: !Text
    , _mzdManagedZone       :: !Text
    , _mzdClientOperationId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedZonesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzdProject'
--
-- * 'mzdManagedZone'
--
-- * 'mzdClientOperationId'
managedZonesDelete
    :: Text -- ^ 'mzdProject'
    -> Text -- ^ 'mzdManagedZone'
    -> ManagedZonesDelete
managedZonesDelete pMzdProject_ pMzdManagedZone_ =
    ManagedZonesDelete'
    { _mzdProject = pMzdProject_
    , _mzdManagedZone = pMzdManagedZone_
    , _mzdClientOperationId = Nothing
    }

-- | Identifies the project addressed by this request.
mzdProject :: Lens' ManagedZonesDelete Text
mzdProject
  = lens _mzdProject (\ s a -> s{_mzdProject = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
mzdManagedZone :: Lens' ManagedZonesDelete Text
mzdManagedZone
  = lens _mzdManagedZone
      (\ s a -> s{_mzdManagedZone = a})

-- | For mutating operation requests only. An optional identifier specified
-- by the client. Must be unique for operation resources in the Operations
-- collection.
mzdClientOperationId :: Lens' ManagedZonesDelete (Maybe Text)
mzdClientOperationId
  = lens _mzdClientOperationId
      (\ s a -> s{_mzdClientOperationId = a})

instance GoogleRequest ManagedZonesDelete where
        type Rs ManagedZonesDelete = ()
        type Scopes ManagedZonesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ManagedZonesDelete'{..}
          = go _mzdProject _mzdManagedZone
              _mzdClientOperationId
              (Just AltJSON)
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagedZonesDeleteResource)
                      mempty
