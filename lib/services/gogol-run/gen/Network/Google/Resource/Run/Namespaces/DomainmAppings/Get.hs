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
-- Module      : Network.Google.Resource.Run.Namespaces.DomainmAppings.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about a domain mapping.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.domainmappings.get@.
module Network.Google.Resource.Run.Namespaces.DomainmAppings.Get
    (
    -- * REST Resource
      NamespacesDomainmAppingsGetResource

    -- * Creating a Request
    , namespacesDomainmAppingsGet
    , NamespacesDomainmAppingsGet

    -- * Request Lenses
    , ndagXgafv
    , ndagUploadProtocol
    , ndagAccessToken
    , ndagUploadType
    , ndagName
    , ndagCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.domainmappings.get@ method which the
-- 'NamespacesDomainmAppingsGet' request conforms to.
type NamespacesDomainmAppingsGetResource =
     "apis" :>
       "domains.cloudrun.com" :>
         "v1" :>
           Capture "name" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] DomainMApping

-- | Get information about a domain mapping.
--
-- /See:/ 'namespacesDomainmAppingsGet' smart constructor.
data NamespacesDomainmAppingsGet =
  NamespacesDomainmAppingsGet'
    { _ndagXgafv :: !(Maybe Xgafv)
    , _ndagUploadProtocol :: !(Maybe Text)
    , _ndagAccessToken :: !(Maybe Text)
    , _ndagUploadType :: !(Maybe Text)
    , _ndagName :: !Text
    , _ndagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesDomainmAppingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndagXgafv'
--
-- * 'ndagUploadProtocol'
--
-- * 'ndagAccessToken'
--
-- * 'ndagUploadType'
--
-- * 'ndagName'
--
-- * 'ndagCallback'
namespacesDomainmAppingsGet
    :: Text -- ^ 'ndagName'
    -> NamespacesDomainmAppingsGet
namespacesDomainmAppingsGet pNdagName_ =
  NamespacesDomainmAppingsGet'
    { _ndagXgafv = Nothing
    , _ndagUploadProtocol = Nothing
    , _ndagAccessToken = Nothing
    , _ndagUploadType = Nothing
    , _ndagName = pNdagName_
    , _ndagCallback = Nothing
    }


-- | V1 error format.
ndagXgafv :: Lens' NamespacesDomainmAppingsGet (Maybe Xgafv)
ndagXgafv
  = lens _ndagXgafv (\ s a -> s{_ndagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ndagUploadProtocol :: Lens' NamespacesDomainmAppingsGet (Maybe Text)
ndagUploadProtocol
  = lens _ndagUploadProtocol
      (\ s a -> s{_ndagUploadProtocol = a})

-- | OAuth access token.
ndagAccessToken :: Lens' NamespacesDomainmAppingsGet (Maybe Text)
ndagAccessToken
  = lens _ndagAccessToken
      (\ s a -> s{_ndagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ndagUploadType :: Lens' NamespacesDomainmAppingsGet (Maybe Text)
ndagUploadType
  = lens _ndagUploadType
      (\ s a -> s{_ndagUploadType = a})

-- | The name of the domain mapping to retrieve. For Cloud Run (fully
-- managed), replace {namespace_id} with the project ID or number.
ndagName :: Lens' NamespacesDomainmAppingsGet Text
ndagName = lens _ndagName (\ s a -> s{_ndagName = a})

-- | JSONP
ndagCallback :: Lens' NamespacesDomainmAppingsGet (Maybe Text)
ndagCallback
  = lens _ndagCallback (\ s a -> s{_ndagCallback = a})

instance GoogleRequest NamespacesDomainmAppingsGet
         where
        type Rs NamespacesDomainmAppingsGet = DomainMApping
        type Scopes NamespacesDomainmAppingsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesDomainmAppingsGet'{..}
          = go _ndagName _ndagXgafv _ndagUploadProtocol
              _ndagAccessToken
              _ndagUploadType
              _ndagCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy NamespacesDomainmAppingsGetResource)
                      mempty
