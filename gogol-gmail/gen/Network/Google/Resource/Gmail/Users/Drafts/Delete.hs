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
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Immediately and permanently deletes the specified draft. Does not simply
-- trash it.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.drafts.delete@.
module Network.Google.Resource.Gmail.Users.Drafts.Delete
    (
    -- * REST Resource
      UsersDraftsDeleteResource

    -- * Creating a Request
    , usersDraftsDelete
    , UsersDraftsDelete

    -- * Request Lenses
    , uddXgafv
    , uddUploadProtocol
    , uddAccessToken
    , uddUploadType
    , uddUserId
    , uddId
    , uddCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.drafts.delete@ method which the
-- 'UsersDraftsDelete' request conforms to.
type UsersDraftsDeleteResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "drafts" :>
               Capture "id" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Immediately and permanently deletes the specified draft. Does not simply
-- trash it.
--
-- /See:/ 'usersDraftsDelete' smart constructor.
data UsersDraftsDelete =
  UsersDraftsDelete'
    { _uddXgafv :: !(Maybe Xgafv)
    , _uddUploadProtocol :: !(Maybe Text)
    , _uddAccessToken :: !(Maybe Text)
    , _uddUploadType :: !(Maybe Text)
    , _uddUserId :: !Text
    , _uddId :: !Text
    , _uddCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDraftsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uddXgafv'
--
-- * 'uddUploadProtocol'
--
-- * 'uddAccessToken'
--
-- * 'uddUploadType'
--
-- * 'uddUserId'
--
-- * 'uddId'
--
-- * 'uddCallback'
usersDraftsDelete
    :: Text -- ^ 'uddId'
    -> UsersDraftsDelete
usersDraftsDelete pUddId_ =
  UsersDraftsDelete'
    { _uddXgafv = Nothing
    , _uddUploadProtocol = Nothing
    , _uddAccessToken = Nothing
    , _uddUploadType = Nothing
    , _uddUserId = "me"
    , _uddId = pUddId_
    , _uddCallback = Nothing
    }


-- | V1 error format.
uddXgafv :: Lens' UsersDraftsDelete (Maybe Xgafv)
uddXgafv = lens _uddXgafv (\ s a -> s{_uddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uddUploadProtocol :: Lens' UsersDraftsDelete (Maybe Text)
uddUploadProtocol
  = lens _uddUploadProtocol
      (\ s a -> s{_uddUploadProtocol = a})

-- | OAuth access token.
uddAccessToken :: Lens' UsersDraftsDelete (Maybe Text)
uddAccessToken
  = lens _uddAccessToken
      (\ s a -> s{_uddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uddUploadType :: Lens' UsersDraftsDelete (Maybe Text)
uddUploadType
  = lens _uddUploadType
      (\ s a -> s{_uddUploadType = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
uddUserId :: Lens' UsersDraftsDelete Text
uddUserId
  = lens _uddUserId (\ s a -> s{_uddUserId = a})

-- | The ID of the draft to delete.
uddId :: Lens' UsersDraftsDelete Text
uddId = lens _uddId (\ s a -> s{_uddId = a})

-- | JSONP
uddCallback :: Lens' UsersDraftsDelete (Maybe Text)
uddCallback
  = lens _uddCallback (\ s a -> s{_uddCallback = a})

instance GoogleRequest UsersDraftsDelete where
        type Rs UsersDraftsDelete = ()
        type Scopes UsersDraftsDelete =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.addons.current.action.compose",
               "https://www.googleapis.com/auth/gmail.compose",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersDraftsDelete'{..}
          = go _uddUserId _uddId _uddXgafv _uddUploadProtocol
              _uddAccessToken
              _uddUploadType
              _uddCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDraftsDeleteResource)
                      mempty
