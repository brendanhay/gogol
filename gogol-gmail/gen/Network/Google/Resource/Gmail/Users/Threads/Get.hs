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
-- Module      : Network.Google.Resource.Gmail.Users.Threads.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified thread.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.threads.get@.
module Network.Google.Resource.Gmail.Users.Threads.Get
    (
    -- * REST Resource
      UsersThreadsGetResource

    -- * Creating a Request
    , usersThreadsGet
    , UsersThreadsGet

    -- * Request Lenses
    , utgXgafv
    , utgUploadProtocol
    , utgAccessToken
    , utgFormat
    , utgUploadType
    , utgUserId
    , utgId
    , utgMetadataHeaders
    , utgCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.threads.get@ method which the
-- 'UsersThreadsGet' request conforms to.
type UsersThreadsGetResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "threads" :>
               Capture "id" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "format" UsersThreadsGetFormat :>
                         QueryParam "uploadType" Text :>
                           QueryParams "metadataHeaders" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Thread

-- | Gets the specified thread.
--
-- /See:/ 'usersThreadsGet' smart constructor.
data UsersThreadsGet =
  UsersThreadsGet'
    { _utgXgafv :: !(Maybe Xgafv)
    , _utgUploadProtocol :: !(Maybe Text)
    , _utgAccessToken :: !(Maybe Text)
    , _utgFormat :: !UsersThreadsGetFormat
    , _utgUploadType :: !(Maybe Text)
    , _utgUserId :: !Text
    , _utgId :: !Text
    , _utgMetadataHeaders :: !(Maybe [Text])
    , _utgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersThreadsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utgXgafv'
--
-- * 'utgUploadProtocol'
--
-- * 'utgAccessToken'
--
-- * 'utgFormat'
--
-- * 'utgUploadType'
--
-- * 'utgUserId'
--
-- * 'utgId'
--
-- * 'utgMetadataHeaders'
--
-- * 'utgCallback'
usersThreadsGet
    :: Text -- ^ 'utgId'
    -> UsersThreadsGet
usersThreadsGet pUtgId_ =
  UsersThreadsGet'
    { _utgXgafv = Nothing
    , _utgUploadProtocol = Nothing
    , _utgAccessToken = Nothing
    , _utgFormat = UTGFFull
    , _utgUploadType = Nothing
    , _utgUserId = "me"
    , _utgId = pUtgId_
    , _utgMetadataHeaders = Nothing
    , _utgCallback = Nothing
    }


-- | V1 error format.
utgXgafv :: Lens' UsersThreadsGet (Maybe Xgafv)
utgXgafv = lens _utgXgafv (\ s a -> s{_utgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
utgUploadProtocol :: Lens' UsersThreadsGet (Maybe Text)
utgUploadProtocol
  = lens _utgUploadProtocol
      (\ s a -> s{_utgUploadProtocol = a})

-- | OAuth access token.
utgAccessToken :: Lens' UsersThreadsGet (Maybe Text)
utgAccessToken
  = lens _utgAccessToken
      (\ s a -> s{_utgAccessToken = a})

-- | The format to return the messages in.
utgFormat :: Lens' UsersThreadsGet UsersThreadsGetFormat
utgFormat
  = lens _utgFormat (\ s a -> s{_utgFormat = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
utgUploadType :: Lens' UsersThreadsGet (Maybe Text)
utgUploadType
  = lens _utgUploadType
      (\ s a -> s{_utgUploadType = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
utgUserId :: Lens' UsersThreadsGet Text
utgUserId
  = lens _utgUserId (\ s a -> s{_utgUserId = a})

-- | The ID of the thread to retrieve.
utgId :: Lens' UsersThreadsGet Text
utgId = lens _utgId (\ s a -> s{_utgId = a})

-- | When given and format is METADATA, only include headers specified.
utgMetadataHeaders :: Lens' UsersThreadsGet [Text]
utgMetadataHeaders
  = lens _utgMetadataHeaders
      (\ s a -> s{_utgMetadataHeaders = a})
      . _Default
      . _Coerce

-- | JSONP
utgCallback :: Lens' UsersThreadsGet (Maybe Text)
utgCallback
  = lens _utgCallback (\ s a -> s{_utgCallback = a})

instance GoogleRequest UsersThreadsGet where
        type Rs UsersThreadsGet = Thread
        type Scopes UsersThreadsGet =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.addons.current.message.action",
               "https://www.googleapis.com/auth/gmail.addons.current.message.metadata",
               "https://www.googleapis.com/auth/gmail.addons.current.message.readonly",
               "https://www.googleapis.com/auth/gmail.metadata",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly"]
        requestClient UsersThreadsGet'{..}
          = go _utgUserId _utgId _utgXgafv _utgUploadProtocol
              _utgAccessToken
              (Just _utgFormat)
              _utgUploadType
              (_utgMetadataHeaders ^. _Default)
              _utgCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersThreadsGetResource)
                      mempty
