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
-- Module      : Network.Google.Resource.Blogger.Blogs.ListByUser
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists blogs by user.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.blogs.listByUser@.
module Network.Google.Resource.Blogger.Blogs.ListByUser
    (
    -- * REST Resource
      BlogsListByUserResource

    -- * Creating a Request
    , blogsListByUser
    , BlogsListByUser

    -- * Request Lenses
    , blbuStatus
    , blbuXgafv
    , blbuUploadProtocol
    , blbuAccessToken
    , blbuFetchUserInfo
    , blbuUploadType
    , blbuUserId
    , blbuRole
    , blbuView
    , blbuCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.blogs.listByUser@ method which the
-- 'BlogsListByUser' request conforms to.
type BlogsListByUserResource =
     "v3" :>
       "users" :>
         Capture "userId" Text :>
           "blogs" :>
             QueryParams "status" BlogsListByUserStatus :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "fetchUserInfo" Bool :>
                       QueryParam "uploadType" Text :>
                         QueryParams "role" BlogsListByUserRole :>
                           QueryParam "view" BlogsListByUserView :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] BlogList

-- | Lists blogs by user.
--
-- /See:/ 'blogsListByUser' smart constructor.
data BlogsListByUser =
  BlogsListByUser'
    { _blbuStatus :: ![BlogsListByUserStatus]
    , _blbuXgafv :: !(Maybe Xgafv)
    , _blbuUploadProtocol :: !(Maybe Text)
    , _blbuAccessToken :: !(Maybe Text)
    , _blbuFetchUserInfo :: !(Maybe Bool)
    , _blbuUploadType :: !(Maybe Text)
    , _blbuUserId :: !Text
    , _blbuRole :: !(Maybe [BlogsListByUserRole])
    , _blbuView :: !(Maybe BlogsListByUserView)
    , _blbuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BlogsListByUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blbuStatus'
--
-- * 'blbuXgafv'
--
-- * 'blbuUploadProtocol'
--
-- * 'blbuAccessToken'
--
-- * 'blbuFetchUserInfo'
--
-- * 'blbuUploadType'
--
-- * 'blbuUserId'
--
-- * 'blbuRole'
--
-- * 'blbuView'
--
-- * 'blbuCallback'
blogsListByUser
    :: Text -- ^ 'blbuUserId'
    -> BlogsListByUser
blogsListByUser pBlbuUserId_ =
  BlogsListByUser'
    { _blbuStatus = [BLBUSLive]
    , _blbuXgafv = Nothing
    , _blbuUploadProtocol = Nothing
    , _blbuAccessToken = Nothing
    , _blbuFetchUserInfo = Nothing
    , _blbuUploadType = Nothing
    , _blbuUserId = pBlbuUserId_
    , _blbuRole = Nothing
    , _blbuView = Nothing
    , _blbuCallback = Nothing
    }


-- | Default value of status is LIVE.
blbuStatus :: Lens' BlogsListByUser [BlogsListByUserStatus]
blbuStatus
  = lens _blbuStatus (\ s a -> s{_blbuStatus = a}) .
      _Coerce

-- | V1 error format.
blbuXgafv :: Lens' BlogsListByUser (Maybe Xgafv)
blbuXgafv
  = lens _blbuXgafv (\ s a -> s{_blbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
blbuUploadProtocol :: Lens' BlogsListByUser (Maybe Text)
blbuUploadProtocol
  = lens _blbuUploadProtocol
      (\ s a -> s{_blbuUploadProtocol = a})

-- | OAuth access token.
blbuAccessToken :: Lens' BlogsListByUser (Maybe Text)
blbuAccessToken
  = lens _blbuAccessToken
      (\ s a -> s{_blbuAccessToken = a})

blbuFetchUserInfo :: Lens' BlogsListByUser (Maybe Bool)
blbuFetchUserInfo
  = lens _blbuFetchUserInfo
      (\ s a -> s{_blbuFetchUserInfo = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
blbuUploadType :: Lens' BlogsListByUser (Maybe Text)
blbuUploadType
  = lens _blbuUploadType
      (\ s a -> s{_blbuUploadType = a})

blbuUserId :: Lens' BlogsListByUser Text
blbuUserId
  = lens _blbuUserId (\ s a -> s{_blbuUserId = a})

blbuRole :: Lens' BlogsListByUser [BlogsListByUserRole]
blbuRole
  = lens _blbuRole (\ s a -> s{_blbuRole = a}) .
      _Default
      . _Coerce

blbuView :: Lens' BlogsListByUser (Maybe BlogsListByUserView)
blbuView = lens _blbuView (\ s a -> s{_blbuView = a})

-- | JSONP
blbuCallback :: Lens' BlogsListByUser (Maybe Text)
blbuCallback
  = lens _blbuCallback (\ s a -> s{_blbuCallback = a})

instance GoogleRequest BlogsListByUser where
        type Rs BlogsListByUser = BlogList
        type Scopes BlogsListByUser =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient BlogsListByUser'{..}
          = go _blbuUserId _blbuStatus _blbuXgafv
              _blbuUploadProtocol
              _blbuAccessToken
              _blbuFetchUserInfo
              _blbuUploadType
              (_blbuRole ^. _Default)
              _blbuView
              _blbuCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient
                      (Proxy :: Proxy BlogsListByUserResource)
                      mempty
