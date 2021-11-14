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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a previously created ManagedZone.
--
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.managedZones.delete@.
module Network.Google.Resource.DNS.ManagedZones.Delete
    (
    -- * REST Resource
      ManagedZonesDeleteResource

    -- * Creating a Request
    , managedZonesDelete
    , ManagedZonesDelete

    -- * Request Lenses
    , mzdXgafv
    , mzdUploadProtocol
    , mzdProject
    , mzdAccessToken
    , mzdUploadType
    , mzdManagedZone
    , mzdClientOperationId
    , mzdCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.managedZones.delete@ method which the
-- 'ManagedZonesDelete' request conforms to.
type ManagedZonesDeleteResource =
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
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a previously created ManagedZone.
--
-- /See:/ 'managedZonesDelete' smart constructor.
data ManagedZonesDelete =
  ManagedZonesDelete'
    { _mzdXgafv :: !(Maybe Xgafv)
    , _mzdUploadProtocol :: !(Maybe Text)
    , _mzdProject :: !Text
    , _mzdAccessToken :: !(Maybe Text)
    , _mzdUploadType :: !(Maybe Text)
    , _mzdManagedZone :: !Text
    , _mzdClientOperationId :: !(Maybe Text)
    , _mzdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZonesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzdXgafv'
--
-- * 'mzdUploadProtocol'
--
-- * 'mzdProject'
--
-- * 'mzdAccessToken'
--
-- * 'mzdUploadType'
--
-- * 'mzdManagedZone'
--
-- * 'mzdClientOperationId'
--
-- * 'mzdCallback'
managedZonesDelete
    :: Text -- ^ 'mzdProject'
    -> Text -- ^ 'mzdManagedZone'
    -> ManagedZonesDelete
managedZonesDelete pMzdProject_ pMzdManagedZone_ =
  ManagedZonesDelete'
    { _mzdXgafv = Nothing
    , _mzdUploadProtocol = Nothing
    , _mzdProject = pMzdProject_
    , _mzdAccessToken = Nothing
    , _mzdUploadType = Nothing
    , _mzdManagedZone = pMzdManagedZone_
    , _mzdClientOperationId = Nothing
    , _mzdCallback = Nothing
    }


-- | V1 error format.
mzdXgafv :: Lens' ManagedZonesDelete (Maybe Xgafv)
mzdXgafv = lens _mzdXgafv (\ s a -> s{_mzdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mzdUploadProtocol :: Lens' ManagedZonesDelete (Maybe Text)
mzdUploadProtocol
  = lens _mzdUploadProtocol
      (\ s a -> s{_mzdUploadProtocol = a})

-- | Identifies the project addressed by this request.
mzdProject :: Lens' ManagedZonesDelete Text
mzdProject
  = lens _mzdProject (\ s a -> s{_mzdProject = a})

-- | OAuth access token.
mzdAccessToken :: Lens' ManagedZonesDelete (Maybe Text)
mzdAccessToken
  = lens _mzdAccessToken
      (\ s a -> s{_mzdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mzdUploadType :: Lens' ManagedZonesDelete (Maybe Text)
mzdUploadType
  = lens _mzdUploadType
      (\ s a -> s{_mzdUploadType = a})

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

-- | JSONP
mzdCallback :: Lens' ManagedZonesDelete (Maybe Text)
mzdCallback
  = lens _mzdCallback (\ s a -> s{_mzdCallback = a})

instance GoogleRequest ManagedZonesDelete where
        type Rs ManagedZonesDelete = ()
        type Scopes ManagedZonesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ManagedZonesDelete'{..}
          = go _mzdProject _mzdManagedZone _mzdXgafv
              _mzdUploadProtocol
              _mzdAccessToken
              _mzdUploadType
              _mzdClientOperationId
              _mzdCallback
              (Just AltJSON)
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagedZonesDeleteResource)
                      mempty
