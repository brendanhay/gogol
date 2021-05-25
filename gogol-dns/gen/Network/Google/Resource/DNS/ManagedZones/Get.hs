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
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.managedZones.get@.
module Network.Google.Resource.DNS.ManagedZones.Get
    (
    -- * REST Resource
      ManagedZonesGetResource

    -- * Creating a Request
    , managedZonesGet
    , ManagedZonesGet

    -- * Request Lenses
    , mzgXgafv
    , mzgUploadProtocol
    , mzgProject
    , mzgAccessToken
    , mzgUploadType
    , mzgManagedZone
    , mzgClientOperationId
    , mzgCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.managedZones.get@ method which the
-- 'ManagedZonesGet' request conforms to.
type ManagedZonesGetResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               Capture "managedZone" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "clientOperationId" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] ManagedZone

-- | Fetch the representation of an existing ManagedZone.
--
-- /See:/ 'managedZonesGet' smart constructor.
data ManagedZonesGet =
  ManagedZonesGet'
    { _mzgXgafv :: !(Maybe Xgafv)
    , _mzgUploadProtocol :: !(Maybe Text)
    , _mzgProject :: !Text
    , _mzgAccessToken :: !(Maybe Text)
    , _mzgUploadType :: !(Maybe Text)
    , _mzgManagedZone :: !Text
    , _mzgClientOperationId :: !(Maybe Text)
    , _mzgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZonesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzgXgafv'
--
-- * 'mzgUploadProtocol'
--
-- * 'mzgProject'
--
-- * 'mzgAccessToken'
--
-- * 'mzgUploadType'
--
-- * 'mzgManagedZone'
--
-- * 'mzgClientOperationId'
--
-- * 'mzgCallback'
managedZonesGet
    :: Text -- ^ 'mzgProject'
    -> Text -- ^ 'mzgManagedZone'
    -> ManagedZonesGet
managedZonesGet pMzgProject_ pMzgManagedZone_ =
  ManagedZonesGet'
    { _mzgXgafv = Nothing
    , _mzgUploadProtocol = Nothing
    , _mzgProject = pMzgProject_
    , _mzgAccessToken = Nothing
    , _mzgUploadType = Nothing
    , _mzgManagedZone = pMzgManagedZone_
    , _mzgClientOperationId = Nothing
    , _mzgCallback = Nothing
    }


-- | V1 error format.
mzgXgafv :: Lens' ManagedZonesGet (Maybe Xgafv)
mzgXgafv = lens _mzgXgafv (\ s a -> s{_mzgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mzgUploadProtocol :: Lens' ManagedZonesGet (Maybe Text)
mzgUploadProtocol
  = lens _mzgUploadProtocol
      (\ s a -> s{_mzgUploadProtocol = a})

-- | Identifies the project addressed by this request.
mzgProject :: Lens' ManagedZonesGet Text
mzgProject
  = lens _mzgProject (\ s a -> s{_mzgProject = a})

-- | OAuth access token.
mzgAccessToken :: Lens' ManagedZonesGet (Maybe Text)
mzgAccessToken
  = lens _mzgAccessToken
      (\ s a -> s{_mzgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mzgUploadType :: Lens' ManagedZonesGet (Maybe Text)
mzgUploadType
  = lens _mzgUploadType
      (\ s a -> s{_mzgUploadType = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
mzgManagedZone :: Lens' ManagedZonesGet Text
mzgManagedZone
  = lens _mzgManagedZone
      (\ s a -> s{_mzgManagedZone = a})

-- | For mutating operation requests only. An optional identifier specified
-- by the client. Must be unique for operation resources in the Operations
-- collection.
mzgClientOperationId :: Lens' ManagedZonesGet (Maybe Text)
mzgClientOperationId
  = lens _mzgClientOperationId
      (\ s a -> s{_mzgClientOperationId = a})

-- | JSONP
mzgCallback :: Lens' ManagedZonesGet (Maybe Text)
mzgCallback
  = lens _mzgCallback (\ s a -> s{_mzgCallback = a})

instance GoogleRequest ManagedZonesGet where
        type Rs ManagedZonesGet = ManagedZone
        type Scopes ManagedZonesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.clouddns.readonly",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ManagedZonesGet'{..}
          = go _mzgProject _mzgManagedZone _mzgXgafv
              _mzgUploadProtocol
              _mzgAccessToken
              _mzgUploadType
              _mzgClientOperationId
              _mzgCallback
              (Just AltJSON)
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagedZonesGetResource)
                      mempty
