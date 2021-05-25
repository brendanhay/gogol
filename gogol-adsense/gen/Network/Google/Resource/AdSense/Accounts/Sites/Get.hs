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
-- Module      : Network.Google.Resource.AdSense.Accounts.Sites.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the selected site.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.sites.get@.
module Network.Google.Resource.AdSense.Accounts.Sites.Get
    (
    -- * REST Resource
      AccountsSitesGetResource

    -- * Creating a Request
    , accountsSitesGet
    , AccountsSitesGet

    -- * Request Lenses
    , asgXgafv
    , asgUploadProtocol
    , asgAccessToken
    , asgUploadType
    , asgName
    , asgCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.sites.get@ method which the
-- 'AccountsSitesGet' request conforms to.
type AccountsSitesGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Site

-- | Gets information about the selected site.
--
-- /See:/ 'accountsSitesGet' smart constructor.
data AccountsSitesGet =
  AccountsSitesGet'
    { _asgXgafv :: !(Maybe Xgafv)
    , _asgUploadProtocol :: !(Maybe Text)
    , _asgAccessToken :: !(Maybe Text)
    , _asgUploadType :: !(Maybe Text)
    , _asgName :: !Text
    , _asgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsSitesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asgXgafv'
--
-- * 'asgUploadProtocol'
--
-- * 'asgAccessToken'
--
-- * 'asgUploadType'
--
-- * 'asgName'
--
-- * 'asgCallback'
accountsSitesGet
    :: Text -- ^ 'asgName'
    -> AccountsSitesGet
accountsSitesGet pAsgName_ =
  AccountsSitesGet'
    { _asgXgafv = Nothing
    , _asgUploadProtocol = Nothing
    , _asgAccessToken = Nothing
    , _asgUploadType = Nothing
    , _asgName = pAsgName_
    , _asgCallback = Nothing
    }


-- | V1 error format.
asgXgafv :: Lens' AccountsSitesGet (Maybe Xgafv)
asgXgafv = lens _asgXgafv (\ s a -> s{_asgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asgUploadProtocol :: Lens' AccountsSitesGet (Maybe Text)
asgUploadProtocol
  = lens _asgUploadProtocol
      (\ s a -> s{_asgUploadProtocol = a})

-- | OAuth access token.
asgAccessToken :: Lens' AccountsSitesGet (Maybe Text)
asgAccessToken
  = lens _asgAccessToken
      (\ s a -> s{_asgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asgUploadType :: Lens' AccountsSitesGet (Maybe Text)
asgUploadType
  = lens _asgUploadType
      (\ s a -> s{_asgUploadType = a})

-- | Required. Name of the site. Format: accounts\/{account}\/sites\/{site}
asgName :: Lens' AccountsSitesGet Text
asgName = lens _asgName (\ s a -> s{_asgName = a})

-- | JSONP
asgCallback :: Lens' AccountsSitesGet (Maybe Text)
asgCallback
  = lens _asgCallback (\ s a -> s{_asgCallback = a})

instance GoogleRequest AccountsSitesGet where
        type Rs AccountsSitesGet = Site
        type Scopes AccountsSitesGet =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsSitesGet'{..}
          = go _asgName _asgXgafv _asgUploadProtocol
              _asgAccessToken
              _asgUploadType
              _asgCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsSitesGetResource)
                      mempty
