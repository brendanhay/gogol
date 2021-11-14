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
-- Module      : Network.Google.Resource.Gmail.Users.Labels.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified label.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.labels.update@.
module Network.Google.Resource.Gmail.Users.Labels.Update
    (
    -- * REST Resource
      UsersLabelsUpdateResource

    -- * Creating a Request
    , usersLabelsUpdate
    , UsersLabelsUpdate

    -- * Request Lenses
    , uluXgafv
    , uluUploadProtocol
    , uluAccessToken
    , uluUploadType
    , uluPayload
    , uluUserId
    , uluId
    , uluCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.labels.update@ method which the
-- 'UsersLabelsUpdate' request conforms to.
type UsersLabelsUpdateResource =
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
                             ReqBody '[JSON] Label :> Put '[JSON] Label

-- | Updates the specified label.
--
-- /See:/ 'usersLabelsUpdate' smart constructor.
data UsersLabelsUpdate =
  UsersLabelsUpdate'
    { _uluXgafv :: !(Maybe Xgafv)
    , _uluUploadProtocol :: !(Maybe Text)
    , _uluAccessToken :: !(Maybe Text)
    , _uluUploadType :: !(Maybe Text)
    , _uluPayload :: !Label
    , _uluUserId :: !Text
    , _uluId :: !Text
    , _uluCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersLabelsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uluXgafv'
--
-- * 'uluUploadProtocol'
--
-- * 'uluAccessToken'
--
-- * 'uluUploadType'
--
-- * 'uluPayload'
--
-- * 'uluUserId'
--
-- * 'uluId'
--
-- * 'uluCallback'
usersLabelsUpdate
    :: Label -- ^ 'uluPayload'
    -> Text -- ^ 'uluId'
    -> UsersLabelsUpdate
usersLabelsUpdate pUluPayload_ pUluId_ =
  UsersLabelsUpdate'
    { _uluXgafv = Nothing
    , _uluUploadProtocol = Nothing
    , _uluAccessToken = Nothing
    , _uluUploadType = Nothing
    , _uluPayload = pUluPayload_
    , _uluUserId = "me"
    , _uluId = pUluId_
    , _uluCallback = Nothing
    }


-- | V1 error format.
uluXgafv :: Lens' UsersLabelsUpdate (Maybe Xgafv)
uluXgafv = lens _uluXgafv (\ s a -> s{_uluXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uluUploadProtocol :: Lens' UsersLabelsUpdate (Maybe Text)
uluUploadProtocol
  = lens _uluUploadProtocol
      (\ s a -> s{_uluUploadProtocol = a})

-- | OAuth access token.
uluAccessToken :: Lens' UsersLabelsUpdate (Maybe Text)
uluAccessToken
  = lens _uluAccessToken
      (\ s a -> s{_uluAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uluUploadType :: Lens' UsersLabelsUpdate (Maybe Text)
uluUploadType
  = lens _uluUploadType
      (\ s a -> s{_uluUploadType = a})

-- | Multipart request metadata.
uluPayload :: Lens' UsersLabelsUpdate Label
uluPayload
  = lens _uluPayload (\ s a -> s{_uluPayload = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
uluUserId :: Lens' UsersLabelsUpdate Text
uluUserId
  = lens _uluUserId (\ s a -> s{_uluUserId = a})

-- | The ID of the label to update.
uluId :: Lens' UsersLabelsUpdate Text
uluId = lens _uluId (\ s a -> s{_uluId = a})

-- | JSONP
uluCallback :: Lens' UsersLabelsUpdate (Maybe Text)
uluCallback
  = lens _uluCallback (\ s a -> s{_uluCallback = a})

instance GoogleRequest UsersLabelsUpdate where
        type Rs UsersLabelsUpdate = Label
        type Scopes UsersLabelsUpdate =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.labels",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersLabelsUpdate'{..}
          = go _uluUserId _uluId _uluXgafv _uluUploadProtocol
              _uluAccessToken
              _uluUploadType
              _uluCallback
              (Just AltJSON)
              _uluPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersLabelsUpdateResource)
                      mempty
