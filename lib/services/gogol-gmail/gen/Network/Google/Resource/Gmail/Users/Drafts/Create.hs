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
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new draft with the \`DRAFT\` label.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.drafts.create@.
module Network.Google.Resource.Gmail.Users.Drafts.Create
    (
    -- * REST Resource
      UsersDraftsCreateResource

    -- * Creating a Request
    , usersDraftsCreate
    , UsersDraftsCreate

    -- * Request Lenses
    , udcXgafv
    , udcUploadProtocol
    , udcAccessToken
    , udcUploadType
    , udcPayload
    , udcUserId
    , udcCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.drafts.create@ method which the
-- 'UsersDraftsCreate' request conforms to.
type UsersDraftsCreateResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "drafts" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Draft :> Post '[JSON] Draft
       :<|>
       "upload" :>
         "gmail" :>
           "v1" :>
             "users" :>
               Capture "userId" Text :>
                 "drafts" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               QueryParam "uploadType" Multipart :>
                                 MultipartRelated '[JSON] Draft :>
                                   Post '[JSON] Draft

-- | Creates a new draft with the \`DRAFT\` label.
--
-- /See:/ 'usersDraftsCreate' smart constructor.
data UsersDraftsCreate =
  UsersDraftsCreate'
    { _udcXgafv :: !(Maybe Xgafv)
    , _udcUploadProtocol :: !(Maybe Text)
    , _udcAccessToken :: !(Maybe Text)
    , _udcUploadType :: !(Maybe Text)
    , _udcPayload :: !Draft
    , _udcUserId :: !Text
    , _udcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDraftsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udcXgafv'
--
-- * 'udcUploadProtocol'
--
-- * 'udcAccessToken'
--
-- * 'udcUploadType'
--
-- * 'udcPayload'
--
-- * 'udcUserId'
--
-- * 'udcCallback'
usersDraftsCreate
    :: Draft -- ^ 'udcPayload'
    -> UsersDraftsCreate
usersDraftsCreate pUdcPayload_ =
  UsersDraftsCreate'
    { _udcXgafv = Nothing
    , _udcUploadProtocol = Nothing
    , _udcAccessToken = Nothing
    , _udcUploadType = Nothing
    , _udcPayload = pUdcPayload_
    , _udcUserId = "me"
    , _udcCallback = Nothing
    }


-- | V1 error format.
udcXgafv :: Lens' UsersDraftsCreate (Maybe Xgafv)
udcXgafv = lens _udcXgafv (\ s a -> s{_udcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
udcUploadProtocol :: Lens' UsersDraftsCreate (Maybe Text)
udcUploadProtocol
  = lens _udcUploadProtocol
      (\ s a -> s{_udcUploadProtocol = a})

-- | OAuth access token.
udcAccessToken :: Lens' UsersDraftsCreate (Maybe Text)
udcAccessToken
  = lens _udcAccessToken
      (\ s a -> s{_udcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
udcUploadType :: Lens' UsersDraftsCreate (Maybe Text)
udcUploadType
  = lens _udcUploadType
      (\ s a -> s{_udcUploadType = a})

-- | Multipart request metadata.
udcPayload :: Lens' UsersDraftsCreate Draft
udcPayload
  = lens _udcPayload (\ s a -> s{_udcPayload = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
udcUserId :: Lens' UsersDraftsCreate Text
udcUserId
  = lens _udcUserId (\ s a -> s{_udcUserId = a})

-- | JSONP
udcCallback :: Lens' UsersDraftsCreate (Maybe Text)
udcCallback
  = lens _udcCallback (\ s a -> s{_udcCallback = a})

instance GoogleRequest UsersDraftsCreate where
        type Rs UsersDraftsCreate = Draft
        type Scopes UsersDraftsCreate =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.addons.current.action.compose",
               "https://www.googleapis.com/auth/gmail.compose",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersDraftsCreate'{..}
          = go _udcUserId _udcXgafv _udcUploadProtocol
              _udcAccessToken
              _udcUploadType
              _udcCallback
              (Just AltJSON)
              _udcPayload
              gmailService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy UsersDraftsCreateResource)
                      mempty

instance GoogleRequest
           (MediaUpload UsersDraftsCreate)
         where
        type Rs (MediaUpload UsersDraftsCreate) = Draft
        type Scopes (MediaUpload UsersDraftsCreate) =
             Scopes UsersDraftsCreate
        requestClient
          (MediaUpload UsersDraftsCreate'{..} body)
          = go _udcUserId _udcXgafv _udcUploadProtocol
              _udcAccessToken
              _udcUploadType
              _udcCallback
              (Just AltJSON)
              (Just Multipart)
              _udcPayload
              body
              gmailService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy UsersDraftsCreateResource)
                      mempty
