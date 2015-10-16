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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of blogs, possibly filtered.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerBlogsListByUser@.
module Network.Google.Resource.Blogger.Blogs.ListByUser
    (
    -- * REST Resource
      BlogsListByUserResource

    -- * Creating a Request
    , blogsListByUser'
    , BlogsListByUser'

    -- * Request Lenses
    , blbuStatus
    , blbuFetchUserInfo
    , blbuUserId
    , blbuRole
    , blbuView
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerBlogsListByUser@ method which the
-- 'BlogsListByUser'' request conforms to.
type BlogsListByUserResource =
     "users" :>
       Capture "userId" Text :>
         "blogs" :>
           QueryParams "status" BlogsListByUserStatus :>
             QueryParam "fetchUserInfo" Bool :>
               QueryParams "role" BlogsListByUserRole :>
                 QueryParam "view" BlogsListByUserView :>
                   QueryParam "alt" AltJSON :> Get '[JSON] BlogList

-- | Retrieves a list of blogs, possibly filtered.
--
-- /See:/ 'blogsListByUser'' smart constructor.
data BlogsListByUser' = BlogsListByUser'
    { _blbuStatus        :: ![BlogsListByUserStatus]
    , _blbuFetchUserInfo :: !(Maybe Bool)
    , _blbuUserId        :: !Text
    , _blbuRole          :: !(Maybe [BlogsListByUserRole])
    , _blbuView          :: !(Maybe BlogsListByUserView)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogsListByUser'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blbuStatus'
--
-- * 'blbuFetchUserInfo'
--
-- * 'blbuUserId'
--
-- * 'blbuRole'
--
-- * 'blbuView'
blogsListByUser'
    :: Text -- ^ 'userId'
    -> BlogsListByUser'
blogsListByUser' pBlbuUserId_ =
    BlogsListByUser'
    { _blbuStatus = [BLBUSLive]
    , _blbuFetchUserInfo = Nothing
    , _blbuUserId = pBlbuUserId_
    , _blbuRole = Nothing
    , _blbuView = Nothing
    }

-- | Blog statuses to include in the result (default: Live blogs only). Note
-- that ADMIN access is required to view deleted blogs.
blbuStatus :: Lens' BlogsListByUser' [BlogsListByUserStatus]
blbuStatus
  = lens _blbuStatus (\ s a -> s{_blbuStatus = a}) .
      _Coerce

-- | Whether the response is a list of blogs with per-user information
-- instead of just blogs.
blbuFetchUserInfo :: Lens' BlogsListByUser' (Maybe Bool)
blbuFetchUserInfo
  = lens _blbuFetchUserInfo
      (\ s a -> s{_blbuFetchUserInfo = a})

-- | ID of the user whose blogs are to be fetched. Either the word \'self\'
-- (sans quote marks) or the user\'s profile identifier.
blbuUserId :: Lens' BlogsListByUser' Text
blbuUserId
  = lens _blbuUserId (\ s a -> s{_blbuUserId = a})

-- | User access types for blogs to include in the results, e.g. AUTHOR will
-- return blogs where the user has author level access. If no roles are
-- specified, defaults to ADMIN and AUTHOR roles.
blbuRole :: Lens' BlogsListByUser' [BlogsListByUserRole]
blbuRole
  = lens _blbuRole (\ s a -> s{_blbuRole = a}) .
      _Default
      . _Coerce

-- | Access level with which to view the blogs. Note that some fields require
-- elevated access.
blbuView :: Lens' BlogsListByUser' (Maybe BlogsListByUserView)
blbuView = lens _blbuView (\ s a -> s{_blbuView = a})

instance GoogleRequest BlogsListByUser' where
        type Rs BlogsListByUser' = BlogList
        requestClient BlogsListByUser'{..}
          = go _blbuUserId _blbuStatus _blbuFetchUserInfo
              (_blbuRole ^. _Default)
              _blbuView
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient
                      (Proxy :: Proxy BlogsListByUserResource)
                      mempty
