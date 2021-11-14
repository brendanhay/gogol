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
-- Module      : Network.Google.Resource.Run.Namespaces.Revisions.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about a revision.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.revisions.get@.
module Network.Google.Resource.Run.Namespaces.Revisions.Get
    (
    -- * REST Resource
      NamespacesRevisionsGetResource

    -- * Creating a Request
    , namespacesRevisionsGet
    , NamespacesRevisionsGet

    -- * Request Lenses
    , namXgafv
    , namUploadProtocol
    , namAccessToken
    , namUploadType
    , namName
    , namCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.revisions.get@ method which the
-- 'NamespacesRevisionsGet' request conforms to.
type NamespacesRevisionsGetResource =
     "apis" :>
       "serving.knative.dev" :>
         "v1" :>
           Capture "name" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Revision

-- | Get information about a revision.
--
-- /See:/ 'namespacesRevisionsGet' smart constructor.
data NamespacesRevisionsGet =
  NamespacesRevisionsGet'
    { _namXgafv :: !(Maybe Xgafv)
    , _namUploadProtocol :: !(Maybe Text)
    , _namAccessToken :: !(Maybe Text)
    , _namUploadType :: !(Maybe Text)
    , _namName :: !Text
    , _namCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesRevisionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'namXgafv'
--
-- * 'namUploadProtocol'
--
-- * 'namAccessToken'
--
-- * 'namUploadType'
--
-- * 'namName'
--
-- * 'namCallback'
namespacesRevisionsGet
    :: Text -- ^ 'namName'
    -> NamespacesRevisionsGet
namespacesRevisionsGet pNamName_ =
  NamespacesRevisionsGet'
    { _namXgafv = Nothing
    , _namUploadProtocol = Nothing
    , _namAccessToken = Nothing
    , _namUploadType = Nothing
    , _namName = pNamName_
    , _namCallback = Nothing
    }


-- | V1 error format.
namXgafv :: Lens' NamespacesRevisionsGet (Maybe Xgafv)
namXgafv = lens _namXgafv (\ s a -> s{_namXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
namUploadProtocol :: Lens' NamespacesRevisionsGet (Maybe Text)
namUploadProtocol
  = lens _namUploadProtocol
      (\ s a -> s{_namUploadProtocol = a})

-- | OAuth access token.
namAccessToken :: Lens' NamespacesRevisionsGet (Maybe Text)
namAccessToken
  = lens _namAccessToken
      (\ s a -> s{_namAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
namUploadType :: Lens' NamespacesRevisionsGet (Maybe Text)
namUploadType
  = lens _namUploadType
      (\ s a -> s{_namUploadType = a})

-- | The name of the revision to retrieve. For Cloud Run (fully managed),
-- replace {namespace_id} with the project ID or number.
namName :: Lens' NamespacesRevisionsGet Text
namName = lens _namName (\ s a -> s{_namName = a})

-- | JSONP
namCallback :: Lens' NamespacesRevisionsGet (Maybe Text)
namCallback
  = lens _namCallback (\ s a -> s{_namCallback = a})

instance GoogleRequest NamespacesRevisionsGet where
        type Rs NamespacesRevisionsGet = Revision
        type Scopes NamespacesRevisionsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesRevisionsGet'{..}
          = go _namName _namXgafv _namUploadProtocol
              _namAccessToken
              _namUploadType
              _namCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy NamespacesRevisionsGetResource)
                      mempty
