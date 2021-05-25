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
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.managedZones.create@.
module Network.Google.Resource.DNS.ManagedZones.Create
    (
    -- * REST Resource
      ManagedZonesCreateResource

    -- * Creating a Request
    , managedZonesCreate
    , ManagedZonesCreate

    -- * Request Lenses
    , mzcXgafv
    , mzcUploadProtocol
    , mzcProject
    , mzcAccessToken
    , mzcUploadType
    , mzcPayload
    , mzcClientOperationId
    , mzcCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.managedZones.create@ method which the
-- 'ManagedZonesCreate' request conforms to.
type ManagedZonesCreateResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "clientOperationId" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ManagedZone :>
                               Post '[JSON] ManagedZone

-- | Create a new ManagedZone.
--
-- /See:/ 'managedZonesCreate' smart constructor.
data ManagedZonesCreate =
  ManagedZonesCreate'
    { _mzcXgafv :: !(Maybe Xgafv)
    , _mzcUploadProtocol :: !(Maybe Text)
    , _mzcProject :: !Text
    , _mzcAccessToken :: !(Maybe Text)
    , _mzcUploadType :: !(Maybe Text)
    , _mzcPayload :: !ManagedZone
    , _mzcClientOperationId :: !(Maybe Text)
    , _mzcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZonesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzcXgafv'
--
-- * 'mzcUploadProtocol'
--
-- * 'mzcProject'
--
-- * 'mzcAccessToken'
--
-- * 'mzcUploadType'
--
-- * 'mzcPayload'
--
-- * 'mzcClientOperationId'
--
-- * 'mzcCallback'
managedZonesCreate
    :: Text -- ^ 'mzcProject'
    -> ManagedZone -- ^ 'mzcPayload'
    -> ManagedZonesCreate
managedZonesCreate pMzcProject_ pMzcPayload_ =
  ManagedZonesCreate'
    { _mzcXgafv = Nothing
    , _mzcUploadProtocol = Nothing
    , _mzcProject = pMzcProject_
    , _mzcAccessToken = Nothing
    , _mzcUploadType = Nothing
    , _mzcPayload = pMzcPayload_
    , _mzcClientOperationId = Nothing
    , _mzcCallback = Nothing
    }


-- | V1 error format.
mzcXgafv :: Lens' ManagedZonesCreate (Maybe Xgafv)
mzcXgafv = lens _mzcXgafv (\ s a -> s{_mzcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mzcUploadProtocol :: Lens' ManagedZonesCreate (Maybe Text)
mzcUploadProtocol
  = lens _mzcUploadProtocol
      (\ s a -> s{_mzcUploadProtocol = a})

-- | Identifies the project addressed by this request.
mzcProject :: Lens' ManagedZonesCreate Text
mzcProject
  = lens _mzcProject (\ s a -> s{_mzcProject = a})

-- | OAuth access token.
mzcAccessToken :: Lens' ManagedZonesCreate (Maybe Text)
mzcAccessToken
  = lens _mzcAccessToken
      (\ s a -> s{_mzcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mzcUploadType :: Lens' ManagedZonesCreate (Maybe Text)
mzcUploadType
  = lens _mzcUploadType
      (\ s a -> s{_mzcUploadType = a})

-- | Multipart request metadata.
mzcPayload :: Lens' ManagedZonesCreate ManagedZone
mzcPayload
  = lens _mzcPayload (\ s a -> s{_mzcPayload = a})

-- | For mutating operation requests only. An optional identifier specified
-- by the client. Must be unique for operation resources in the Operations
-- collection.
mzcClientOperationId :: Lens' ManagedZonesCreate (Maybe Text)
mzcClientOperationId
  = lens _mzcClientOperationId
      (\ s a -> s{_mzcClientOperationId = a})

-- | JSONP
mzcCallback :: Lens' ManagedZonesCreate (Maybe Text)
mzcCallback
  = lens _mzcCallback (\ s a -> s{_mzcCallback = a})

instance GoogleRequest ManagedZonesCreate where
        type Rs ManagedZonesCreate = ManagedZone
        type Scopes ManagedZonesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ManagedZonesCreate'{..}
          = go _mzcProject _mzcXgafv _mzcUploadProtocol
              _mzcAccessToken
              _mzcUploadType
              _mzcClientOperationId
              _mzcCallback
              (Just AltJSON)
              _mzcPayload
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagedZonesCreateResource)
                      mempty
