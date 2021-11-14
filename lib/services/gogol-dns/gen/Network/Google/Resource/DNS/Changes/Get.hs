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
-- Module      : Network.Google.Resource.DNS.Changes.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetch the representation of an existing Change.
--
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.changes.get@.
module Network.Google.Resource.DNS.Changes.Get
    (
    -- * REST Resource
      ChangesGetResource

    -- * Creating a Request
    , changesGet
    , ChangesGet

    -- * Request Lenses
    , cgXgafv
    , cgUploadProtocol
    , cgProject
    , cgAccessToken
    , cgChangeId
    , cgUploadType
    , cgManagedZone
    , cgClientOperationId
    , cgCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.changes.get@ method which the
-- 'ChangesGet' request conforms to.
type ChangesGetResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               Capture "managedZone" Text :>
                 "changes" :>
                   Capture "changeId" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "clientOperationId" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :> Get '[JSON] Change

-- | Fetch the representation of an existing Change.
--
-- /See:/ 'changesGet' smart constructor.
data ChangesGet =
  ChangesGet'
    { _cgXgafv :: !(Maybe Xgafv)
    , _cgUploadProtocol :: !(Maybe Text)
    , _cgProject :: !Text
    , _cgAccessToken :: !(Maybe Text)
    , _cgChangeId :: !Text
    , _cgUploadType :: !(Maybe Text)
    , _cgManagedZone :: !Text
    , _cgClientOperationId :: !(Maybe Text)
    , _cgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChangesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgXgafv'
--
-- * 'cgUploadProtocol'
--
-- * 'cgProject'
--
-- * 'cgAccessToken'
--
-- * 'cgChangeId'
--
-- * 'cgUploadType'
--
-- * 'cgManagedZone'
--
-- * 'cgClientOperationId'
--
-- * 'cgCallback'
changesGet
    :: Text -- ^ 'cgProject'
    -> Text -- ^ 'cgChangeId'
    -> Text -- ^ 'cgManagedZone'
    -> ChangesGet
changesGet pCgProject_ pCgChangeId_ pCgManagedZone_ =
  ChangesGet'
    { _cgXgafv = Nothing
    , _cgUploadProtocol = Nothing
    , _cgProject = pCgProject_
    , _cgAccessToken = Nothing
    , _cgChangeId = pCgChangeId_
    , _cgUploadType = Nothing
    , _cgManagedZone = pCgManagedZone_
    , _cgClientOperationId = Nothing
    , _cgCallback = Nothing
    }


-- | V1 error format.
cgXgafv :: Lens' ChangesGet (Maybe Xgafv)
cgXgafv = lens _cgXgafv (\ s a -> s{_cgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgUploadProtocol :: Lens' ChangesGet (Maybe Text)
cgUploadProtocol
  = lens _cgUploadProtocol
      (\ s a -> s{_cgUploadProtocol = a})

-- | Identifies the project addressed by this request.
cgProject :: Lens' ChangesGet Text
cgProject
  = lens _cgProject (\ s a -> s{_cgProject = a})

-- | OAuth access token.
cgAccessToken :: Lens' ChangesGet (Maybe Text)
cgAccessToken
  = lens _cgAccessToken
      (\ s a -> s{_cgAccessToken = a})

-- | The identifier of the requested change, from a previous
-- ResourceRecordSetsChangeResponse.
cgChangeId :: Lens' ChangesGet Text
cgChangeId
  = lens _cgChangeId (\ s a -> s{_cgChangeId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgUploadType :: Lens' ChangesGet (Maybe Text)
cgUploadType
  = lens _cgUploadType (\ s a -> s{_cgUploadType = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
cgManagedZone :: Lens' ChangesGet Text
cgManagedZone
  = lens _cgManagedZone
      (\ s a -> s{_cgManagedZone = a})

-- | For mutating operation requests only. An optional identifier specified
-- by the client. Must be unique for operation resources in the Operations
-- collection.
cgClientOperationId :: Lens' ChangesGet (Maybe Text)
cgClientOperationId
  = lens _cgClientOperationId
      (\ s a -> s{_cgClientOperationId = a})

-- | JSONP
cgCallback :: Lens' ChangesGet (Maybe Text)
cgCallback
  = lens _cgCallback (\ s a -> s{_cgCallback = a})

instance GoogleRequest ChangesGet where
        type Rs ChangesGet = Change
        type Scopes ChangesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.clouddns.readonly",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ChangesGet'{..}
          = go _cgProject _cgManagedZone _cgChangeId _cgXgafv
              _cgUploadProtocol
              _cgAccessToken
              _cgUploadType
              _cgClientOperationId
              _cgCallback
              (Just AltJSON)
              dNSService
          where go
                  = buildClient (Proxy :: Proxy ChangesGetResource)
                      mempty
