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
-- Module      : Network.Google.Resource.Directory.Tokens.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all access tokens issued by a user for an application.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.tokens.delete@.
module Network.Google.Resource.Directory.Tokens.Delete
    (
    -- * REST Resource
      TokensDeleteResource

    -- * Creating a Request
    , tokensDelete
    , TokensDelete

    -- * Request Lenses
    , tdClientId
    , tdXgafv
    , tdUploadProtocol
    , tdAccessToken
    , tdUploadType
    , tdUserKey
    , tdCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.tokens.delete@ method which the
-- 'TokensDelete' request conforms to.
type TokensDeleteResource =
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
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes all access tokens issued by a user for an application.
--
-- /See:/ 'tokensDelete' smart constructor.
data TokensDelete =
  TokensDelete'
    { _tdClientId :: !Text
    , _tdXgafv :: !(Maybe Xgafv)
    , _tdUploadProtocol :: !(Maybe Text)
    , _tdAccessToken :: !(Maybe Text)
    , _tdUploadType :: !(Maybe Text)
    , _tdUserKey :: !Text
    , _tdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TokensDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdClientId'
--
-- * 'tdXgafv'
--
-- * 'tdUploadProtocol'
--
-- * 'tdAccessToken'
--
-- * 'tdUploadType'
--
-- * 'tdUserKey'
--
-- * 'tdCallback'
tokensDelete
    :: Text -- ^ 'tdClientId'
    -> Text -- ^ 'tdUserKey'
    -> TokensDelete
tokensDelete pTdClientId_ pTdUserKey_ =
  TokensDelete'
    { _tdClientId = pTdClientId_
    , _tdXgafv = Nothing
    , _tdUploadProtocol = Nothing
    , _tdAccessToken = Nothing
    , _tdUploadType = Nothing
    , _tdUserKey = pTdUserKey_
    , _tdCallback = Nothing
    }


-- | The Client ID of the application the token is issued to.
tdClientId :: Lens' TokensDelete Text
tdClientId
  = lens _tdClientId (\ s a -> s{_tdClientId = a})

-- | V1 error format.
tdXgafv :: Lens' TokensDelete (Maybe Xgafv)
tdXgafv = lens _tdXgafv (\ s a -> s{_tdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tdUploadProtocol :: Lens' TokensDelete (Maybe Text)
tdUploadProtocol
  = lens _tdUploadProtocol
      (\ s a -> s{_tdUploadProtocol = a})

-- | OAuth access token.
tdAccessToken :: Lens' TokensDelete (Maybe Text)
tdAccessToken
  = lens _tdAccessToken
      (\ s a -> s{_tdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tdUploadType :: Lens' TokensDelete (Maybe Text)
tdUploadType
  = lens _tdUploadType (\ s a -> s{_tdUploadType = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
tdUserKey :: Lens' TokensDelete Text
tdUserKey
  = lens _tdUserKey (\ s a -> s{_tdUserKey = a})

-- | JSONP
tdCallback :: Lens' TokensDelete (Maybe Text)
tdCallback
  = lens _tdCallback (\ s a -> s{_tdCallback = a})

instance GoogleRequest TokensDelete where
        type Rs TokensDelete = ()
        type Scopes TokensDelete =
             '["https://www.googleapis.com/auth/admin.directory.user.security"]
        requestClient TokensDelete'{..}
          = go _tdUserKey _tdClientId _tdXgafv
              _tdUploadProtocol
              _tdAccessToken
              _tdUploadType
              _tdCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy TokensDeleteResource)
                      mempty
