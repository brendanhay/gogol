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
-- Module      : Network.Google.Resource.AppEngine.Apps.DomainMAppings.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified domain mapping. To map an SSL certificate to a
-- domain mapping, update certificate_id to point to an
-- AuthorizedCertificate resource. A user must be authorized to administer
-- the associated domain in order to update a DomainMapping resource.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.domainMappings.patch@.
module Network.Google.Resource.AppEngine.Apps.DomainMAppings.Patch
    (
    -- * REST Resource
      AppsDomainMAppingsPatchResource

    -- * Creating a Request
    , appsDomainMAppingsPatch
    , AppsDomainMAppingsPatch

    -- * Request Lenses
    , admapXgafv
    , admapUploadProtocol
    , admapUpdateMask
    , admapAccessToken
    , admapUploadType
    , admapPayload
    , admapAppsId
    , admapDomainMAppingsId
    , admapCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.domainMappings.patch@ method which the
-- 'AppsDomainMAppingsPatch' request conforms to.
type AppsDomainMAppingsPatchResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "domainMappings" :>
             Capture "domainMappingsId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "updateMask" GFieldMask :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] DomainMApping :>
                               Patch '[JSON] Operation

-- | Updates the specified domain mapping. To map an SSL certificate to a
-- domain mapping, update certificate_id to point to an
-- AuthorizedCertificate resource. A user must be authorized to administer
-- the associated domain in order to update a DomainMapping resource.
--
-- /See:/ 'appsDomainMAppingsPatch' smart constructor.
data AppsDomainMAppingsPatch =
  AppsDomainMAppingsPatch'
    { _admapXgafv :: !(Maybe Xgafv)
    , _admapUploadProtocol :: !(Maybe Text)
    , _admapUpdateMask :: !(Maybe GFieldMask)
    , _admapAccessToken :: !(Maybe Text)
    , _admapUploadType :: !(Maybe Text)
    , _admapPayload :: !DomainMApping
    , _admapAppsId :: !Text
    , _admapDomainMAppingsId :: !Text
    , _admapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsDomainMAppingsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'admapXgafv'
--
-- * 'admapUploadProtocol'
--
-- * 'admapUpdateMask'
--
-- * 'admapAccessToken'
--
-- * 'admapUploadType'
--
-- * 'admapPayload'
--
-- * 'admapAppsId'
--
-- * 'admapDomainMAppingsId'
--
-- * 'admapCallback'
appsDomainMAppingsPatch
    :: DomainMApping -- ^ 'admapPayload'
    -> Text -- ^ 'admapAppsId'
    -> Text -- ^ 'admapDomainMAppingsId'
    -> AppsDomainMAppingsPatch
appsDomainMAppingsPatch pAdmapPayload_ pAdmapAppsId_ pAdmapDomainMAppingsId_ =
  AppsDomainMAppingsPatch'
    { _admapXgafv = Nothing
    , _admapUploadProtocol = Nothing
    , _admapUpdateMask = Nothing
    , _admapAccessToken = Nothing
    , _admapUploadType = Nothing
    , _admapPayload = pAdmapPayload_
    , _admapAppsId = pAdmapAppsId_
    , _admapDomainMAppingsId = pAdmapDomainMAppingsId_
    , _admapCallback = Nothing
    }


-- | V1 error format.
admapXgafv :: Lens' AppsDomainMAppingsPatch (Maybe Xgafv)
admapXgafv
  = lens _admapXgafv (\ s a -> s{_admapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
admapUploadProtocol :: Lens' AppsDomainMAppingsPatch (Maybe Text)
admapUploadProtocol
  = lens _admapUploadProtocol
      (\ s a -> s{_admapUploadProtocol = a})

-- | Required. Standard field mask for the set of fields to be updated.
admapUpdateMask :: Lens' AppsDomainMAppingsPatch (Maybe GFieldMask)
admapUpdateMask
  = lens _admapUpdateMask
      (\ s a -> s{_admapUpdateMask = a})

-- | OAuth access token.
admapAccessToken :: Lens' AppsDomainMAppingsPatch (Maybe Text)
admapAccessToken
  = lens _admapAccessToken
      (\ s a -> s{_admapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
admapUploadType :: Lens' AppsDomainMAppingsPatch (Maybe Text)
admapUploadType
  = lens _admapUploadType
      (\ s a -> s{_admapUploadType = a})

-- | Multipart request metadata.
admapPayload :: Lens' AppsDomainMAppingsPatch DomainMApping
admapPayload
  = lens _admapPayload (\ s a -> s{_admapPayload = a})

-- | Part of \`name\`. Name of the resource to update. Example:
-- apps\/myapp\/domainMappings\/example.com.
admapAppsId :: Lens' AppsDomainMAppingsPatch Text
admapAppsId
  = lens _admapAppsId (\ s a -> s{_admapAppsId = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
admapDomainMAppingsId :: Lens' AppsDomainMAppingsPatch Text
admapDomainMAppingsId
  = lens _admapDomainMAppingsId
      (\ s a -> s{_admapDomainMAppingsId = a})

-- | JSONP
admapCallback :: Lens' AppsDomainMAppingsPatch (Maybe Text)
admapCallback
  = lens _admapCallback
      (\ s a -> s{_admapCallback = a})

instance GoogleRequest AppsDomainMAppingsPatch where
        type Rs AppsDomainMAppingsPatch = Operation
        type Scopes AppsDomainMAppingsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsDomainMAppingsPatch'{..}
          = go _admapAppsId _admapDomainMAppingsId _admapXgafv
              _admapUploadProtocol
              _admapUpdateMask
              _admapAccessToken
              _admapUploadType
              _admapCallback
              (Just AltJSON)
              _admapPayload
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsDomainMAppingsPatchResource)
                      mempty
