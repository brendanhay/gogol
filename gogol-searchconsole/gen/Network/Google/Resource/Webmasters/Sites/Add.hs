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
-- Module      : Network.Google.Resource.Webmasters.Sites.Add
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a site to the set of the user\'s sites in Search Console.
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference> for @webmasters.sites.add@.
module Network.Google.Resource.Webmasters.Sites.Add
    (
    -- * REST Resource
      SitesAddResource

    -- * Creating a Request
    , sitesAdd
    , SitesAdd

    -- * Request Lenses
    , saXgafv
    , saUploadProtocol
    , saSiteURL
    , saAccessToken
    , saUploadType
    , saCallback
    ) where

import Network.Google.Prelude
import Network.Google.SearchConsole.Types

-- | A resource alias for @webmasters.sites.add@ method which the
-- 'SitesAdd' request conforms to.
type SitesAddResource =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Put '[JSON] ()

-- | Adds a site to the set of the user\'s sites in Search Console.
--
-- /See:/ 'sitesAdd' smart constructor.
data SitesAdd =
  SitesAdd'
    { _saXgafv :: !(Maybe Xgafv)
    , _saUploadProtocol :: !(Maybe Text)
    , _saSiteURL :: !Text
    , _saAccessToken :: !(Maybe Text)
    , _saUploadType :: !(Maybe Text)
    , _saCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitesAdd' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saXgafv'
--
-- * 'saUploadProtocol'
--
-- * 'saSiteURL'
--
-- * 'saAccessToken'
--
-- * 'saUploadType'
--
-- * 'saCallback'
sitesAdd
    :: Text -- ^ 'saSiteURL'
    -> SitesAdd
sitesAdd pSaSiteURL_ =
  SitesAdd'
    { _saXgafv = Nothing
    , _saUploadProtocol = Nothing
    , _saSiteURL = pSaSiteURL_
    , _saAccessToken = Nothing
    , _saUploadType = Nothing
    , _saCallback = Nothing
    }


-- | V1 error format.
saXgafv :: Lens' SitesAdd (Maybe Xgafv)
saXgafv = lens _saXgafv (\ s a -> s{_saXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
saUploadProtocol :: Lens' SitesAdd (Maybe Text)
saUploadProtocol
  = lens _saUploadProtocol
      (\ s a -> s{_saUploadProtocol = a})

-- | The URL of the site to add.
saSiteURL :: Lens' SitesAdd Text
saSiteURL
  = lens _saSiteURL (\ s a -> s{_saSiteURL = a})

-- | OAuth access token.
saAccessToken :: Lens' SitesAdd (Maybe Text)
saAccessToken
  = lens _saAccessToken
      (\ s a -> s{_saAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
saUploadType :: Lens' SitesAdd (Maybe Text)
saUploadType
  = lens _saUploadType (\ s a -> s{_saUploadType = a})

-- | JSONP
saCallback :: Lens' SitesAdd (Maybe Text)
saCallback
  = lens _saCallback (\ s a -> s{_saCallback = a})

instance GoogleRequest SitesAdd where
        type Rs SitesAdd = ()
        type Scopes SitesAdd =
             '["https://www.googleapis.com/auth/webmasters"]
        requestClient SitesAdd'{..}
          = go _saSiteURL _saXgafv _saUploadProtocol
              _saAccessToken
              _saUploadType
              _saCallback
              (Just AltJSON)
              searchConsoleService
          where go
                  = buildClient (Proxy :: Proxy SitesAddResource)
                      mempty
