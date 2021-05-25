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
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.managedZones.update@.
module Network.Google.Resource.DNS.ManagedZones.Update
    (
    -- * REST Resource
      ManagedZonesUpdateResource

    -- * Creating a Request
    , managedZonesUpdate
    , ManagedZonesUpdate

    -- * Request Lenses
    , mzuXgafv
    , mzuUploadProtocol
    , mzuProject
    , mzuAccessToken
    , mzuUploadType
    , mzuPayload
    , mzuManagedZone
    , mzuClientOperationId
    , mzuCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.managedZones.update@ method which the
-- 'ManagedZonesUpdate' request conforms to.
type ManagedZonesUpdateResource =
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
                                 Put '[JSON] Operation

-- | Update an existing ManagedZone.
--
-- /See:/ 'managedZonesUpdate' smart constructor.
data ManagedZonesUpdate =
  ManagedZonesUpdate'
    { _mzuXgafv :: !(Maybe Xgafv)
    , _mzuUploadProtocol :: !(Maybe Text)
    , _mzuProject :: !Text
    , _mzuAccessToken :: !(Maybe Text)
    , _mzuUploadType :: !(Maybe Text)
    , _mzuPayload :: !ManagedZone
    , _mzuManagedZone :: !Text
    , _mzuClientOperationId :: !(Maybe Text)
    , _mzuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZonesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzuXgafv'
--
-- * 'mzuUploadProtocol'
--
-- * 'mzuProject'
--
-- * 'mzuAccessToken'
--
-- * 'mzuUploadType'
--
-- * 'mzuPayload'
--
-- * 'mzuManagedZone'
--
-- * 'mzuClientOperationId'
--
-- * 'mzuCallback'
managedZonesUpdate
    :: Text -- ^ 'mzuProject'
    -> ManagedZone -- ^ 'mzuPayload'
    -> Text -- ^ 'mzuManagedZone'
    -> ManagedZonesUpdate
managedZonesUpdate pMzuProject_ pMzuPayload_ pMzuManagedZone_ =
  ManagedZonesUpdate'
    { _mzuXgafv = Nothing
    , _mzuUploadProtocol = Nothing
    , _mzuProject = pMzuProject_
    , _mzuAccessToken = Nothing
    , _mzuUploadType = Nothing
    , _mzuPayload = pMzuPayload_
    , _mzuManagedZone = pMzuManagedZone_
    , _mzuClientOperationId = Nothing
    , _mzuCallback = Nothing
    }


-- | V1 error format.
mzuXgafv :: Lens' ManagedZonesUpdate (Maybe Xgafv)
mzuXgafv = lens _mzuXgafv (\ s a -> s{_mzuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mzuUploadProtocol :: Lens' ManagedZonesUpdate (Maybe Text)
mzuUploadProtocol
  = lens _mzuUploadProtocol
      (\ s a -> s{_mzuUploadProtocol = a})

-- | Identifies the project addressed by this request.
mzuProject :: Lens' ManagedZonesUpdate Text
mzuProject
  = lens _mzuProject (\ s a -> s{_mzuProject = a})

-- | OAuth access token.
mzuAccessToken :: Lens' ManagedZonesUpdate (Maybe Text)
mzuAccessToken
  = lens _mzuAccessToken
      (\ s a -> s{_mzuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mzuUploadType :: Lens' ManagedZonesUpdate (Maybe Text)
mzuUploadType
  = lens _mzuUploadType
      (\ s a -> s{_mzuUploadType = a})

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

-- | JSONP
mzuCallback :: Lens' ManagedZonesUpdate (Maybe Text)
mzuCallback
  = lens _mzuCallback (\ s a -> s{_mzuCallback = a})

instance GoogleRequest ManagedZonesUpdate where
        type Rs ManagedZonesUpdate = Operation
        type Scopes ManagedZonesUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ManagedZonesUpdate'{..}
          = go _mzuProject _mzuManagedZone _mzuXgafv
              _mzuUploadProtocol
              _mzuAccessToken
              _mzuUploadType
              _mzuClientOperationId
              _mzuCallback
              (Just AltJSON)
              _mzuPayload
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagedZonesUpdateResource)
                      mempty
