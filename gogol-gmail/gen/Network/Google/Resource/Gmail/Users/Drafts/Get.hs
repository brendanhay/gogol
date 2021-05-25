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
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified draft.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.drafts.get@.
module Network.Google.Resource.Gmail.Users.Drafts.Get
    (
    -- * REST Resource
      UsersDraftsGetResource

    -- * Creating a Request
    , usersDraftsGet
    , UsersDraftsGet

    -- * Request Lenses
    , udgXgafv
    , udgUploadProtocol
    , udgAccessToken
    , udgFormat
    , udgUploadType
    , udgUserId
    , udgId
    , udgCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.drafts.get@ method which the
-- 'UsersDraftsGet' request conforms to.
type UsersDraftsGetResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "drafts" :>
               Capture "id" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "format" UsersDraftsGetFormat :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Draft

-- | Gets the specified draft.
--
-- /See:/ 'usersDraftsGet' smart constructor.
data UsersDraftsGet =
  UsersDraftsGet'
    { _udgXgafv :: !(Maybe Xgafv)
    , _udgUploadProtocol :: !(Maybe Text)
    , _udgAccessToken :: !(Maybe Text)
    , _udgFormat :: !UsersDraftsGetFormat
    , _udgUploadType :: !(Maybe Text)
    , _udgUserId :: !Text
    , _udgId :: !Text
    , _udgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDraftsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udgXgafv'
--
-- * 'udgUploadProtocol'
--
-- * 'udgAccessToken'
--
-- * 'udgFormat'
--
-- * 'udgUploadType'
--
-- * 'udgUserId'
--
-- * 'udgId'
--
-- * 'udgCallback'
usersDraftsGet
    :: Text -- ^ 'udgId'
    -> UsersDraftsGet
usersDraftsGet pUdgId_ =
  UsersDraftsGet'
    { _udgXgafv = Nothing
    , _udgUploadProtocol = Nothing
    , _udgAccessToken = Nothing
    , _udgFormat = UDGFFull
    , _udgUploadType = Nothing
    , _udgUserId = "me"
    , _udgId = pUdgId_
    , _udgCallback = Nothing
    }


-- | V1 error format.
udgXgafv :: Lens' UsersDraftsGet (Maybe Xgafv)
udgXgafv = lens _udgXgafv (\ s a -> s{_udgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
udgUploadProtocol :: Lens' UsersDraftsGet (Maybe Text)
udgUploadProtocol
  = lens _udgUploadProtocol
      (\ s a -> s{_udgUploadProtocol = a})

-- | OAuth access token.
udgAccessToken :: Lens' UsersDraftsGet (Maybe Text)
udgAccessToken
  = lens _udgAccessToken
      (\ s a -> s{_udgAccessToken = a})

-- | The format to return the draft in.
udgFormat :: Lens' UsersDraftsGet UsersDraftsGetFormat
udgFormat
  = lens _udgFormat (\ s a -> s{_udgFormat = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
udgUploadType :: Lens' UsersDraftsGet (Maybe Text)
udgUploadType
  = lens _udgUploadType
      (\ s a -> s{_udgUploadType = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
udgUserId :: Lens' UsersDraftsGet Text
udgUserId
  = lens _udgUserId (\ s a -> s{_udgUserId = a})

-- | The ID of the draft to retrieve.
udgId :: Lens' UsersDraftsGet Text
udgId = lens _udgId (\ s a -> s{_udgId = a})

-- | JSONP
udgCallback :: Lens' UsersDraftsGet (Maybe Text)
udgCallback
  = lens _udgCallback (\ s a -> s{_udgCallback = a})

instance GoogleRequest UsersDraftsGet where
        type Rs UsersDraftsGet = Draft
        type Scopes UsersDraftsGet =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.compose",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly"]
        requestClient UsersDraftsGet'{..}
          = go _udgUserId _udgId _udgXgafv _udgUploadProtocol
              _udgAccessToken
              (Just _udgFormat)
              _udgUploadType
              _udgCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient (Proxy :: Proxy UsersDraftsGetResource)
                      mempty
