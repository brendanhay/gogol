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
-- Module      : Network.Google.Resource.DNS.Changes.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Atomically update the ResourceRecordSet collection.
--
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.changes.create@.
module Network.Google.Resource.DNS.Changes.Create
    (
    -- * REST Resource
      ChangesCreateResource

    -- * Creating a Request
    , changesCreate
    , ChangesCreate

    -- * Request Lenses
    , ccXgafv
    , ccUploadProtocol
    , ccProject
    , ccAccessToken
    , ccUploadType
    , ccPayload
    , ccManagedZone
    , ccClientOperationId
    , ccCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.changes.create@ method which the
-- 'ChangesCreate' request conforms to.
type ChangesCreateResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               Capture "managedZone" Text :>
                 "changes" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "clientOperationId" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Change :> Post '[JSON] Change

-- | Atomically update the ResourceRecordSet collection.
--
-- /See:/ 'changesCreate' smart constructor.
data ChangesCreate =
  ChangesCreate'
    { _ccXgafv :: !(Maybe Xgafv)
    , _ccUploadProtocol :: !(Maybe Text)
    , _ccProject :: !Text
    , _ccAccessToken :: !(Maybe Text)
    , _ccUploadType :: !(Maybe Text)
    , _ccPayload :: !Change
    , _ccManagedZone :: !Text
    , _ccClientOperationId :: !(Maybe Text)
    , _ccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChangesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccXgafv'
--
-- * 'ccUploadProtocol'
--
-- * 'ccProject'
--
-- * 'ccAccessToken'
--
-- * 'ccUploadType'
--
-- * 'ccPayload'
--
-- * 'ccManagedZone'
--
-- * 'ccClientOperationId'
--
-- * 'ccCallback'
changesCreate
    :: Text -- ^ 'ccProject'
    -> Change -- ^ 'ccPayload'
    -> Text -- ^ 'ccManagedZone'
    -> ChangesCreate
changesCreate pCcProject_ pCcPayload_ pCcManagedZone_ =
  ChangesCreate'
    { _ccXgafv = Nothing
    , _ccUploadProtocol = Nothing
    , _ccProject = pCcProject_
    , _ccAccessToken = Nothing
    , _ccUploadType = Nothing
    , _ccPayload = pCcPayload_
    , _ccManagedZone = pCcManagedZone_
    , _ccClientOperationId = Nothing
    , _ccCallback = Nothing
    }


-- | V1 error format.
ccXgafv :: Lens' ChangesCreate (Maybe Xgafv)
ccXgafv = lens _ccXgafv (\ s a -> s{_ccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccUploadProtocol :: Lens' ChangesCreate (Maybe Text)
ccUploadProtocol
  = lens _ccUploadProtocol
      (\ s a -> s{_ccUploadProtocol = a})

-- | Identifies the project addressed by this request.
ccProject :: Lens' ChangesCreate Text
ccProject
  = lens _ccProject (\ s a -> s{_ccProject = a})

-- | OAuth access token.
ccAccessToken :: Lens' ChangesCreate (Maybe Text)
ccAccessToken
  = lens _ccAccessToken
      (\ s a -> s{_ccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccUploadType :: Lens' ChangesCreate (Maybe Text)
ccUploadType
  = lens _ccUploadType (\ s a -> s{_ccUploadType = a})

-- | Multipart request metadata.
ccPayload :: Lens' ChangesCreate Change
ccPayload
  = lens _ccPayload (\ s a -> s{_ccPayload = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
ccManagedZone :: Lens' ChangesCreate Text
ccManagedZone
  = lens _ccManagedZone
      (\ s a -> s{_ccManagedZone = a})

-- | For mutating operation requests only. An optional identifier specified
-- by the client. Must be unique for operation resources in the Operations
-- collection.
ccClientOperationId :: Lens' ChangesCreate (Maybe Text)
ccClientOperationId
  = lens _ccClientOperationId
      (\ s a -> s{_ccClientOperationId = a})

-- | JSONP
ccCallback :: Lens' ChangesCreate (Maybe Text)
ccCallback
  = lens _ccCallback (\ s a -> s{_ccCallback = a})

instance GoogleRequest ChangesCreate where
        type Rs ChangesCreate = Change
        type Scopes ChangesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ChangesCreate'{..}
          = go _ccProject _ccManagedZone _ccXgafv
              _ccUploadProtocol
              _ccAccessToken
              _ccUploadType
              _ccClientOperationId
              _ccCallback
              (Just AltJSON)
              _ccPayload
              dNSService
          where go
                  = buildClient (Proxy :: Proxy ChangesCreateResource)
                      mempty
