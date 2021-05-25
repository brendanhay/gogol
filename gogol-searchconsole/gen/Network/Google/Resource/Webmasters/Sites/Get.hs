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
-- Module      : Network.Google.Resource.Webmasters.Sites.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about specific site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference> for @webmasters.sites.get@.
module Network.Google.Resource.Webmasters.Sites.Get
    (
    -- * REST Resource
      SitesGetResource

    -- * Creating a Request
    , sitesGet
    , SitesGet

    -- * Request Lenses
    , sggXgafv
    , sggUploadProtocol
    , sggSiteURL
    , sggAccessToken
    , sggUploadType
    , sggCallback
    ) where

import Network.Google.Prelude
import Network.Google.SearchConsole.Types

-- | A resource alias for @webmasters.sites.get@ method which the
-- 'SitesGet' request conforms to.
type SitesGetResource =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] WmxSite

-- | Retrieves information about specific site.
--
-- /See:/ 'sitesGet' smart constructor.
data SitesGet =
  SitesGet'
    { _sggXgafv :: !(Maybe Xgafv)
    , _sggUploadProtocol :: !(Maybe Text)
    , _sggSiteURL :: !Text
    , _sggAccessToken :: !(Maybe Text)
    , _sggUploadType :: !(Maybe Text)
    , _sggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sggXgafv'
--
-- * 'sggUploadProtocol'
--
-- * 'sggSiteURL'
--
-- * 'sggAccessToken'
--
-- * 'sggUploadType'
--
-- * 'sggCallback'
sitesGet
    :: Text -- ^ 'sggSiteURL'
    -> SitesGet
sitesGet pSggSiteURL_ =
  SitesGet'
    { _sggXgafv = Nothing
    , _sggUploadProtocol = Nothing
    , _sggSiteURL = pSggSiteURL_
    , _sggAccessToken = Nothing
    , _sggUploadType = Nothing
    , _sggCallback = Nothing
    }


-- | V1 error format.
sggXgafv :: Lens' SitesGet (Maybe Xgafv)
sggXgafv = lens _sggXgafv (\ s a -> s{_sggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sggUploadProtocol :: Lens' SitesGet (Maybe Text)
sggUploadProtocol
  = lens _sggUploadProtocol
      (\ s a -> s{_sggUploadProtocol = a})

-- | The URI of the property as defined in Search Console. **Examples:**
-- \`http:\/\/www.example.com\/\` or \`sc-domain:example.com\`.
sggSiteURL :: Lens' SitesGet Text
sggSiteURL
  = lens _sggSiteURL (\ s a -> s{_sggSiteURL = a})

-- | OAuth access token.
sggAccessToken :: Lens' SitesGet (Maybe Text)
sggAccessToken
  = lens _sggAccessToken
      (\ s a -> s{_sggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sggUploadType :: Lens' SitesGet (Maybe Text)
sggUploadType
  = lens _sggUploadType
      (\ s a -> s{_sggUploadType = a})

-- | JSONP
sggCallback :: Lens' SitesGet (Maybe Text)
sggCallback
  = lens _sggCallback (\ s a -> s{_sggCallback = a})

instance GoogleRequest SitesGet where
        type Rs SitesGet = WmxSite
        type Scopes SitesGet =
             '["https://www.googleapis.com/auth/webmasters",
               "https://www.googleapis.com/auth/webmasters.readonly"]
        requestClient SitesGet'{..}
          = go _sggSiteURL _sggXgafv _sggUploadProtocol
              _sggAccessToken
              _sggUploadType
              _sggCallback
              (Just AltJSON)
              searchConsoleService
          where go
                  = buildClient (Proxy :: Proxy SitesGetResource)
                      mempty
