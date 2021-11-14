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
-- Module      : Network.Google.Resource.Gmail.Users.Labels.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patch the specified label.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.labels.patch@.
module Network.Google.Resource.Gmail.Users.Labels.Patch
    (
    -- * REST Resource
      UsersLabelsPatchResource

    -- * Creating a Request
    , usersLabelsPatch
    , UsersLabelsPatch

    -- * Request Lenses
    , ulpXgafv
    , ulpUploadProtocol
    , ulpAccessToken
    , ulpUploadType
    , ulpPayload
    , ulpUserId
    , ulpId
    , ulpCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.labels.patch@ method which the
-- 'UsersLabelsPatch' request conforms to.
type UsersLabelsPatchResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "labels" :>
               Capture "id" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Label :> Patch '[JSON] Label

-- | Patch the specified label.
--
-- /See:/ 'usersLabelsPatch' smart constructor.
data UsersLabelsPatch =
  UsersLabelsPatch'
    { _ulpXgafv :: !(Maybe Xgafv)
    , _ulpUploadProtocol :: !(Maybe Text)
    , _ulpAccessToken :: !(Maybe Text)
    , _ulpUploadType :: !(Maybe Text)
    , _ulpPayload :: !Label
    , _ulpUserId :: !Text
    , _ulpId :: !Text
    , _ulpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersLabelsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulpXgafv'
--
-- * 'ulpUploadProtocol'
--
-- * 'ulpAccessToken'
--
-- * 'ulpUploadType'
--
-- * 'ulpPayload'
--
-- * 'ulpUserId'
--
-- * 'ulpId'
--
-- * 'ulpCallback'
usersLabelsPatch
    :: Label -- ^ 'ulpPayload'
    -> Text -- ^ 'ulpId'
    -> UsersLabelsPatch
usersLabelsPatch pUlpPayload_ pUlpId_ =
  UsersLabelsPatch'
    { _ulpXgafv = Nothing
    , _ulpUploadProtocol = Nothing
    , _ulpAccessToken = Nothing
    , _ulpUploadType = Nothing
    , _ulpPayload = pUlpPayload_
    , _ulpUserId = "me"
    , _ulpId = pUlpId_
    , _ulpCallback = Nothing
    }


-- | V1 error format.
ulpXgafv :: Lens' UsersLabelsPatch (Maybe Xgafv)
ulpXgafv = lens _ulpXgafv (\ s a -> s{_ulpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ulpUploadProtocol :: Lens' UsersLabelsPatch (Maybe Text)
ulpUploadProtocol
  = lens _ulpUploadProtocol
      (\ s a -> s{_ulpUploadProtocol = a})

-- | OAuth access token.
ulpAccessToken :: Lens' UsersLabelsPatch (Maybe Text)
ulpAccessToken
  = lens _ulpAccessToken
      (\ s a -> s{_ulpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ulpUploadType :: Lens' UsersLabelsPatch (Maybe Text)
ulpUploadType
  = lens _ulpUploadType
      (\ s a -> s{_ulpUploadType = a})

-- | Multipart request metadata.
ulpPayload :: Lens' UsersLabelsPatch Label
ulpPayload
  = lens _ulpPayload (\ s a -> s{_ulpPayload = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
ulpUserId :: Lens' UsersLabelsPatch Text
ulpUserId
  = lens _ulpUserId (\ s a -> s{_ulpUserId = a})

-- | The ID of the label to update.
ulpId :: Lens' UsersLabelsPatch Text
ulpId = lens _ulpId (\ s a -> s{_ulpId = a})

-- | JSONP
ulpCallback :: Lens' UsersLabelsPatch (Maybe Text)
ulpCallback
  = lens _ulpCallback (\ s a -> s{_ulpCallback = a})

instance GoogleRequest UsersLabelsPatch where
        type Rs UsersLabelsPatch = Label
        type Scopes UsersLabelsPatch =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.labels",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersLabelsPatch'{..}
          = go _ulpUserId _ulpId _ulpXgafv _ulpUploadProtocol
              _ulpAccessToken
              _ulpUploadType
              _ulpCallback
              (Just AltJSON)
              _ulpPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersLabelsPatchResource)
                      mempty
