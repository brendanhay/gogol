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
-- Module      : Network.Google.Resource.DNS.ManagedZones.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new ManagedZone.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @dns.managedZones.create@.
module Network.Google.Resource.DNS.ManagedZones.Create
    (
    -- * REST Resource
      ManagedZonesCreateResource

    -- * Creating a Request
    , managedZonesCreate
    , ManagedZonesCreate

    -- * Request Lenses
    , mzcProject
    , mzcPayload
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @dns.managedZones.create@ method which the
-- 'ManagedZonesCreate' request conforms to.
type ManagedZonesCreateResource =
     "dns" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] ManagedZone :>
                   Post '[JSON] ManagedZone

-- | Create a new ManagedZone.
--
-- /See:/ 'managedZonesCreate' smart constructor.
data ManagedZonesCreate = ManagedZonesCreate
    { _mzcProject :: !Text
    , _mzcPayload :: !ManagedZone
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedZonesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzcProject'
--
-- * 'mzcPayload'
managedZonesCreate
    :: Text -- ^ 'mzcProject'
    -> ManagedZone -- ^ 'mzcPayload'
    -> ManagedZonesCreate
managedZonesCreate pMzcProject_ pMzcPayload_ =
    ManagedZonesCreate
    { _mzcProject = pMzcProject_
    , _mzcPayload = pMzcPayload_
    }

-- | Identifies the project addressed by this request.
mzcProject :: Lens' ManagedZonesCreate Text
mzcProject
  = lens _mzcProject (\ s a -> s{_mzcProject = a})

-- | Multipart request metadata.
mzcPayload :: Lens' ManagedZonesCreate ManagedZone
mzcPayload
  = lens _mzcPayload (\ s a -> s{_mzcPayload = a})

instance GoogleRequest ManagedZonesCreate where
        type Rs ManagedZonesCreate = ManagedZone
        type Scopes ManagedZonesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ManagedZonesCreate{..}
          = go _mzcProject (Just AltJSON) _mzcPayload
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagedZonesCreateResource)
                      mempty
