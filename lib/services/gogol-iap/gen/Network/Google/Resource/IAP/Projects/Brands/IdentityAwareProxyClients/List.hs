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
-- Module      : Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing clients for the brand.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.brands.identityAwareProxyClients.list@.
module Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.List
    (
    -- * REST Resource
      ProjectsBrandsIdentityAwareProxyClientsListResource

    -- * Creating a Request
    , projectsBrandsIdentityAwareProxyClientsList
    , ProjectsBrandsIdentityAwareProxyClientsList

    -- * Request Lenses
    , pbiapclParent
    , pbiapclXgafv
    , pbiapclUploadProtocol
    , pbiapclAccessToken
    , pbiapclUploadType
    , pbiapclPageToken
    , pbiapclPageSize
    , pbiapclCallback
    ) where

import Network.Google.IAP.Types
import Network.Google.Prelude

-- | A resource alias for @iap.projects.brands.identityAwareProxyClients.list@ method which the
-- 'ProjectsBrandsIdentityAwareProxyClientsList' request conforms to.
type ProjectsBrandsIdentityAwareProxyClientsListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "identityAwareProxyClients" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListIdentityAwareProxyClientsResponse

-- | Lists the existing clients for the brand.
--
-- /See:/ 'projectsBrandsIdentityAwareProxyClientsList' smart constructor.
data ProjectsBrandsIdentityAwareProxyClientsList =
  ProjectsBrandsIdentityAwareProxyClientsList'
    { _pbiapclParent :: !Text
    , _pbiapclXgafv :: !(Maybe Xgafv)
    , _pbiapclUploadProtocol :: !(Maybe Text)
    , _pbiapclAccessToken :: !(Maybe Text)
    , _pbiapclUploadType :: !(Maybe Text)
    , _pbiapclPageToken :: !(Maybe Text)
    , _pbiapclPageSize :: !(Maybe (Textual Int32))
    , _pbiapclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsBrandsIdentityAwareProxyClientsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbiapclParent'
--
-- * 'pbiapclXgafv'
--
-- * 'pbiapclUploadProtocol'
--
-- * 'pbiapclAccessToken'
--
-- * 'pbiapclUploadType'
--
-- * 'pbiapclPageToken'
--
-- * 'pbiapclPageSize'
--
-- * 'pbiapclCallback'
projectsBrandsIdentityAwareProxyClientsList
    :: Text -- ^ 'pbiapclParent'
    -> ProjectsBrandsIdentityAwareProxyClientsList
projectsBrandsIdentityAwareProxyClientsList pPbiapclParent_ =
  ProjectsBrandsIdentityAwareProxyClientsList'
    { _pbiapclParent = pPbiapclParent_
    , _pbiapclXgafv = Nothing
    , _pbiapclUploadProtocol = Nothing
    , _pbiapclAccessToken = Nothing
    , _pbiapclUploadType = Nothing
    , _pbiapclPageToken = Nothing
    , _pbiapclPageSize = Nothing
    , _pbiapclCallback = Nothing
    }


-- | Required. Full brand path. In the following format:
-- projects\/{project_number\/id}\/brands\/{brand}.
pbiapclParent :: Lens' ProjectsBrandsIdentityAwareProxyClientsList Text
pbiapclParent
  = lens _pbiapclParent
      (\ s a -> s{_pbiapclParent = a})

-- | V1 error format.
pbiapclXgafv :: Lens' ProjectsBrandsIdentityAwareProxyClientsList (Maybe Xgafv)
pbiapclXgafv
  = lens _pbiapclXgafv (\ s a -> s{_pbiapclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbiapclUploadProtocol :: Lens' ProjectsBrandsIdentityAwareProxyClientsList (Maybe Text)
pbiapclUploadProtocol
  = lens _pbiapclUploadProtocol
      (\ s a -> s{_pbiapclUploadProtocol = a})

-- | OAuth access token.
pbiapclAccessToken :: Lens' ProjectsBrandsIdentityAwareProxyClientsList (Maybe Text)
pbiapclAccessToken
  = lens _pbiapclAccessToken
      (\ s a -> s{_pbiapclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbiapclUploadType :: Lens' ProjectsBrandsIdentityAwareProxyClientsList (Maybe Text)
pbiapclUploadType
  = lens _pbiapclUploadType
      (\ s a -> s{_pbiapclUploadType = a})

-- | A page token, received from a previous \`ListIdentityAwareProxyClients\`
-- call. Provide this to retrieve the subsequent page. When paginating, all
-- other parameters provided to \`ListIdentityAwareProxyClients\` must
-- match the call that provided the page token.
pbiapclPageToken :: Lens' ProjectsBrandsIdentityAwareProxyClientsList (Maybe Text)
pbiapclPageToken
  = lens _pbiapclPageToken
      (\ s a -> s{_pbiapclPageToken = a})

-- | The maximum number of clients to return. The service may return fewer
-- than this value. If unspecified, at most 100 clients will be returned.
-- The maximum value is 1000; values above 1000 will be coerced to 1000.
pbiapclPageSize :: Lens' ProjectsBrandsIdentityAwareProxyClientsList (Maybe Int32)
pbiapclPageSize
  = lens _pbiapclPageSize
      (\ s a -> s{_pbiapclPageSize = a})
      . mapping _Coerce

-- | JSONP
pbiapclCallback :: Lens' ProjectsBrandsIdentityAwareProxyClientsList (Maybe Text)
pbiapclCallback
  = lens _pbiapclCallback
      (\ s a -> s{_pbiapclCallback = a})

instance GoogleRequest
           ProjectsBrandsIdentityAwareProxyClientsList
         where
        type Rs ProjectsBrandsIdentityAwareProxyClientsList =
             ListIdentityAwareProxyClientsResponse
        type Scopes
               ProjectsBrandsIdentityAwareProxyClientsList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsBrandsIdentityAwareProxyClientsList'{..}
          = go _pbiapclParent _pbiapclXgafv
              _pbiapclUploadProtocol
              _pbiapclAccessToken
              _pbiapclUploadType
              _pbiapclPageToken
              _pbiapclPageSize
              _pbiapclCallback
              (Just AltJSON)
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsBrandsIdentityAwareProxyClientsListResource)
                      mempty
