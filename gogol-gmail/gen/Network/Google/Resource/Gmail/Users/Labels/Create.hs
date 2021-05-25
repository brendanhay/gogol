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
-- Module      : Network.Google.Resource.Gmail.Users.Labels.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new label.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.labels.create@.
module Network.Google.Resource.Gmail.Users.Labels.Create
    (
    -- * REST Resource
      UsersLabelsCreateResource

    -- * Creating a Request
    , usersLabelsCreate
    , UsersLabelsCreate

    -- * Request Lenses
    , ulcXgafv
    , ulcUploadProtocol
    , ulcAccessToken
    , ulcUploadType
    , ulcPayload
    , ulcUserId
    , ulcCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.labels.create@ method which the
-- 'UsersLabelsCreate' request conforms to.
type UsersLabelsCreateResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "labels" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Label :> Post '[JSON] Label

-- | Creates a new label.
--
-- /See:/ 'usersLabelsCreate' smart constructor.
data UsersLabelsCreate =
  UsersLabelsCreate'
    { _ulcXgafv :: !(Maybe Xgafv)
    , _ulcUploadProtocol :: !(Maybe Text)
    , _ulcAccessToken :: !(Maybe Text)
    , _ulcUploadType :: !(Maybe Text)
    , _ulcPayload :: !Label
    , _ulcUserId :: !Text
    , _ulcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersLabelsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulcXgafv'
--
-- * 'ulcUploadProtocol'
--
-- * 'ulcAccessToken'
--
-- * 'ulcUploadType'
--
-- * 'ulcPayload'
--
-- * 'ulcUserId'
--
-- * 'ulcCallback'
usersLabelsCreate
    :: Label -- ^ 'ulcPayload'
    -> UsersLabelsCreate
usersLabelsCreate pUlcPayload_ =
  UsersLabelsCreate'
    { _ulcXgafv = Nothing
    , _ulcUploadProtocol = Nothing
    , _ulcAccessToken = Nothing
    , _ulcUploadType = Nothing
    , _ulcPayload = pUlcPayload_
    , _ulcUserId = "me"
    , _ulcCallback = Nothing
    }


-- | V1 error format.
ulcXgafv :: Lens' UsersLabelsCreate (Maybe Xgafv)
ulcXgafv = lens _ulcXgafv (\ s a -> s{_ulcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ulcUploadProtocol :: Lens' UsersLabelsCreate (Maybe Text)
ulcUploadProtocol
  = lens _ulcUploadProtocol
      (\ s a -> s{_ulcUploadProtocol = a})

-- | OAuth access token.
ulcAccessToken :: Lens' UsersLabelsCreate (Maybe Text)
ulcAccessToken
  = lens _ulcAccessToken
      (\ s a -> s{_ulcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ulcUploadType :: Lens' UsersLabelsCreate (Maybe Text)
ulcUploadType
  = lens _ulcUploadType
      (\ s a -> s{_ulcUploadType = a})

-- | Multipart request metadata.
ulcPayload :: Lens' UsersLabelsCreate Label
ulcPayload
  = lens _ulcPayload (\ s a -> s{_ulcPayload = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
ulcUserId :: Lens' UsersLabelsCreate Text
ulcUserId
  = lens _ulcUserId (\ s a -> s{_ulcUserId = a})

-- | JSONP
ulcCallback :: Lens' UsersLabelsCreate (Maybe Text)
ulcCallback
  = lens _ulcCallback (\ s a -> s{_ulcCallback = a})

instance GoogleRequest UsersLabelsCreate where
        type Rs UsersLabelsCreate = Label
        type Scopes UsersLabelsCreate =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.labels",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersLabelsCreate'{..}
          = go _ulcUserId _ulcXgafv _ulcUploadProtocol
              _ulcAccessToken
              _ulcUploadType
              _ulcCallback
              (Just AltJSON)
              _ulcPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersLabelsCreateResource)
                      mempty
