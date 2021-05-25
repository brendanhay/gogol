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
-- Module      : Network.Google.Resource.Gmail.Users.Labels.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Immediately and permanently deletes the specified label and removes it
-- from any messages and threads that it is applied to.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.labels.delete@.
module Network.Google.Resource.Gmail.Users.Labels.Delete
    (
    -- * REST Resource
      UsersLabelsDeleteResource

    -- * Creating a Request
    , usersLabelsDelete
    , UsersLabelsDelete

    -- * Request Lenses
    , uldXgafv
    , uldUploadProtocol
    , uldAccessToken
    , uldUploadType
    , uldUserId
    , uldId
    , uldCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.labels.delete@ method which the
-- 'UsersLabelsDelete' request conforms to.
type UsersLabelsDeleteResource =
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
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Immediately and permanently deletes the specified label and removes it
-- from any messages and threads that it is applied to.
--
-- /See:/ 'usersLabelsDelete' smart constructor.
data UsersLabelsDelete =
  UsersLabelsDelete'
    { _uldXgafv :: !(Maybe Xgafv)
    , _uldUploadProtocol :: !(Maybe Text)
    , _uldAccessToken :: !(Maybe Text)
    , _uldUploadType :: !(Maybe Text)
    , _uldUserId :: !Text
    , _uldId :: !Text
    , _uldCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersLabelsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uldXgafv'
--
-- * 'uldUploadProtocol'
--
-- * 'uldAccessToken'
--
-- * 'uldUploadType'
--
-- * 'uldUserId'
--
-- * 'uldId'
--
-- * 'uldCallback'
usersLabelsDelete
    :: Text -- ^ 'uldId'
    -> UsersLabelsDelete
usersLabelsDelete pUldId_ =
  UsersLabelsDelete'
    { _uldXgafv = Nothing
    , _uldUploadProtocol = Nothing
    , _uldAccessToken = Nothing
    , _uldUploadType = Nothing
    , _uldUserId = "me"
    , _uldId = pUldId_
    , _uldCallback = Nothing
    }


-- | V1 error format.
uldXgafv :: Lens' UsersLabelsDelete (Maybe Xgafv)
uldXgafv = lens _uldXgafv (\ s a -> s{_uldXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uldUploadProtocol :: Lens' UsersLabelsDelete (Maybe Text)
uldUploadProtocol
  = lens _uldUploadProtocol
      (\ s a -> s{_uldUploadProtocol = a})

-- | OAuth access token.
uldAccessToken :: Lens' UsersLabelsDelete (Maybe Text)
uldAccessToken
  = lens _uldAccessToken
      (\ s a -> s{_uldAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uldUploadType :: Lens' UsersLabelsDelete (Maybe Text)
uldUploadType
  = lens _uldUploadType
      (\ s a -> s{_uldUploadType = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
uldUserId :: Lens' UsersLabelsDelete Text
uldUserId
  = lens _uldUserId (\ s a -> s{_uldUserId = a})

-- | The ID of the label to delete.
uldId :: Lens' UsersLabelsDelete Text
uldId = lens _uldId (\ s a -> s{_uldId = a})

-- | JSONP
uldCallback :: Lens' UsersLabelsDelete (Maybe Text)
uldCallback
  = lens _uldCallback (\ s a -> s{_uldCallback = a})

instance GoogleRequest UsersLabelsDelete where
        type Rs UsersLabelsDelete = ()
        type Scopes UsersLabelsDelete =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.labels",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersLabelsDelete'{..}
          = go _uldUserId _uldId _uldXgafv _uldUploadProtocol
              _uldAccessToken
              _uldUploadType
              _uldCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersLabelsDeleteResource)
                      mempty
