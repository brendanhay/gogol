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
-- Module      : Network.Google.Resource.DNS.ManagedZones.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetch the representation of an existing ManagedZone.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @dns.managedZones.get@.
module Network.Google.Resource.DNS.ManagedZones.Get
    (
    -- * REST Resource
      ManagedZonesGetResource

    -- * Creating a Request
    , managedZonesGet
    , ManagedZonesGet

    -- * Request Lenses
    , mzgProject
    , mzgManagedZone
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @dns.managedZones.get@ method which the
-- 'ManagedZonesGet' request conforms to.
type ManagedZonesGetResource =
     "dns" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               Capture "managedZone" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] ManagedZone

-- | Fetch the representation of an existing ManagedZone.
--
-- /See:/ 'managedZonesGet' smart constructor.
data ManagedZonesGet = ManagedZonesGet
    { _mzgProject     :: !Text
    , _mzgManagedZone :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedZonesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzgProject'
--
-- * 'mzgManagedZone'
managedZonesGet
    :: Text -- ^ 'mzgProject'
    -> Text -- ^ 'mzgManagedZone'
    -> ManagedZonesGet
managedZonesGet pMzgProject_ pMzgManagedZone_ =
    ManagedZonesGet
    { _mzgProject = pMzgProject_
    , _mzgManagedZone = pMzgManagedZone_
    }

-- | Identifies the project addressed by this request.
mzgProject :: Lens' ManagedZonesGet Text
mzgProject
  = lens _mzgProject (\ s a -> s{_mzgProject = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
mzgManagedZone :: Lens' ManagedZonesGet Text
mzgManagedZone
  = lens _mzgManagedZone
      (\ s a -> s{_mzgManagedZone = a})

instance GoogleRequest ManagedZonesGet where
        type Rs ManagedZonesGet = ManagedZone
        requestClient ManagedZonesGet{..}
          = go _mzgProject _mzgManagedZone (Just AltJSON)
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagedZonesGetResource)
                      mempty
