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
-- Module      : Network.Google.Resource.Run.Namespaces.Authorizeddomains.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List authorized domains.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.authorizeddomains.list@.
module Network.Google.Resource.Run.Namespaces.Authorizeddomains.List
    (
    -- * REST Resource
      NamespacesAuthorizeddomainsListResource

    -- * Creating a Request
    , namespacesAuthorizeddomainsList
    , NamespacesAuthorizeddomainsList

    -- * Request Lenses
    , nalParent
    , nalXgafv
    , nalUploadProtocol
    , nalAccessToken
    , nalUploadType
    , nalPageToken
    , nalPageSize
    , nalCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.authorizeddomains.list@ method which the
-- 'NamespacesAuthorizeddomainsList' request conforms to.
type NamespacesAuthorizeddomainsListResource =
     "apis" :>
       "domains.cloudrun.com" :>
         "v1" :>
           Capture "parent" Text :>
             "authorizeddomains" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListAuthorizedDomainsResponse

-- | List authorized domains.
--
-- /See:/ 'namespacesAuthorizeddomainsList' smart constructor.
data NamespacesAuthorizeddomainsList =
  NamespacesAuthorizeddomainsList'
    { _nalParent :: !Text
    , _nalXgafv :: !(Maybe Xgafv)
    , _nalUploadProtocol :: !(Maybe Text)
    , _nalAccessToken :: !(Maybe Text)
    , _nalUploadType :: !(Maybe Text)
    , _nalPageToken :: !(Maybe Text)
    , _nalPageSize :: !(Maybe (Textual Int32))
    , _nalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesAuthorizeddomainsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nalParent'
--
-- * 'nalXgafv'
--
-- * 'nalUploadProtocol'
--
-- * 'nalAccessToken'
--
-- * 'nalUploadType'
--
-- * 'nalPageToken'
--
-- * 'nalPageSize'
--
-- * 'nalCallback'
namespacesAuthorizeddomainsList
    :: Text -- ^ 'nalParent'
    -> NamespacesAuthorizeddomainsList
namespacesAuthorizeddomainsList pNalParent_ =
  NamespacesAuthorizeddomainsList'
    { _nalParent = pNalParent_
    , _nalXgafv = Nothing
    , _nalUploadProtocol = Nothing
    , _nalAccessToken = Nothing
    , _nalUploadType = Nothing
    , _nalPageToken = Nothing
    , _nalPageSize = Nothing
    , _nalCallback = Nothing
    }


-- | Name of the parent Project resource. Example: \`projects\/myproject\`.
nalParent :: Lens' NamespacesAuthorizeddomainsList Text
nalParent
  = lens _nalParent (\ s a -> s{_nalParent = a})

-- | V1 error format.
nalXgafv :: Lens' NamespacesAuthorizeddomainsList (Maybe Xgafv)
nalXgafv = lens _nalXgafv (\ s a -> s{_nalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
nalUploadProtocol :: Lens' NamespacesAuthorizeddomainsList (Maybe Text)
nalUploadProtocol
  = lens _nalUploadProtocol
      (\ s a -> s{_nalUploadProtocol = a})

-- | OAuth access token.
nalAccessToken :: Lens' NamespacesAuthorizeddomainsList (Maybe Text)
nalAccessToken
  = lens _nalAccessToken
      (\ s a -> s{_nalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
nalUploadType :: Lens' NamespacesAuthorizeddomainsList (Maybe Text)
nalUploadType
  = lens _nalUploadType
      (\ s a -> s{_nalUploadType = a})

-- | Continuation token for fetching the next page of results.
nalPageToken :: Lens' NamespacesAuthorizeddomainsList (Maybe Text)
nalPageToken
  = lens _nalPageToken (\ s a -> s{_nalPageToken = a})

-- | Maximum results to return per page.
nalPageSize :: Lens' NamespacesAuthorizeddomainsList (Maybe Int32)
nalPageSize
  = lens _nalPageSize (\ s a -> s{_nalPageSize = a}) .
      mapping _Coerce

-- | JSONP
nalCallback :: Lens' NamespacesAuthorizeddomainsList (Maybe Text)
nalCallback
  = lens _nalCallback (\ s a -> s{_nalCallback = a})

instance GoogleRequest
           NamespacesAuthorizeddomainsList
         where
        type Rs NamespacesAuthorizeddomainsList =
             ListAuthorizedDomainsResponse
        type Scopes NamespacesAuthorizeddomainsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesAuthorizeddomainsList'{..}
          = go _nalParent _nalXgafv _nalUploadProtocol
              _nalAccessToken
              _nalUploadType
              _nalPageToken
              _nalPageSize
              _nalCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy NamespacesAuthorizeddomainsListResource)
                      mempty
