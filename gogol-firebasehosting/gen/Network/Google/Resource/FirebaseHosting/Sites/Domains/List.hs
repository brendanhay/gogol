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
-- Module      : Network.Google.Resource.FirebaseHosting.Sites.Domains.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the domains for the specified site.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference> for @firebasehosting.sites.domains.list@.
module Network.Google.Resource.FirebaseHosting.Sites.Domains.List
    (
    -- * REST Resource
      SitesDomainsListResource

    -- * Creating a Request
    , sitesDomainsList
    , SitesDomainsList

    -- * Request Lenses
    , sdlParent
    , sdlXgafv
    , sdlUploadProtocol
    , sdlAccessToken
    , sdlUploadType
    , sdlPageToken
    , sdlPageSize
    , sdlCallback
    ) where

import           Network.Google.FirebaseHosting.Types
import           Network.Google.Prelude

-- | A resource alias for @firebasehosting.sites.domains.list@ method which the
-- 'SitesDomainsList' request conforms to.
type SitesDomainsListResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "domains" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListDomainsResponse

-- | Lists the domains for the specified site.
--
-- /See:/ 'sitesDomainsList' smart constructor.
data SitesDomainsList =
  SitesDomainsList'
    { _sdlParent         :: !Text
    , _sdlXgafv          :: !(Maybe Xgafv)
    , _sdlUploadProtocol :: !(Maybe Text)
    , _sdlAccessToken    :: !(Maybe Text)
    , _sdlUploadType     :: !(Maybe Text)
    , _sdlPageToken      :: !(Maybe Text)
    , _sdlPageSize       :: !(Maybe (Textual Int32))
    , _sdlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitesDomainsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdlParent'
--
-- * 'sdlXgafv'
--
-- * 'sdlUploadProtocol'
--
-- * 'sdlAccessToken'
--
-- * 'sdlUploadType'
--
-- * 'sdlPageToken'
--
-- * 'sdlPageSize'
--
-- * 'sdlCallback'
sitesDomainsList
    :: Text -- ^ 'sdlParent'
    -> SitesDomainsList
sitesDomainsList pSdlParent_ =
  SitesDomainsList'
    { _sdlParent = pSdlParent_
    , _sdlXgafv = Nothing
    , _sdlUploadProtocol = Nothing
    , _sdlAccessToken = Nothing
    , _sdlUploadType = Nothing
    , _sdlPageToken = Nothing
    , _sdlPageSize = Nothing
    , _sdlCallback = Nothing
    }


-- | Required. The parent for which to list domains, in the format:
-- 'sites\/site-name'
sdlParent :: Lens' SitesDomainsList Text
sdlParent
  = lens _sdlParent (\ s a -> s{_sdlParent = a})

-- | V1 error format.
sdlXgafv :: Lens' SitesDomainsList (Maybe Xgafv)
sdlXgafv = lens _sdlXgafv (\ s a -> s{_sdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdlUploadProtocol :: Lens' SitesDomainsList (Maybe Text)
sdlUploadProtocol
  = lens _sdlUploadProtocol
      (\ s a -> s{_sdlUploadProtocol = a})

-- | OAuth access token.
sdlAccessToken :: Lens' SitesDomainsList (Maybe Text)
sdlAccessToken
  = lens _sdlAccessToken
      (\ s a -> s{_sdlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdlUploadType :: Lens' SitesDomainsList (Maybe Text)
sdlUploadType
  = lens _sdlUploadType
      (\ s a -> s{_sdlUploadType = a})

-- | The next_page_token from a previous request, if provided.
sdlPageToken :: Lens' SitesDomainsList (Maybe Text)
sdlPageToken
  = lens _sdlPageToken (\ s a -> s{_sdlPageToken = a})

-- | The page size to return. Defaults to 50.
sdlPageSize :: Lens' SitesDomainsList (Maybe Int32)
sdlPageSize
  = lens _sdlPageSize (\ s a -> s{_sdlPageSize = a}) .
      mapping _Coerce

-- | JSONP
sdlCallback :: Lens' SitesDomainsList (Maybe Text)
sdlCallback
  = lens _sdlCallback (\ s a -> s{_sdlCallback = a})

instance GoogleRequest SitesDomainsList where
        type Rs SitesDomainsList = ListDomainsResponse
        type Scopes SitesDomainsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/firebase",
               "https://www.googleapis.com/auth/firebase.readonly"]
        requestClient SitesDomainsList'{..}
          = go _sdlParent _sdlXgafv _sdlUploadProtocol
              _sdlAccessToken
              _sdlUploadType
              _sdlPageToken
              _sdlPageSize
              _sdlCallback
              (Just AltJSON)
              firebaseHostingService
          where go
                  = buildClient
                      (Proxy :: Proxy SitesDomainsListResource)
                      mempty
