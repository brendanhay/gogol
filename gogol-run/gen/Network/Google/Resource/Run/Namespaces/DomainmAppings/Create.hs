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
-- Module      : Network.Google.Resource.Run.Namespaces.DomainmAppings.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new domain mapping.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.domainmappings.create@.
module Network.Google.Resource.Run.Namespaces.DomainmAppings.Create
    (
    -- * REST Resource
      NamespacesDomainmAppingsCreateResource

    -- * Creating a Request
    , namespacesDomainmAppingsCreate
    , NamespacesDomainmAppingsCreate

    -- * Request Lenses
    , ndacParent
    , ndacXgafv
    , ndacUploadProtocol
    , ndacAccessToken
    , ndacUploadType
    , ndacPayload
    , ndacDryRun
    , ndacCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.domainmappings.create@ method which the
-- 'NamespacesDomainmAppingsCreate' request conforms to.
type NamespacesDomainmAppingsCreateResource =
     "apis" :>
       "domains.cloudrun.com" :>
         "v1" :>
           Capture "parent" Text :>
             "domainmappings" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "dryRun" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] DomainMApping :>
                               Post '[JSON] DomainMApping

-- | Create a new domain mapping.
--
-- /See:/ 'namespacesDomainmAppingsCreate' smart constructor.
data NamespacesDomainmAppingsCreate =
  NamespacesDomainmAppingsCreate'
    { _ndacParent :: !Text
    , _ndacXgafv :: !(Maybe Xgafv)
    , _ndacUploadProtocol :: !(Maybe Text)
    , _ndacAccessToken :: !(Maybe Text)
    , _ndacUploadType :: !(Maybe Text)
    , _ndacPayload :: !DomainMApping
    , _ndacDryRun :: !(Maybe Text)
    , _ndacCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesDomainmAppingsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndacParent'
--
-- * 'ndacXgafv'
--
-- * 'ndacUploadProtocol'
--
-- * 'ndacAccessToken'
--
-- * 'ndacUploadType'
--
-- * 'ndacPayload'
--
-- * 'ndacDryRun'
--
-- * 'ndacCallback'
namespacesDomainmAppingsCreate
    :: Text -- ^ 'ndacParent'
    -> DomainMApping -- ^ 'ndacPayload'
    -> NamespacesDomainmAppingsCreate
namespacesDomainmAppingsCreate pNdacParent_ pNdacPayload_ =
  NamespacesDomainmAppingsCreate'
    { _ndacParent = pNdacParent_
    , _ndacXgafv = Nothing
    , _ndacUploadProtocol = Nothing
    , _ndacAccessToken = Nothing
    , _ndacUploadType = Nothing
    , _ndacPayload = pNdacPayload_
    , _ndacDryRun = Nothing
    , _ndacCallback = Nothing
    }


-- | The namespace in which the domain mapping should be created. For Cloud
-- Run (fully managed), replace {namespace_id} with the project ID or
-- number.
ndacParent :: Lens' NamespacesDomainmAppingsCreate Text
ndacParent
  = lens _ndacParent (\ s a -> s{_ndacParent = a})

-- | V1 error format.
ndacXgafv :: Lens' NamespacesDomainmAppingsCreate (Maybe Xgafv)
ndacXgafv
  = lens _ndacXgafv (\ s a -> s{_ndacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ndacUploadProtocol :: Lens' NamespacesDomainmAppingsCreate (Maybe Text)
ndacUploadProtocol
  = lens _ndacUploadProtocol
      (\ s a -> s{_ndacUploadProtocol = a})

-- | OAuth access token.
ndacAccessToken :: Lens' NamespacesDomainmAppingsCreate (Maybe Text)
ndacAccessToken
  = lens _ndacAccessToken
      (\ s a -> s{_ndacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ndacUploadType :: Lens' NamespacesDomainmAppingsCreate (Maybe Text)
ndacUploadType
  = lens _ndacUploadType
      (\ s a -> s{_ndacUploadType = a})

-- | Multipart request metadata.
ndacPayload :: Lens' NamespacesDomainmAppingsCreate DomainMApping
ndacPayload
  = lens _ndacPayload (\ s a -> s{_ndacPayload = a})

-- | Indicates that the server should validate the request and populate
-- default values without persisting the request. Supported values: \`all\`
ndacDryRun :: Lens' NamespacesDomainmAppingsCreate (Maybe Text)
ndacDryRun
  = lens _ndacDryRun (\ s a -> s{_ndacDryRun = a})

-- | JSONP
ndacCallback :: Lens' NamespacesDomainmAppingsCreate (Maybe Text)
ndacCallback
  = lens _ndacCallback (\ s a -> s{_ndacCallback = a})

instance GoogleRequest NamespacesDomainmAppingsCreate
         where
        type Rs NamespacesDomainmAppingsCreate =
             DomainMApping
        type Scopes NamespacesDomainmAppingsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesDomainmAppingsCreate'{..}
          = go _ndacParent _ndacXgafv _ndacUploadProtocol
              _ndacAccessToken
              _ndacUploadType
              _ndacDryRun
              _ndacCallback
              (Just AltJSON)
              _ndacPayload
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy NamespacesDomainmAppingsCreateResource)
                      mempty
