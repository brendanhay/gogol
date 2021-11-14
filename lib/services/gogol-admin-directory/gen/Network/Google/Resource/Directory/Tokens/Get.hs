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
-- Module      : Network.Google.Resource.Directory.Tokens.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about an access token issued by a user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.tokens.get@.
module Network.Google.Resource.Directory.Tokens.Get
    (
    -- * REST Resource
      TokensGetResource

    -- * Creating a Request
    , tokensGet
    , TokensGet

    -- * Request Lenses
    , tgClientId
    , tgXgafv
    , tgUploadProtocol
    , tgAccessToken
    , tgUploadType
    , tgUserKey
    , tgCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.tokens.get@ method which the
-- 'TokensGet' request conforms to.
type TokensGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "tokens" :>
                 Capture "clientId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Token

-- | Gets information about an access token issued by a user.
--
-- /See:/ 'tokensGet' smart constructor.
data TokensGet =
  TokensGet'
    { _tgClientId :: !Text
    , _tgXgafv :: !(Maybe Xgafv)
    , _tgUploadProtocol :: !(Maybe Text)
    , _tgAccessToken :: !(Maybe Text)
    , _tgUploadType :: !(Maybe Text)
    , _tgUserKey :: !Text
    , _tgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TokensGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgClientId'
--
-- * 'tgXgafv'
--
-- * 'tgUploadProtocol'
--
-- * 'tgAccessToken'
--
-- * 'tgUploadType'
--
-- * 'tgUserKey'
--
-- * 'tgCallback'
tokensGet
    :: Text -- ^ 'tgClientId'
    -> Text -- ^ 'tgUserKey'
    -> TokensGet
tokensGet pTgClientId_ pTgUserKey_ =
  TokensGet'
    { _tgClientId = pTgClientId_
    , _tgXgafv = Nothing
    , _tgUploadProtocol = Nothing
    , _tgAccessToken = Nothing
    , _tgUploadType = Nothing
    , _tgUserKey = pTgUserKey_
    , _tgCallback = Nothing
    }


-- | The Client ID of the application the token is issued to.
tgClientId :: Lens' TokensGet Text
tgClientId
  = lens _tgClientId (\ s a -> s{_tgClientId = a})

-- | V1 error format.
tgXgafv :: Lens' TokensGet (Maybe Xgafv)
tgXgafv = lens _tgXgafv (\ s a -> s{_tgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tgUploadProtocol :: Lens' TokensGet (Maybe Text)
tgUploadProtocol
  = lens _tgUploadProtocol
      (\ s a -> s{_tgUploadProtocol = a})

-- | OAuth access token.
tgAccessToken :: Lens' TokensGet (Maybe Text)
tgAccessToken
  = lens _tgAccessToken
      (\ s a -> s{_tgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tgUploadType :: Lens' TokensGet (Maybe Text)
tgUploadType
  = lens _tgUploadType (\ s a -> s{_tgUploadType = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
tgUserKey :: Lens' TokensGet Text
tgUserKey
  = lens _tgUserKey (\ s a -> s{_tgUserKey = a})

-- | JSONP
tgCallback :: Lens' TokensGet (Maybe Text)
tgCallback
  = lens _tgCallback (\ s a -> s{_tgCallback = a})

instance GoogleRequest TokensGet where
        type Rs TokensGet = Token
        type Scopes TokensGet =
             '["https://www.googleapis.com/auth/admin.directory.user.security"]
        requestClient TokensGet'{..}
          = go _tgUserKey _tgClientId _tgXgafv
              _tgUploadProtocol
              _tgAccessToken
              _tgUploadType
              _tgCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy TokensGetResource)
                      mempty
