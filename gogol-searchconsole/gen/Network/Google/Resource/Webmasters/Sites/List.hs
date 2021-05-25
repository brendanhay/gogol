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
-- Module      : Network.Google.Resource.Webmasters.Sites.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the user\'s Search Console sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference> for @webmasters.sites.list@.
module Network.Google.Resource.Webmasters.Sites.List
    (
    -- * REST Resource
      SitesListResource

    -- * Creating a Request
    , sitesList
    , SitesList

    -- * Request Lenses
    , sitXgafv
    , sitUploadProtocol
    , sitAccessToken
    , sitUploadType
    , sitCallback
    ) where

import Network.Google.Prelude
import Network.Google.SearchConsole.Types

-- | A resource alias for @webmasters.sites.list@ method which the
-- 'SitesList' request conforms to.
type SitesListResource =
     "webmasters" :>
       "v3" :>
         "sites" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] SitesListResponse

-- | Lists the user\'s Search Console sites.
--
-- /See:/ 'sitesList' smart constructor.
data SitesList =
  SitesList'
    { _sitXgafv :: !(Maybe Xgafv)
    , _sitUploadProtocol :: !(Maybe Text)
    , _sitAccessToken :: !(Maybe Text)
    , _sitUploadType :: !(Maybe Text)
    , _sitCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sitXgafv'
--
-- * 'sitUploadProtocol'
--
-- * 'sitAccessToken'
--
-- * 'sitUploadType'
--
-- * 'sitCallback'
sitesList
    :: SitesList
sitesList =
  SitesList'
    { _sitXgafv = Nothing
    , _sitUploadProtocol = Nothing
    , _sitAccessToken = Nothing
    , _sitUploadType = Nothing
    , _sitCallback = Nothing
    }


-- | V1 error format.
sitXgafv :: Lens' SitesList (Maybe Xgafv)
sitXgafv = lens _sitXgafv (\ s a -> s{_sitXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sitUploadProtocol :: Lens' SitesList (Maybe Text)
sitUploadProtocol
  = lens _sitUploadProtocol
      (\ s a -> s{_sitUploadProtocol = a})

-- | OAuth access token.
sitAccessToken :: Lens' SitesList (Maybe Text)
sitAccessToken
  = lens _sitAccessToken
      (\ s a -> s{_sitAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sitUploadType :: Lens' SitesList (Maybe Text)
sitUploadType
  = lens _sitUploadType
      (\ s a -> s{_sitUploadType = a})

-- | JSONP
sitCallback :: Lens' SitesList (Maybe Text)
sitCallback
  = lens _sitCallback (\ s a -> s{_sitCallback = a})

instance GoogleRequest SitesList where
        type Rs SitesList = SitesListResponse
        type Scopes SitesList =
             '["https://www.googleapis.com/auth/webmasters",
               "https://www.googleapis.com/auth/webmasters.readonly"]
        requestClient SitesList'{..}
          = go _sitXgafv _sitUploadProtocol _sitAccessToken
              _sitUploadType
              _sitCallback
              (Just AltJSON)
              searchConsoleService
          where go
                  = buildClient (Proxy :: Proxy SitesListResource)
                      mempty
