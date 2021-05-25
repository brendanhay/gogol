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
-- Module      : Network.Google.Resource.Directory.Tokens.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the set of tokens specified user has issued to 3rd party
-- applications.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.tokens.list@.
module Network.Google.Resource.Directory.Tokens.List
    (
    -- * REST Resource
      TokensListResource

    -- * Creating a Request
    , tokensList
    , TokensList

    -- * Request Lenses
    , tlXgafv
    , tlUploadProtocol
    , tlAccessToken
    , tlUploadType
    , tlUserKey
    , tlCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.tokens.list@ method which the
-- 'TokensList' request conforms to.
type TokensListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "tokens" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Tokens

-- | Returns the set of tokens specified user has issued to 3rd party
-- applications.
--
-- /See:/ 'tokensList' smart constructor.
data TokensList =
  TokensList'
    { _tlXgafv :: !(Maybe Xgafv)
    , _tlUploadProtocol :: !(Maybe Text)
    , _tlAccessToken :: !(Maybe Text)
    , _tlUploadType :: !(Maybe Text)
    , _tlUserKey :: !Text
    , _tlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TokensList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlXgafv'
--
-- * 'tlUploadProtocol'
--
-- * 'tlAccessToken'
--
-- * 'tlUploadType'
--
-- * 'tlUserKey'
--
-- * 'tlCallback'
tokensList
    :: Text -- ^ 'tlUserKey'
    -> TokensList
tokensList pTlUserKey_ =
  TokensList'
    { _tlXgafv = Nothing
    , _tlUploadProtocol = Nothing
    , _tlAccessToken = Nothing
    , _tlUploadType = Nothing
    , _tlUserKey = pTlUserKey_
    , _tlCallback = Nothing
    }


-- | V1 error format.
tlXgafv :: Lens' TokensList (Maybe Xgafv)
tlXgafv = lens _tlXgafv (\ s a -> s{_tlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tlUploadProtocol :: Lens' TokensList (Maybe Text)
tlUploadProtocol
  = lens _tlUploadProtocol
      (\ s a -> s{_tlUploadProtocol = a})

-- | OAuth access token.
tlAccessToken :: Lens' TokensList (Maybe Text)
tlAccessToken
  = lens _tlAccessToken
      (\ s a -> s{_tlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tlUploadType :: Lens' TokensList (Maybe Text)
tlUploadType
  = lens _tlUploadType (\ s a -> s{_tlUploadType = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
tlUserKey :: Lens' TokensList Text
tlUserKey
  = lens _tlUserKey (\ s a -> s{_tlUserKey = a})

-- | JSONP
tlCallback :: Lens' TokensList (Maybe Text)
tlCallback
  = lens _tlCallback (\ s a -> s{_tlCallback = a})

instance GoogleRequest TokensList where
        type Rs TokensList = Tokens
        type Scopes TokensList =
             '["https://www.googleapis.com/auth/admin.directory.user.security"]
        requestClient TokensList'{..}
          = go _tlUserKey _tlXgafv _tlUploadProtocol
              _tlAccessToken
              _tlUploadType
              _tlCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy TokensListResource)
                      mempty
