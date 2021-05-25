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
-- Module      : Network.Google.Resource.Webmasters.Sites.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a site from the set of the user\'s Search Console sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference> for @webmasters.sites.delete@.
module Network.Google.Resource.Webmasters.Sites.Delete
    (
    -- * REST Resource
      SitesDeleteResource

    -- * Creating a Request
    , sitesDelete
    , SitesDelete

    -- * Request Lenses
    , sXgafv
    , sUploadProtocol
    , sSiteURL
    , sAccessToken
    , sUploadType
    , sCallback
    ) where

import Network.Google.Prelude
import Network.Google.SearchConsole.Types

-- | A resource alias for @webmasters.sites.delete@ method which the
-- 'SitesDelete' request conforms to.
type SitesDeleteResource =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a site from the set of the user\'s Search Console sites.
--
-- /See:/ 'sitesDelete' smart constructor.
data SitesDelete =
  SitesDelete'
    { _sXgafv :: !(Maybe Xgafv)
    , _sUploadProtocol :: !(Maybe Text)
    , _sSiteURL :: !Text
    , _sAccessToken :: !(Maybe Text)
    , _sUploadType :: !(Maybe Text)
    , _sCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sXgafv'
--
-- * 'sUploadProtocol'
--
-- * 'sSiteURL'
--
-- * 'sAccessToken'
--
-- * 'sUploadType'
--
-- * 'sCallback'
sitesDelete
    :: Text -- ^ 'sSiteURL'
    -> SitesDelete
sitesDelete pSSiteURL_ =
  SitesDelete'
    { _sXgafv = Nothing
    , _sUploadProtocol = Nothing
    , _sSiteURL = pSSiteURL_
    , _sAccessToken = Nothing
    , _sUploadType = Nothing
    , _sCallback = Nothing
    }


-- | V1 error format.
sXgafv :: Lens' SitesDelete (Maybe Xgafv)
sXgafv = lens _sXgafv (\ s a -> s{_sXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sUploadProtocol :: Lens' SitesDelete (Maybe Text)
sUploadProtocol
  = lens _sUploadProtocol
      (\ s a -> s{_sUploadProtocol = a})

-- | The URI of the property as defined in Search Console. **Examples:**
-- \`http:\/\/www.example.com\/\` or \`sc-domain:example.com\`.
sSiteURL :: Lens' SitesDelete Text
sSiteURL = lens _sSiteURL (\ s a -> s{_sSiteURL = a})

-- | OAuth access token.
sAccessToken :: Lens' SitesDelete (Maybe Text)
sAccessToken
  = lens _sAccessToken (\ s a -> s{_sAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sUploadType :: Lens' SitesDelete (Maybe Text)
sUploadType
  = lens _sUploadType (\ s a -> s{_sUploadType = a})

-- | JSONP
sCallback :: Lens' SitesDelete (Maybe Text)
sCallback
  = lens _sCallback (\ s a -> s{_sCallback = a})

instance GoogleRequest SitesDelete where
        type Rs SitesDelete = ()
        type Scopes SitesDelete =
             '["https://www.googleapis.com/auth/webmasters"]
        requestClient SitesDelete'{..}
          = go _sSiteURL _sXgafv _sUploadProtocol _sAccessToken
              _sUploadType
              _sCallback
              (Just AltJSON)
              searchConsoleService
          where go
                  = buildClient (Proxy :: Proxy SitesDeleteResource)
                      mempty
