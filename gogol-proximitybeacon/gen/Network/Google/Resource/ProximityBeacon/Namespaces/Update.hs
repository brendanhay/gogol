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
-- Module      : Network.Google.Resource.ProximityBeacon.Namespaces.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the information about the specified namespace. Only the
-- namespace visibility can be updated.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.namespaces.update@.
module Network.Google.Resource.ProximityBeacon.Namespaces.Update
    (
    -- * REST Resource
      NamespacesUpdateResource

    -- * Creating a Request
    , namespacesUpdate
    , NamespacesUpdate

    -- * Request Lenses
    , nuXgafv
    , nuUploadProtocol
    , nuAccessToken
    , nuUploadType
    , nuPayload
    , nuNamespaceName
    , nuProjectId
    , nuCallback
    ) where

import Network.Google.Prelude
import Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.namespaces.update@ method which the
-- 'NamespacesUpdate' request conforms to.
type NamespacesUpdateResource =
     "v1beta1" :>
       Capture "namespaceName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "projectId" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Namespace :> Put '[JSON] Namespace

-- | Updates the information about the specified namespace. Only the
-- namespace visibility can be updated.
--
-- /See:/ 'namespacesUpdate' smart constructor.
data NamespacesUpdate =
  NamespacesUpdate'
    { _nuXgafv :: !(Maybe Xgafv)
    , _nuUploadProtocol :: !(Maybe Text)
    , _nuAccessToken :: !(Maybe Text)
    , _nuUploadType :: !(Maybe Text)
    , _nuPayload :: !Namespace
    , _nuNamespaceName :: !Text
    , _nuProjectId :: !(Maybe Text)
    , _nuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nuXgafv'
--
-- * 'nuUploadProtocol'
--
-- * 'nuAccessToken'
--
-- * 'nuUploadType'
--
-- * 'nuPayload'
--
-- * 'nuNamespaceName'
--
-- * 'nuProjectId'
--
-- * 'nuCallback'
namespacesUpdate
    :: Namespace -- ^ 'nuPayload'
    -> Text -- ^ 'nuNamespaceName'
    -> NamespacesUpdate
namespacesUpdate pNuPayload_ pNuNamespaceName_ =
  NamespacesUpdate'
    { _nuXgafv = Nothing
    , _nuUploadProtocol = Nothing
    , _nuAccessToken = Nothing
    , _nuUploadType = Nothing
    , _nuPayload = pNuPayload_
    , _nuNamespaceName = pNuNamespaceName_
    , _nuProjectId = Nothing
    , _nuCallback = Nothing
    }


-- | V1 error format.
nuXgafv :: Lens' NamespacesUpdate (Maybe Xgafv)
nuXgafv = lens _nuXgafv (\ s a -> s{_nuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
nuUploadProtocol :: Lens' NamespacesUpdate (Maybe Text)
nuUploadProtocol
  = lens _nuUploadProtocol
      (\ s a -> s{_nuUploadProtocol = a})

-- | OAuth access token.
nuAccessToken :: Lens' NamespacesUpdate (Maybe Text)
nuAccessToken
  = lens _nuAccessToken
      (\ s a -> s{_nuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
nuUploadType :: Lens' NamespacesUpdate (Maybe Text)
nuUploadType
  = lens _nuUploadType (\ s a -> s{_nuUploadType = a})

-- | Multipart request metadata.
nuPayload :: Lens' NamespacesUpdate Namespace
nuPayload
  = lens _nuPayload (\ s a -> s{_nuPayload = a})

-- | Resource name of this namespace. Namespaces names have the format:
-- 'namespaces\/namespace'.
nuNamespaceName :: Lens' NamespacesUpdate Text
nuNamespaceName
  = lens _nuNamespaceName
      (\ s a -> s{_nuNamespaceName = a})

-- | The project id of the namespace to update. If the project id is not
-- specified then the project making the request is used. The project id
-- must match the project that owns the beacon. Optional.
nuProjectId :: Lens' NamespacesUpdate (Maybe Text)
nuProjectId
  = lens _nuProjectId (\ s a -> s{_nuProjectId = a})

-- | JSONP
nuCallback :: Lens' NamespacesUpdate (Maybe Text)
nuCallback
  = lens _nuCallback (\ s a -> s{_nuCallback = a})

instance GoogleRequest NamespacesUpdate where
        type Rs NamespacesUpdate = Namespace
        type Scopes NamespacesUpdate =
             '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
        requestClient NamespacesUpdate'{..}
          = go _nuNamespaceName _nuXgafv _nuUploadProtocol
              _nuAccessToken
              _nuUploadType
              _nuProjectId
              _nuCallback
              (Just AltJSON)
              _nuPayload
              proximityBeaconService
          where go
                  = buildClient
                      (Proxy :: Proxy NamespacesUpdateResource)
                      mempty
