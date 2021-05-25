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
-- Apply a partial update to an existing ManagedZone.
--
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.managedZones.patch@.
module Network.Google.Resource.DNS.ManagedZones.Patch
    (
    -- * REST Resource
      ManagedZonesPatchResource

    -- * Creating a Request
    , managedZonesPatch
    , ManagedZonesPatch

    -- * Request Lenses
    , mzpXgafv
    , mzpUploadProtocol
    , mzpProject
    , mzpAccessToken
    , mzpUploadType
    , mzpPayload
    , mzpManagedZone
    , mzpClientOperationId
    , mzpCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.managedZones.patch@ method which the
-- 'ManagedZonesPatch' request conforms to.
type ManagedZonesPatchResource =
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
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] ManagedZone :>
                                 Patch '[JSON] Operation

-- | Apply a partial update to an existing ManagedZone.
--
-- /See:/ 'managedZonesPatch' smart constructor.
data ManagedZonesPatch =
  ManagedZonesPatch'
    { _mzpXgafv :: !(Maybe Xgafv)
    , _mzpUploadProtocol :: !(Maybe Text)
    , _mzpProject :: !Text
    , _mzpAccessToken :: !(Maybe Text)
    , _mzpUploadType :: !(Maybe Text)
    , _mzpPayload :: !ManagedZone
    , _mzpManagedZone :: !Text
    , _mzpClientOperationId :: !(Maybe Text)
    , _mzpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZonesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzpXgafv'
--
-- * 'mzpUploadProtocol'
--
-- * 'mzpProject'
--
-- * 'mzpAccessToken'
--
-- * 'mzpUploadType'
--
-- * 'mzpPayload'
--
-- * 'mzpManagedZone'
--
-- * 'mzpClientOperationId'
--
-- * 'mzpCallback'
managedZonesPatch
    :: Text -- ^ 'mzpProject'
    -> ManagedZone -- ^ 'mzpPayload'
    -> Text -- ^ 'mzpManagedZone'
    -> ManagedZonesPatch
managedZonesPatch pMzpProject_ pMzpPayload_ pMzpManagedZone_ =
  ManagedZonesPatch'
    { _mzpXgafv = Nothing
    , _mzpUploadProtocol = Nothing
    , _mzpProject = pMzpProject_
    , _mzpAccessToken = Nothing
    , _mzpUploadType = Nothing
    , _mzpPayload = pMzpPayload_
    , _mzpManagedZone = pMzpManagedZone_
    , _mzpClientOperationId = Nothing
    , _mzpCallback = Nothing
    }


-- | V1 error format.
mzpXgafv :: Lens' ManagedZonesPatch (Maybe Xgafv)
mzpXgafv = lens _mzpXgafv (\ s a -> s{_mzpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mzpUploadProtocol :: Lens' ManagedZonesPatch (Maybe Text)
mzpUploadProtocol
  = lens _mzpUploadProtocol
      (\ s a -> s{_mzpUploadProtocol = a})

-- | Identifies the project addressed by this request.
mzpProject :: Lens' ManagedZonesPatch Text
mzpProject
  = lens _mzpProject (\ s a -> s{_mzpProject = a})

-- | OAuth access token.
mzpAccessToken :: Lens' ManagedZonesPatch (Maybe Text)
mzpAccessToken
  = lens _mzpAccessToken
      (\ s a -> s{_mzpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mzpUploadType :: Lens' ManagedZonesPatch (Maybe Text)
mzpUploadType
  = lens _mzpUploadType
      (\ s a -> s{_mzpUploadType = a})

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

-- | JSONP
mzpCallback :: Lens' ManagedZonesPatch (Maybe Text)
mzpCallback
  = lens _mzpCallback (\ s a -> s{_mzpCallback = a})

instance GoogleRequest ManagedZonesPatch where
        type Rs ManagedZonesPatch = Operation
        type Scopes ManagedZonesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ManagedZonesPatch'{..}
          = go _mzpProject _mzpManagedZone _mzpXgafv
              _mzpUploadProtocol
              _mzpAccessToken
              _mzpUploadType
              _mzpClientOperationId
              _mzpCallback
              (Just AltJSON)
              _mzpPayload
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagedZonesPatchResource)
                      mempty
