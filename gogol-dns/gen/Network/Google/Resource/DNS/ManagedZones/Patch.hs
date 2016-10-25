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
-- Module      : Network.Google.Resource.DNS.ManagedZones.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an existing ManagedZone. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @dns.managedZones.patch@.
module Network.Google.Resource.DNS.ManagedZones.Patch
    (
    -- * REST Resource
      ManagedZonesPatchResource

    -- * Creating a Request
    , managedZonesPatch
    , ManagedZonesPatch

    -- * Request Lenses
    , mzpProject
    , mzpPayload
    , mzpManagedZone
    , mzpClientOperationId
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @dns.managedZones.patch@ method which the
-- 'ManagedZonesPatch' request conforms to.
type ManagedZonesPatchResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               Capture "managedZone" Text :>
                 QueryParam "clientOperationId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ManagedZone :>
                       Patch '[JSON] Operation

-- | Update an existing ManagedZone. This method supports patch semantics.
--
-- /See:/ 'managedZonesPatch' smart constructor.
data ManagedZonesPatch = ManagedZonesPatch'
    { _mzpProject           :: !Text
    , _mzpPayload           :: !ManagedZone
    , _mzpManagedZone       :: !Text
    , _mzpClientOperationId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedZonesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzpProject'
--
-- * 'mzpPayload'
--
-- * 'mzpManagedZone'
--
-- * 'mzpClientOperationId'
managedZonesPatch
    :: Text -- ^ 'mzpProject'
    -> ManagedZone -- ^ 'mzpPayload'
    -> Text -- ^ 'mzpManagedZone'
    -> ManagedZonesPatch
managedZonesPatch pMzpProject_ pMzpPayload_ pMzpManagedZone_ =
    ManagedZonesPatch'
    { _mzpProject = pMzpProject_
    , _mzpPayload = pMzpPayload_
    , _mzpManagedZone = pMzpManagedZone_
    , _mzpClientOperationId = Nothing
    }

-- | Identifies the project addressed by this request.
mzpProject :: Lens' ManagedZonesPatch Text
mzpProject
  = lens _mzpProject (\ s a -> s{_mzpProject = a})

-- | Multipart request metadata.
mzpPayload :: Lens' ManagedZonesPatch ManagedZone
mzpPayload
  = lens _mzpPayload (\ s a -> s{_mzpPayload = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
mzpManagedZone :: Lens' ManagedZonesPatch Text
mzpManagedZone
  = lens _mzpManagedZone
      (\ s a -> s{_mzpManagedZone = a})

-- | For mutating operation requests only. An optional identifier specified
-- by the client. Must be unique for operation resources in the Operations
-- collection.
mzpClientOperationId :: Lens' ManagedZonesPatch (Maybe Text)
mzpClientOperationId
  = lens _mzpClientOperationId
      (\ s a -> s{_mzpClientOperationId = a})

instance GoogleRequest ManagedZonesPatch where
        type Rs ManagedZonesPatch = Operation
        type Scopes ManagedZonesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ManagedZonesPatch'{..}
          = go _mzpProject _mzpManagedZone
              _mzpClientOperationId
              (Just AltJSON)
              _mzpPayload
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagedZonesPatchResource)
                      mempty
