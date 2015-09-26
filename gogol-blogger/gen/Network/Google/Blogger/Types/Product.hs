{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Blogger.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Blogger.Types.Product where

import           Network.Google.Blogger.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'blog' smart constructor.
data Blog = Blog
    { _bStatus         :: !(Maybe Text)
    , _bKind           :: !Text
    , _bPages          :: !(Maybe BlogPages)
    , _bLocale         :: !(Maybe BlogLocale)
    , _bPublished      :: !(Maybe UTCTime)
    , _bUrl            :: !(Maybe Text)
    , _bCustomMetaData :: !(Maybe Text)
    , _bSelfLink       :: !(Maybe Text)
    , _bName           :: !(Maybe Text)
    , _bId             :: !(Maybe Text)
    , _bUpdated        :: !(Maybe UTCTime)
    , _bPosts          :: !(Maybe BlogPosts)
    , _bDescription    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Blog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bStatus'
--
-- * 'bKind'
--
-- * 'bPages'
--
-- * 'bLocale'
--
-- * 'bPublished'
--
-- * 'bUrl'
--
-- * 'bCustomMetaData'
--
-- * 'bSelfLink'
--
-- * 'bName'
--
-- * 'bId'
--
-- * 'bUpdated'
--
-- * 'bPosts'
--
-- * 'bDescription'
blog
    :: Blog
blog =
    Blog
    { _bStatus = Nothing
    , _bKind = "blogger#blog"
    , _bPages = Nothing
    , _bLocale = Nothing
    , _bPublished = Nothing
    , _bUrl = Nothing
    , _bCustomMetaData = Nothing
    , _bSelfLink = Nothing
    , _bName = Nothing
    , _bId = Nothing
    , _bUpdated = Nothing
    , _bPosts = Nothing
    , _bDescription = Nothing
    }

-- | The status of the blog.
bStatus :: Lens' Blog (Maybe Text)
bStatus = lens _bStatus (\ s a -> s{_bStatus = a})

-- | The kind of this entry. Always blogger#blog
bKind :: Lens' Blog Text
bKind = lens _bKind (\ s a -> s{_bKind = a})

-- | The container of pages in this blog.
bPages :: Lens' Blog (Maybe BlogPages)
bPages = lens _bPages (\ s a -> s{_bPages = a})

-- | The locale this Blog is set to.
bLocale :: Lens' Blog (Maybe BlogLocale)
bLocale = lens _bLocale (\ s a -> s{_bLocale = a})

-- | RFC 3339 date-time when this blog was published.
bPublished :: Lens' Blog (Maybe UTCTime)
bPublished
  = lens _bPublished (\ s a -> s{_bPublished = a})

-- | The URL where this blog is published.
bUrl :: Lens' Blog (Maybe Text)
bUrl = lens _bUrl (\ s a -> s{_bUrl = a})

-- | The JSON custom meta-data for the Blog
bCustomMetaData :: Lens' Blog (Maybe Text)
bCustomMetaData
  = lens _bCustomMetaData
      (\ s a -> s{_bCustomMetaData = a})

-- | The API REST URL to fetch this resource from.
bSelfLink :: Lens' Blog (Maybe Text)
bSelfLink
  = lens _bSelfLink (\ s a -> s{_bSelfLink = a})

-- | The name of this blog. This is displayed as the title.
bName :: Lens' Blog (Maybe Text)
bName = lens _bName (\ s a -> s{_bName = a})

-- | The identifier for this resource.
bId :: Lens' Blog (Maybe Text)
bId = lens _bId (\ s a -> s{_bId = a})

-- | RFC 3339 date-time when this blog was last updated.
bUpdated :: Lens' Blog (Maybe UTCTime)
bUpdated = lens _bUpdated (\ s a -> s{_bUpdated = a})

-- | The container of posts in this blog.
bPosts :: Lens' Blog (Maybe BlogPosts)
bPosts = lens _bPosts (\ s a -> s{_bPosts = a})

-- | The description of this blog. This is displayed underneath the title.
bDescription :: Lens' Blog (Maybe Text)
bDescription
  = lens _bDescription (\ s a -> s{_bDescription = a})

--
-- /See:/ 'blogList' smart constructor.
data BlogList = BlogList
    { _blKind          :: !Text
    , _blItems         :: !(Maybe [Maybe Blog])
    , _blBlogUserInfos :: !(Maybe [Maybe BlogUserInfo])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blKind'
--
-- * 'blItems'
--
-- * 'blBlogUserInfos'
blogList
    :: BlogList
blogList =
    BlogList
    { _blKind = "blogger#blogList"
    , _blItems = Nothing
    , _blBlogUserInfos = Nothing
    }

-- | The kind of this entity. Always blogger#blogList
blKind :: Lens' BlogList Text
blKind = lens _blKind (\ s a -> s{_blKind = a})

-- | The list of Blogs this user has Authorship or Admin rights over.
blItems :: Lens' BlogList [Maybe Blog]
blItems
  = lens _blItems (\ s a -> s{_blItems = a}) . _Default
      . _Coerce

-- | Admin level list of blog per-user information
blBlogUserInfos :: Lens' BlogList [Maybe BlogUserInfo]
blBlogUserInfos
  = lens _blBlogUserInfos
      (\ s a -> s{_blBlogUserInfos = a})
      . _Default
      . _Coerce

-- | The locale this Blog is set to.
--
-- /See:/ 'blogLocale' smart constructor.
data BlogLocale = BlogLocale
    { _blVariant  :: !(Maybe Text)
    , _blCountry  :: !(Maybe Text)
    , _blLanguage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogLocale' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blVariant'
--
-- * 'blCountry'
--
-- * 'blLanguage'
blogLocale
    :: BlogLocale
blogLocale =
    BlogLocale
    { _blVariant = Nothing
    , _blCountry = Nothing
    , _blLanguage = Nothing
    }

-- | The language variant this blog is authored in.
blVariant :: Lens' BlogLocale (Maybe Text)
blVariant
  = lens _blVariant (\ s a -> s{_blVariant = a})

-- | The country this blog\'s locale is set to.
blCountry :: Lens' BlogLocale (Maybe Text)
blCountry
  = lens _blCountry (\ s a -> s{_blCountry = a})

-- | The language this blog is authored in.
blLanguage :: Lens' BlogLocale (Maybe Text)
blLanguage
  = lens _blLanguage (\ s a -> s{_blLanguage = a})

-- | The container of pages in this blog.
--
-- /See:/ 'blogPages' smart constructor.
data BlogPages = BlogPages
    { _bpsTotalItems :: !(Maybe Int32)
    , _bpsSelfLink   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogPages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpsTotalItems'
--
-- * 'bpsSelfLink'
blogPages
    :: BlogPages
blogPages =
    BlogPages
    { _bpsTotalItems = Nothing
    , _bpsSelfLink = Nothing
    }

-- | The count of pages in this blog.
bpsTotalItems :: Lens' BlogPages (Maybe Int32)
bpsTotalItems
  = lens _bpsTotalItems
      (\ s a -> s{_bpsTotalItems = a})

-- | The URL of the container for pages in this blog.
bpsSelfLink :: Lens' BlogPages (Maybe Text)
bpsSelfLink
  = lens _bpsSelfLink (\ s a -> s{_bpsSelfLink = a})

--
-- /See:/ 'blogPerUserInfo' smart constructor.
data BlogPerUserInfo = BlogPerUserInfo
    { _bpuiPhotosAlbumKey :: !(Maybe Text)
    , _bpuiKind           :: !Text
    , _bpuiBlogId         :: !(Maybe Text)
    , _bpuiUserId         :: !(Maybe Text)
    , _bpuiRole           :: !(Maybe Text)
    , _bpuiHasAdminAccess :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogPerUserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpuiPhotosAlbumKey'
--
-- * 'bpuiKind'
--
-- * 'bpuiBlogId'
--
-- * 'bpuiUserId'
--
-- * 'bpuiRole'
--
-- * 'bpuiHasAdminAccess'
blogPerUserInfo
    :: BlogPerUserInfo
blogPerUserInfo =
    BlogPerUserInfo
    { _bpuiPhotosAlbumKey = Nothing
    , _bpuiKind = "blogger#blogPerUserInfo"
    , _bpuiBlogId = Nothing
    , _bpuiUserId = Nothing
    , _bpuiRole = Nothing
    , _bpuiHasAdminAccess = Nothing
    }

-- | The Photo Album Key for the user when adding photos to the blog
bpuiPhotosAlbumKey :: Lens' BlogPerUserInfo (Maybe Text)
bpuiPhotosAlbumKey
  = lens _bpuiPhotosAlbumKey
      (\ s a -> s{_bpuiPhotosAlbumKey = a})

-- | The kind of this entity. Always blogger#blogPerUserInfo
bpuiKind :: Lens' BlogPerUserInfo Text
bpuiKind = lens _bpuiKind (\ s a -> s{_bpuiKind = a})

-- | ID of the Blog resource
bpuiBlogId :: Lens' BlogPerUserInfo (Maybe Text)
bpuiBlogId
  = lens _bpuiBlogId (\ s a -> s{_bpuiBlogId = a})

-- | ID of the User
bpuiUserId :: Lens' BlogPerUserInfo (Maybe Text)
bpuiUserId
  = lens _bpuiUserId (\ s a -> s{_bpuiUserId = a})

-- | Access permissions that the user has for the blog (ADMIN, AUTHOR, or
-- READER).
bpuiRole :: Lens' BlogPerUserInfo (Maybe Text)
bpuiRole = lens _bpuiRole (\ s a -> s{_bpuiRole = a})

-- | True if the user has Admin level access to the blog.
bpuiHasAdminAccess :: Lens' BlogPerUserInfo (Maybe Bool)
bpuiHasAdminAccess
  = lens _bpuiHasAdminAccess
      (\ s a -> s{_bpuiHasAdminAccess = a})

-- | The container of posts in this blog.
--
-- /See:/ 'blogPosts' smart constructor.
data BlogPosts = BlogPosts
    { _bpTotalItems :: !(Maybe Int32)
    , _bpItems      :: !(Maybe [Maybe Post])
    , _bpSelfLink   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogPosts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpTotalItems'
--
-- * 'bpItems'
--
-- * 'bpSelfLink'
blogPosts
    :: BlogPosts
blogPosts =
    BlogPosts
    { _bpTotalItems = Nothing
    , _bpItems = Nothing
    , _bpSelfLink = Nothing
    }

-- | The count of posts in this blog.
bpTotalItems :: Lens' BlogPosts (Maybe Int32)
bpTotalItems
  = lens _bpTotalItems (\ s a -> s{_bpTotalItems = a})

-- | The List of Posts for this Blog.
bpItems :: Lens' BlogPosts [Maybe Post]
bpItems
  = lens _bpItems (\ s a -> s{_bpItems = a}) . _Default
      . _Coerce

-- | The URL of the container for posts in this blog.
bpSelfLink :: Lens' BlogPosts (Maybe Text)
bpSelfLink
  = lens _bpSelfLink (\ s a -> s{_bpSelfLink = a})

--
-- /See:/ 'blogUserInfo' smart constructor.
data BlogUserInfo = BlogUserInfo
    { _buiKind         :: !Text
    , _buiBlog         :: !(Maybe (Maybe Blog))
    , _buiBlogUserInfo :: !(Maybe (Maybe BlogPerUserInfo))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogUserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buiKind'
--
-- * 'buiBlog'
--
-- * 'buiBlogUserInfo'
blogUserInfo
    :: BlogUserInfo
blogUserInfo =
    BlogUserInfo
    { _buiKind = "blogger#blogUserInfo"
    , _buiBlog = Nothing
    , _buiBlogUserInfo = Nothing
    }

-- | The kind of this entity. Always blogger#blogUserInfo
buiKind :: Lens' BlogUserInfo Text
buiKind = lens _buiKind (\ s a -> s{_buiKind = a})

-- | The Blog resource.
buiBlog :: Lens' BlogUserInfo (Maybe (Maybe Blog))
buiBlog = lens _buiBlog (\ s a -> s{_buiBlog = a})

-- | Information about a User for the Blog.
buiBlogUserInfo :: Lens' BlogUserInfo (Maybe (Maybe BlogPerUserInfo))
buiBlogUserInfo
  = lens _buiBlogUserInfo
      (\ s a -> s{_buiBlogUserInfo = a})

--
-- /See:/ 'comment' smart constructor.
data Comment = Comment
    { _cStatus    :: !(Maybe Text)
    , _cPost      :: !(Maybe CommentPost)
    , _cKind      :: !Text
    , _cPublished :: !(Maybe UTCTime)
    , _cBlog      :: !(Maybe CommentBlog)
    , _cContent   :: !(Maybe Text)
    , _cSelfLink  :: !(Maybe Text)
    , _cAuthor    :: !(Maybe CommentAuthor)
    , _cId        :: !(Maybe Text)
    , _cUpdated   :: !(Maybe UTCTime)
    , _cInReplyTo :: !(Maybe CommentInReplyTo)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Comment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cStatus'
--
-- * 'cPost'
--
-- * 'cKind'
--
-- * 'cPublished'
--
-- * 'cBlog'
--
-- * 'cContent'
--
-- * 'cSelfLink'
--
-- * 'cAuthor'
--
-- * 'cId'
--
-- * 'cUpdated'
--
-- * 'cInReplyTo'
comment
    :: Comment
comment =
    Comment
    { _cStatus = Nothing
    , _cPost = Nothing
    , _cKind = "blogger#comment"
    , _cPublished = Nothing
    , _cBlog = Nothing
    , _cContent = Nothing
    , _cSelfLink = Nothing
    , _cAuthor = Nothing
    , _cId = Nothing
    , _cUpdated = Nothing
    , _cInReplyTo = Nothing
    }

-- | The status of the comment (only populated for admin users)
cStatus :: Lens' Comment (Maybe Text)
cStatus = lens _cStatus (\ s a -> s{_cStatus = a})

-- | Data about the post containing this comment.
cPost :: Lens' Comment (Maybe CommentPost)
cPost = lens _cPost (\ s a -> s{_cPost = a})

-- | The kind of this entry. Always blogger#comment
cKind :: Lens' Comment Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | RFC 3339 date-time when this comment was published.
cPublished :: Lens' Comment (Maybe UTCTime)
cPublished
  = lens _cPublished (\ s a -> s{_cPublished = a})

-- | Data about the blog containing this comment.
cBlog :: Lens' Comment (Maybe CommentBlog)
cBlog = lens _cBlog (\ s a -> s{_cBlog = a})

-- | The actual content of the comment. May include HTML markup.
cContent :: Lens' Comment (Maybe Text)
cContent = lens _cContent (\ s a -> s{_cContent = a})

-- | The API REST URL to fetch this resource from.
cSelfLink :: Lens' Comment (Maybe Text)
cSelfLink
  = lens _cSelfLink (\ s a -> s{_cSelfLink = a})

-- | The author of this Comment.
cAuthor :: Lens' Comment (Maybe CommentAuthor)
cAuthor = lens _cAuthor (\ s a -> s{_cAuthor = a})

-- | The identifier for this resource.
cId :: Lens' Comment (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | RFC 3339 date-time when this comment was last updated.
cUpdated :: Lens' Comment (Maybe UTCTime)
cUpdated = lens _cUpdated (\ s a -> s{_cUpdated = a})

-- | Data about the comment this is in reply to.
cInReplyTo :: Lens' Comment (Maybe CommentInReplyTo)
cInReplyTo
  = lens _cInReplyTo (\ s a -> s{_cInReplyTo = a})

-- | The author of this Comment.
--
-- /See:/ 'commentAuthor' smart constructor.
data CommentAuthor = CommentAuthor
    { _caImage       :: !(Maybe CommentImageAuthor)
    , _caUrl         :: !(Maybe Text)
    , _caDisplayName :: !(Maybe Text)
    , _caId          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentAuthor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caImage'
--
-- * 'caUrl'
--
-- * 'caDisplayName'
--
-- * 'caId'
commentAuthor
    :: CommentAuthor
commentAuthor =
    CommentAuthor
    { _caImage = Nothing
    , _caUrl = Nothing
    , _caDisplayName = Nothing
    , _caId = Nothing
    }

-- | The comment creator\'s avatar.
caImage :: Lens' CommentAuthor (Maybe CommentImageAuthor)
caImage = lens _caImage (\ s a -> s{_caImage = a})

-- | The URL of the Comment creator\'s Profile page.
caUrl :: Lens' CommentAuthor (Maybe Text)
caUrl = lens _caUrl (\ s a -> s{_caUrl = a})

-- | The display name.
caDisplayName :: Lens' CommentAuthor (Maybe Text)
caDisplayName
  = lens _caDisplayName
      (\ s a -> s{_caDisplayName = a})

-- | The identifier of the Comment creator.
caId :: Lens' CommentAuthor (Maybe Text)
caId = lens _caId (\ s a -> s{_caId = a})

-- | Data about the blog containing this comment.
--
-- /See:/ 'commentBlog' smart constructor.
newtype CommentBlog = CommentBlog
    { _cbId :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentBlog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbId'
commentBlog
    :: CommentBlog
commentBlog =
    CommentBlog
    { _cbId = Nothing
    }

-- | The identifier of the blog containing this comment.
cbId :: Lens' CommentBlog (Maybe Text)
cbId = lens _cbId (\ s a -> s{_cbId = a})

-- | The comment creator\'s avatar.
--
-- /See:/ 'commentImageAuthor' smart constructor.
newtype CommentImageAuthor = CommentImageAuthor
    { _ciaUrl :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentImageAuthor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciaUrl'
commentImageAuthor
    :: CommentImageAuthor
commentImageAuthor =
    CommentImageAuthor
    { _ciaUrl = Nothing
    }

-- | The comment creator\'s avatar URL.
ciaUrl :: Lens' CommentImageAuthor (Maybe Text)
ciaUrl = lens _ciaUrl (\ s a -> s{_ciaUrl = a})

-- | Data about the comment this is in reply to.
--
-- /See:/ 'commentInReplyTo' smart constructor.
newtype CommentInReplyTo = CommentInReplyTo
    { _cirtId :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentInReplyTo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirtId'
commentInReplyTo
    :: CommentInReplyTo
commentInReplyTo =
    CommentInReplyTo
    { _cirtId = Nothing
    }

-- | The identified of the parent of this comment.
cirtId :: Lens' CommentInReplyTo (Maybe Text)
cirtId = lens _cirtId (\ s a -> s{_cirtId = a})

--
-- /See:/ 'commentList' smart constructor.
data CommentList = CommentList
    { _clEtag          :: !(Maybe Text)
    , _clNextPageToken :: !(Maybe Text)
    , _clKind          :: !Text
    , _clItems         :: !(Maybe [Maybe Comment])
    , _clPrevPageToken :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clEtag'
--
-- * 'clNextPageToken'
--
-- * 'clKind'
--
-- * 'clItems'
--
-- * 'clPrevPageToken'
commentList
    :: CommentList
commentList =
    CommentList
    { _clEtag = Nothing
    , _clNextPageToken = Nothing
    , _clKind = "blogger#commentList"
    , _clItems = Nothing
    , _clPrevPageToken = Nothing
    }

-- | Etag of the response.
clEtag :: Lens' CommentList (Maybe Text)
clEtag = lens _clEtag (\ s a -> s{_clEtag = a})

-- | Pagination token to fetch the next page, if one exists.
clNextPageToken :: Lens' CommentList (Maybe Text)
clNextPageToken
  = lens _clNextPageToken
      (\ s a -> s{_clNextPageToken = a})

-- | The kind of this entry. Always blogger#commentList
clKind :: Lens' CommentList Text
clKind = lens _clKind (\ s a -> s{_clKind = a})

-- | The List of Comments for a Post.
clItems :: Lens' CommentList [Maybe Comment]
clItems
  = lens _clItems (\ s a -> s{_clItems = a}) . _Default
      . _Coerce

-- | Pagination token to fetch the previous page, if one exists.
clPrevPageToken :: Lens' CommentList (Maybe Text)
clPrevPageToken
  = lens _clPrevPageToken
      (\ s a -> s{_clPrevPageToken = a})

-- | Data about the post containing this comment.
--
-- /See:/ 'commentPost' smart constructor.
newtype CommentPost = CommentPost
    { _cpId :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentPost' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpId'
commentPost
    :: CommentPost
commentPost =
    CommentPost
    { _cpId = Nothing
    }

-- | The identifier of the post containing this comment.
cpId :: Lens' CommentPost (Maybe Text)
cpId = lens _cpId (\ s a -> s{_cpId = a})

--
-- /See:/ 'page' smart constructor.
data Page = Page
    { _pagStatus    :: !(Maybe Text)
    , _pagEtag      :: !(Maybe Text)
    , _pagKind      :: !Text
    , _pagPublished :: !(Maybe UTCTime)
    , _pagUrl       :: !(Maybe Text)
    , _pagBlog      :: !(Maybe PageBlog)
    , _pagContent   :: !(Maybe Text)
    , _pagSelfLink  :: !(Maybe Text)
    , _pagAuthor    :: !(Maybe PageAuthor)
    , _pagId        :: !(Maybe Text)
    , _pagUpdated   :: !(Maybe UTCTime)
    , _pagTitle     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Page' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pagStatus'
--
-- * 'pagEtag'
--
-- * 'pagKind'
--
-- * 'pagPublished'
--
-- * 'pagUrl'
--
-- * 'pagBlog'
--
-- * 'pagContent'
--
-- * 'pagSelfLink'
--
-- * 'pagAuthor'
--
-- * 'pagId'
--
-- * 'pagUpdated'
--
-- * 'pagTitle'
page
    :: Page
page =
    Page
    { _pagStatus = Nothing
    , _pagEtag = Nothing
    , _pagKind = "blogger#page"
    , _pagPublished = Nothing
    , _pagUrl = Nothing
    , _pagBlog = Nothing
    , _pagContent = Nothing
    , _pagSelfLink = Nothing
    , _pagAuthor = Nothing
    , _pagId = Nothing
    , _pagUpdated = Nothing
    , _pagTitle = Nothing
    }

-- | The status of the page for admin resources (either LIVE or DRAFT).
pagStatus :: Lens' Page (Maybe Text)
pagStatus
  = lens _pagStatus (\ s a -> s{_pagStatus = a})

-- | Etag of the resource.
pagEtag :: Lens' Page (Maybe Text)
pagEtag = lens _pagEtag (\ s a -> s{_pagEtag = a})

-- | The kind of this entity. Always blogger#page
pagKind :: Lens' Page Text
pagKind = lens _pagKind (\ s a -> s{_pagKind = a})

-- | RFC 3339 date-time when this Page was published.
pagPublished :: Lens' Page (Maybe UTCTime)
pagPublished
  = lens _pagPublished (\ s a -> s{_pagPublished = a})

-- | The URL that this Page is displayed at.
pagUrl :: Lens' Page (Maybe Text)
pagUrl = lens _pagUrl (\ s a -> s{_pagUrl = a})

-- | Data about the blog containing this Page.
pagBlog :: Lens' Page (Maybe PageBlog)
pagBlog = lens _pagBlog (\ s a -> s{_pagBlog = a})

-- | The body content of this Page, in HTML.
pagContent :: Lens' Page (Maybe Text)
pagContent
  = lens _pagContent (\ s a -> s{_pagContent = a})

-- | The API REST URL to fetch this resource from.
pagSelfLink :: Lens' Page (Maybe Text)
pagSelfLink
  = lens _pagSelfLink (\ s a -> s{_pagSelfLink = a})

-- | The author of this Page.
pagAuthor :: Lens' Page (Maybe PageAuthor)
pagAuthor
  = lens _pagAuthor (\ s a -> s{_pagAuthor = a})

-- | The identifier for this resource.
pagId :: Lens' Page (Maybe Text)
pagId = lens _pagId (\ s a -> s{_pagId = a})

-- | RFC 3339 date-time when this Page was last updated.
pagUpdated :: Lens' Page (Maybe UTCTime)
pagUpdated
  = lens _pagUpdated (\ s a -> s{_pagUpdated = a})

-- | The title of this entity. This is the name displayed in the Admin user
-- interface.
pagTitle :: Lens' Page (Maybe Text)
pagTitle = lens _pagTitle (\ s a -> s{_pagTitle = a})

-- | The author of this Page.
--
-- /See:/ 'pageAuthor' smart constructor.
data PageAuthor = PageAuthor
    { _paImage       :: !(Maybe PageImageAuthor)
    , _paUrl         :: !(Maybe Text)
    , _paDisplayName :: !(Maybe Text)
    , _paId          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageAuthor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paImage'
--
-- * 'paUrl'
--
-- * 'paDisplayName'
--
-- * 'paId'
pageAuthor
    :: PageAuthor
pageAuthor =
    PageAuthor
    { _paImage = Nothing
    , _paUrl = Nothing
    , _paDisplayName = Nothing
    , _paId = Nothing
    }

-- | The page author\'s avatar.
paImage :: Lens' PageAuthor (Maybe PageImageAuthor)
paImage = lens _paImage (\ s a -> s{_paImage = a})

-- | The URL of the Page creator\'s Profile page.
paUrl :: Lens' PageAuthor (Maybe Text)
paUrl = lens _paUrl (\ s a -> s{_paUrl = a})

-- | The display name.
paDisplayName :: Lens' PageAuthor (Maybe Text)
paDisplayName
  = lens _paDisplayName
      (\ s a -> s{_paDisplayName = a})

-- | The identifier of the Page creator.
paId :: Lens' PageAuthor (Maybe Text)
paId = lens _paId (\ s a -> s{_paId = a})

-- | Data about the blog containing this Page.
--
-- /See:/ 'pageBlog' smart constructor.
newtype PageBlog = PageBlog
    { _pId :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageBlog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pId'
pageBlog
    :: PageBlog
pageBlog =
    PageBlog
    { _pId = Nothing
    }

-- | The identifier of the blog containing this page.
pId :: Lens' PageBlog (Maybe Text)
pId = lens _pId (\ s a -> s{_pId = a})

-- | The page author\'s avatar.
--
-- /See:/ 'pageImageAuthor' smart constructor.
newtype PageImageAuthor = PageImageAuthor
    { _piaUrl :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageImageAuthor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piaUrl'
pageImageAuthor
    :: PageImageAuthor
pageImageAuthor =
    PageImageAuthor
    { _piaUrl = Nothing
    }

-- | The page author\'s avatar URL.
piaUrl :: Lens' PageImageAuthor (Maybe Text)
piaUrl = lens _piaUrl (\ s a -> s{_piaUrl = a})

--
-- /See:/ 'pageList' smart constructor.
data PageList = PageList
    { _pllEtag          :: !(Maybe Text)
    , _pllNextPageToken :: !(Maybe Text)
    , _pllKind          :: !Text
    , _pllItems         :: !(Maybe [Maybe Page])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllEtag'
--
-- * 'pllNextPageToken'
--
-- * 'pllKind'
--
-- * 'pllItems'
pageList
    :: PageList
pageList =
    PageList
    { _pllEtag = Nothing
    , _pllNextPageToken = Nothing
    , _pllKind = "blogger#pageList"
    , _pllItems = Nothing
    }

-- | Etag of the response.
pllEtag :: Lens' PageList (Maybe Text)
pllEtag = lens _pllEtag (\ s a -> s{_pllEtag = a})

-- | Pagination token to fetch the next page, if one exists.
pllNextPageToken :: Lens' PageList (Maybe Text)
pllNextPageToken
  = lens _pllNextPageToken
      (\ s a -> s{_pllNextPageToken = a})

-- | The kind of this entity. Always blogger#pageList
pllKind :: Lens' PageList Text
pllKind = lens _pllKind (\ s a -> s{_pllKind = a})

-- | The list of Pages for a Blog.
pllItems :: Lens' PageList [Maybe Page]
pllItems
  = lens _pllItems (\ s a -> s{_pllItems = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'pageviews' smart constructor.
data Pageviews = Pageviews
    { _pKind   :: !Text
    , _pCounts :: !(Maybe [PageviewsItemCounts])
    , _pBlogId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Pageviews' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pKind'
--
-- * 'pCounts'
--
-- * 'pBlogId'
pageviews
    :: Pageviews
pageviews =
    Pageviews
    { _pKind = "blogger#page_views"
    , _pCounts = Nothing
    , _pBlogId = Nothing
    }

-- | The kind of this entry. Always blogger#page_views
pKind :: Lens' Pageviews Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | The container of posts in this blog.
pCounts :: Lens' Pageviews [PageviewsItemCounts]
pCounts
  = lens _pCounts (\ s a -> s{_pCounts = a}) . _Default
      . _Coerce

-- | Blog Id
pBlogId :: Lens' Pageviews (Maybe Text)
pBlogId = lens _pBlogId (\ s a -> s{_pBlogId = a})

--
-- /See:/ 'pageviewsItemCounts' smart constructor.
data PageviewsItemCounts = PageviewsItemCounts
    { _picTimeRange :: !(Maybe Text)
    , _picCount     :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageviewsItemCounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picTimeRange'
--
-- * 'picCount'
pageviewsItemCounts
    :: PageviewsItemCounts
pageviewsItemCounts =
    PageviewsItemCounts
    { _picTimeRange = Nothing
    , _picCount = Nothing
    }

-- | Time range the given count applies to
picTimeRange :: Lens' PageviewsItemCounts (Maybe Text)
picTimeRange
  = lens _picTimeRange (\ s a -> s{_picTimeRange = a})

-- | Count of page views for the given time range
picCount :: Lens' PageviewsItemCounts (Maybe Int64)
picCount = lens _picCount (\ s a -> s{_picCount = a})

--
-- /See:/ 'post' smart constructor.
data Post = Post
    { _ppImages         :: !(Maybe [PostItemImages])
    , _ppStatus         :: !(Maybe Text)
    , _ppEtag           :: !(Maybe Text)
    , _ppReaderComments :: !(Maybe Text)
    , _ppLocation       :: !(Maybe PostLocation)
    , _ppKind           :: !Text
    , _ppPublished      :: !(Maybe UTCTime)
    , _ppUrl            :: !(Maybe Text)
    , _ppBlog           :: !(Maybe PostBlog)
    , _ppCustomMetaData :: !(Maybe Text)
    , _ppContent        :: !(Maybe Text)
    , _ppReplies        :: !(Maybe PostReplies)
    , _ppSelfLink       :: !(Maybe Text)
    , _ppAuthor         :: !(Maybe PostAuthor)
    , _ppId             :: !(Maybe Text)
    , _ppLabels         :: !(Maybe [Text])
    , _ppUpdated        :: !(Maybe UTCTime)
    , _ppTitleLink      :: !(Maybe Text)
    , _ppTitle          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Post' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppImages'
--
-- * 'ppStatus'
--
-- * 'ppEtag'
--
-- * 'ppReaderComments'
--
-- * 'ppLocation'
--
-- * 'ppKind'
--
-- * 'ppPublished'
--
-- * 'ppUrl'
--
-- * 'ppBlog'
--
-- * 'ppCustomMetaData'
--
-- * 'ppContent'
--
-- * 'ppReplies'
--
-- * 'ppSelfLink'
--
-- * 'ppAuthor'
--
-- * 'ppId'
--
-- * 'ppLabels'
--
-- * 'ppUpdated'
--
-- * 'ppTitleLink'
--
-- * 'ppTitle'
post
    :: Post
post =
    Post
    { _ppImages = Nothing
    , _ppStatus = Nothing
    , _ppEtag = Nothing
    , _ppReaderComments = Nothing
    , _ppLocation = Nothing
    , _ppKind = "blogger#post"
    , _ppPublished = Nothing
    , _ppUrl = Nothing
    , _ppBlog = Nothing
    , _ppCustomMetaData = Nothing
    , _ppContent = Nothing
    , _ppReplies = Nothing
    , _ppSelfLink = Nothing
    , _ppAuthor = Nothing
    , _ppId = Nothing
    , _ppLabels = Nothing
    , _ppUpdated = Nothing
    , _ppTitleLink = Nothing
    , _ppTitle = Nothing
    }

-- | Display image for the Post.
ppImages :: Lens' Post [PostItemImages]
ppImages
  = lens _ppImages (\ s a -> s{_ppImages = a}) .
      _Default
      . _Coerce

-- | Status of the post. Only set for admin-level requests
ppStatus :: Lens' Post (Maybe Text)
ppStatus = lens _ppStatus (\ s a -> s{_ppStatus = a})

-- | Etag of the resource.
ppEtag :: Lens' Post (Maybe Text)
ppEtag = lens _ppEtag (\ s a -> s{_ppEtag = a})

-- | Comment control and display setting for readers of this post.
ppReaderComments :: Lens' Post (Maybe Text)
ppReaderComments
  = lens _ppReaderComments
      (\ s a -> s{_ppReaderComments = a})

-- | The location for geotagged posts.
ppLocation :: Lens' Post (Maybe PostLocation)
ppLocation
  = lens _ppLocation (\ s a -> s{_ppLocation = a})

-- | The kind of this entity. Always blogger#post
ppKind :: Lens' Post Text
ppKind = lens _ppKind (\ s a -> s{_ppKind = a})

-- | RFC 3339 date-time when this Post was published.
ppPublished :: Lens' Post (Maybe UTCTime)
ppPublished
  = lens _ppPublished (\ s a -> s{_ppPublished = a})

-- | The URL where this Post is displayed.
ppUrl :: Lens' Post (Maybe Text)
ppUrl = lens _ppUrl (\ s a -> s{_ppUrl = a})

-- | Data about the blog containing this Post.
ppBlog :: Lens' Post (Maybe PostBlog)
ppBlog = lens _ppBlog (\ s a -> s{_ppBlog = a})

-- | The JSON meta-data for the Post.
ppCustomMetaData :: Lens' Post (Maybe Text)
ppCustomMetaData
  = lens _ppCustomMetaData
      (\ s a -> s{_ppCustomMetaData = a})

-- | The content of the Post. May contain HTML markup.
ppContent :: Lens' Post (Maybe Text)
ppContent
  = lens _ppContent (\ s a -> s{_ppContent = a})

-- | The container of comments on this Post.
ppReplies :: Lens' Post (Maybe PostReplies)
ppReplies
  = lens _ppReplies (\ s a -> s{_ppReplies = a})

-- | The API REST URL to fetch this resource from.
ppSelfLink :: Lens' Post (Maybe Text)
ppSelfLink
  = lens _ppSelfLink (\ s a -> s{_ppSelfLink = a})

-- | The author of this Post.
ppAuthor :: Lens' Post (Maybe PostAuthor)
ppAuthor = lens _ppAuthor (\ s a -> s{_ppAuthor = a})

-- | The identifier of this Post.
ppId :: Lens' Post (Maybe Text)
ppId = lens _ppId (\ s a -> s{_ppId = a})

-- | The list of labels this Post was tagged with.
ppLabels :: Lens' Post [Text]
ppLabels
  = lens _ppLabels (\ s a -> s{_ppLabels = a}) .
      _Default
      . _Coerce

-- | RFC 3339 date-time when this Post was last updated.
ppUpdated :: Lens' Post (Maybe UTCTime)
ppUpdated
  = lens _ppUpdated (\ s a -> s{_ppUpdated = a})

-- | The title link URL, similar to atom\'s related link.
ppTitleLink :: Lens' Post (Maybe Text)
ppTitleLink
  = lens _ppTitleLink (\ s a -> s{_ppTitleLink = a})

-- | The title of the Post.
ppTitle :: Lens' Post (Maybe Text)
ppTitle = lens _ppTitle (\ s a -> s{_ppTitle = a})

-- | The author of this Post.
--
-- /See:/ 'postAuthor' smart constructor.
data PostAuthor = PostAuthor
    { _posImage       :: !(Maybe PostImageAuthor)
    , _posUrl         :: !(Maybe Text)
    , _posDisplayName :: !(Maybe Text)
    , _posId          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostAuthor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posImage'
--
-- * 'posUrl'
--
-- * 'posDisplayName'
--
-- * 'posId'
postAuthor
    :: PostAuthor
postAuthor =
    PostAuthor
    { _posImage = Nothing
    , _posUrl = Nothing
    , _posDisplayName = Nothing
    , _posId = Nothing
    }

-- | The Post author\'s avatar.
posImage :: Lens' PostAuthor (Maybe PostImageAuthor)
posImage = lens _posImage (\ s a -> s{_posImage = a})

-- | The URL of the Post creator\'s Profile page.
posUrl :: Lens' PostAuthor (Maybe Text)
posUrl = lens _posUrl (\ s a -> s{_posUrl = a})

-- | The display name.
posDisplayName :: Lens' PostAuthor (Maybe Text)
posDisplayName
  = lens _posDisplayName
      (\ s a -> s{_posDisplayName = a})

-- | The identifier of the Post creator.
posId :: Lens' PostAuthor (Maybe Text)
posId = lens _posId (\ s a -> s{_posId = a})

-- | Data about the blog containing this Post.
--
-- /See:/ 'postBlog' smart constructor.
newtype PostBlog = PostBlog
    { _pbId :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostBlog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbId'
postBlog
    :: PostBlog
postBlog =
    PostBlog
    { _pbId = Nothing
    }

-- | The identifier of the Blog that contains this Post.
pbId :: Lens' PostBlog (Maybe Text)
pbId = lens _pbId (\ s a -> s{_pbId = a})

-- | The Post author\'s avatar.
--
-- /See:/ 'postImageAuthor' smart constructor.
newtype PostImageAuthor = PostImageAuthor
    { _pUrl :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostImageAuthor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pUrl'
postImageAuthor
    :: PostImageAuthor
postImageAuthor =
    PostImageAuthor
    { _pUrl = Nothing
    }

-- | The Post author\'s avatar URL.
pUrl :: Lens' PostImageAuthor (Maybe Text)
pUrl = lens _pUrl (\ s a -> s{_pUrl = a})

--
-- /See:/ 'postItemImages' smart constructor.
newtype PostItemImages = PostItemImages
    { _piiUrl :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostItemImages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piiUrl'
postItemImages
    :: PostItemImages
postItemImages =
    PostItemImages
    { _piiUrl = Nothing
    }

piiUrl :: Lens' PostItemImages (Maybe Text)
piiUrl = lens _piiUrl (\ s a -> s{_piiUrl = a})

--
-- /See:/ 'postList' smart constructor.
data PostList = PostList
    { _plEtag          :: !(Maybe Text)
    , _plNextPageToken :: !(Maybe Text)
    , _plKind          :: !Text
    , _plItems         :: !(Maybe [Maybe Post])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plEtag'
--
-- * 'plNextPageToken'
--
-- * 'plKind'
--
-- * 'plItems'
postList
    :: PostList
postList =
    PostList
    { _plEtag = Nothing
    , _plNextPageToken = Nothing
    , _plKind = "blogger#postList"
    , _plItems = Nothing
    }

-- | Etag of the response.
plEtag :: Lens' PostList (Maybe Text)
plEtag = lens _plEtag (\ s a -> s{_plEtag = a})

-- | Pagination token to fetch the next page, if one exists.
plNextPageToken :: Lens' PostList (Maybe Text)
plNextPageToken
  = lens _plNextPageToken
      (\ s a -> s{_plNextPageToken = a})

-- | The kind of this entity. Always blogger#postList
plKind :: Lens' PostList Text
plKind = lens _plKind (\ s a -> s{_plKind = a})

-- | The list of Posts for this Blog.
plItems :: Lens' PostList [Maybe Post]
plItems
  = lens _plItems (\ s a -> s{_plItems = a}) . _Default
      . _Coerce

-- | The location for geotagged posts.
--
-- /See:/ 'postLocation' smart constructor.
data PostLocation = PostLocation
    { _plSpan :: !(Maybe Text)
    , _plLat  :: !(Maybe Double)
    , _plName :: !(Maybe Text)
    , _plLng  :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plSpan'
--
-- * 'plLat'
--
-- * 'plName'
--
-- * 'plLng'
postLocation
    :: PostLocation
postLocation =
    PostLocation
    { _plSpan = Nothing
    , _plLat = Nothing
    , _plName = Nothing
    , _plLng = Nothing
    }

-- | Location\'s viewport span. Can be used when rendering a map preview.
plSpan :: Lens' PostLocation (Maybe Text)
plSpan = lens _plSpan (\ s a -> s{_plSpan = a})

-- | Location\'s latitude.
plLat :: Lens' PostLocation (Maybe Double)
plLat = lens _plLat (\ s a -> s{_plLat = a})

-- | Location name.
plName :: Lens' PostLocation (Maybe Text)
plName = lens _plName (\ s a -> s{_plName = a})

-- | Location\'s longitude.
plLng :: Lens' PostLocation (Maybe Double)
plLng = lens _plLng (\ s a -> s{_plLng = a})

--
-- /See:/ 'postPerUserInfo' smart constructor.
data PostPerUserInfo = PostPerUserInfo
    { _ppuiKind          :: !Text
    , _ppuiBlogId        :: !(Maybe Text)
    , _ppuiUserId        :: !(Maybe Text)
    , _ppuiHasEditAccess :: !(Maybe Bool)
    , _ppuiPostId        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostPerUserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppuiKind'
--
-- * 'ppuiBlogId'
--
-- * 'ppuiUserId'
--
-- * 'ppuiHasEditAccess'
--
-- * 'ppuiPostId'
postPerUserInfo
    :: PostPerUserInfo
postPerUserInfo =
    PostPerUserInfo
    { _ppuiKind = "blogger#postPerUserInfo"
    , _ppuiBlogId = Nothing
    , _ppuiUserId = Nothing
    , _ppuiHasEditAccess = Nothing
    , _ppuiPostId = Nothing
    }

-- | The kind of this entity. Always blogger#postPerUserInfo
ppuiKind :: Lens' PostPerUserInfo Text
ppuiKind = lens _ppuiKind (\ s a -> s{_ppuiKind = a})

-- | ID of the Blog that the post resource belongs to.
ppuiBlogId :: Lens' PostPerUserInfo (Maybe Text)
ppuiBlogId
  = lens _ppuiBlogId (\ s a -> s{_ppuiBlogId = a})

-- | ID of the User.
ppuiUserId :: Lens' PostPerUserInfo (Maybe Text)
ppuiUserId
  = lens _ppuiUserId (\ s a -> s{_ppuiUserId = a})

-- | True if the user has Author level access to the post.
ppuiHasEditAccess :: Lens' PostPerUserInfo (Maybe Bool)
ppuiHasEditAccess
  = lens _ppuiHasEditAccess
      (\ s a -> s{_ppuiHasEditAccess = a})

-- | ID of the Post resource.
ppuiPostId :: Lens' PostPerUserInfo (Maybe Text)
ppuiPostId
  = lens _ppuiPostId (\ s a -> s{_ppuiPostId = a})

-- | The container of comments on this Post.
--
-- /See:/ 'postReplies' smart constructor.
data PostReplies = PostReplies
    { _prTotalItems :: !(Maybe Int64)
    , _prItems      :: !(Maybe [Maybe Comment])
    , _prSelfLink   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostReplies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prTotalItems'
--
-- * 'prItems'
--
-- * 'prSelfLink'
postReplies
    :: PostReplies
postReplies =
    PostReplies
    { _prTotalItems = Nothing
    , _prItems = Nothing
    , _prSelfLink = Nothing
    }

-- | The count of comments on this post.
prTotalItems :: Lens' PostReplies (Maybe Int64)
prTotalItems
  = lens _prTotalItems (\ s a -> s{_prTotalItems = a})

-- | The List of Comments for this Post.
prItems :: Lens' PostReplies [Maybe Comment]
prItems
  = lens _prItems (\ s a -> s{_prItems = a}) . _Default
      . _Coerce

-- | The URL of the comments on this post.
prSelfLink :: Lens' PostReplies (Maybe Text)
prSelfLink
  = lens _prSelfLink (\ s a -> s{_prSelfLink = a})

--
-- /See:/ 'postUserInfo' smart constructor.
data PostUserInfo = PostUserInfo
    { _puiPostUserInfo :: !(Maybe (Maybe PostPerUserInfo))
    , _puiPost         :: !(Maybe (Maybe Post))
    , _puiKind         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostUserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puiPostUserInfo'
--
-- * 'puiPost'
--
-- * 'puiKind'
postUserInfo
    :: PostUserInfo
postUserInfo =
    PostUserInfo
    { _puiPostUserInfo = Nothing
    , _puiPost = Nothing
    , _puiKind = "blogger#postUserInfo"
    }

-- | Information about a User for the Post.
puiPostUserInfo :: Lens' PostUserInfo (Maybe (Maybe PostPerUserInfo))
puiPostUserInfo
  = lens _puiPostUserInfo
      (\ s a -> s{_puiPostUserInfo = a})

-- | The Post resource.
puiPost :: Lens' PostUserInfo (Maybe (Maybe Post))
puiPost = lens _puiPost (\ s a -> s{_puiPost = a})

-- | The kind of this entity. Always blogger#postUserInfo
puiKind :: Lens' PostUserInfo Text
puiKind = lens _puiKind (\ s a -> s{_puiKind = a})

--
-- /See:/ 'postUserInfosList' smart constructor.
data PostUserInfosList = PostUserInfosList
    { _puilNextPageToken :: !(Maybe Text)
    , _puilKind          :: !Text
    , _puilItems         :: !(Maybe [Maybe PostUserInfo])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostUserInfosList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puilNextPageToken'
--
-- * 'puilKind'
--
-- * 'puilItems'
postUserInfosList
    :: PostUserInfosList
postUserInfosList =
    PostUserInfosList
    { _puilNextPageToken = Nothing
    , _puilKind = "blogger#postUserInfosList"
    , _puilItems = Nothing
    }

-- | Pagination token to fetch the next page, if one exists.
puilNextPageToken :: Lens' PostUserInfosList (Maybe Text)
puilNextPageToken
  = lens _puilNextPageToken
      (\ s a -> s{_puilNextPageToken = a})

-- | The kind of this entity. Always blogger#postList
puilKind :: Lens' PostUserInfosList Text
puilKind = lens _puilKind (\ s a -> s{_puilKind = a})

-- | The list of Posts with User information for the post, for this Blog.
puilItems :: Lens' PostUserInfosList [Maybe PostUserInfo]
puilItems
  = lens _puilItems (\ s a -> s{_puilItems = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'user' smart constructor.
data User = User
    { _uBlogs       :: !(Maybe UserBlogs)
    , _uKind        :: !Text
    , _uCreated     :: !(Maybe UTCTime)
    , _uLocale      :: !(Maybe UserLocale)
    , _uUrl         :: !(Maybe Text)
    , _uSelfLink    :: !(Maybe Text)
    , _uAbout       :: !(Maybe Text)
    , _uDisplayName :: !(Maybe Text)
    , _uId          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uBlogs'
--
-- * 'uKind'
--
-- * 'uCreated'
--
-- * 'uLocale'
--
-- * 'uUrl'
--
-- * 'uSelfLink'
--
-- * 'uAbout'
--
-- * 'uDisplayName'
--
-- * 'uId'
user
    :: User
user =
    User
    { _uBlogs = Nothing
    , _uKind = "blogger#user"
    , _uCreated = Nothing
    , _uLocale = Nothing
    , _uUrl = Nothing
    , _uSelfLink = Nothing
    , _uAbout = Nothing
    , _uDisplayName = Nothing
    , _uId = Nothing
    }

-- | The container of blogs for this user.
uBlogs :: Lens' User (Maybe UserBlogs)
uBlogs = lens _uBlogs (\ s a -> s{_uBlogs = a})

-- | The kind of this entity. Always blogger#user
uKind :: Lens' User Text
uKind = lens _uKind (\ s a -> s{_uKind = a})

-- | The timestamp of when this profile was created, in seconds since epoch.
uCreated :: Lens' User (Maybe UTCTime)
uCreated = lens _uCreated (\ s a -> s{_uCreated = a})

-- | This user\'s locale
uLocale :: Lens' User (Maybe UserLocale)
uLocale = lens _uLocale (\ s a -> s{_uLocale = a})

-- | The user\'s profile page.
uUrl :: Lens' User (Maybe Text)
uUrl = lens _uUrl (\ s a -> s{_uUrl = a})

-- | The API REST URL to fetch this resource from.
uSelfLink :: Lens' User (Maybe Text)
uSelfLink
  = lens _uSelfLink (\ s a -> s{_uSelfLink = a})

-- | Profile summary information.
uAbout :: Lens' User (Maybe Text)
uAbout = lens _uAbout (\ s a -> s{_uAbout = a})

-- | The display name.
uDisplayName :: Lens' User (Maybe Text)
uDisplayName
  = lens _uDisplayName (\ s a -> s{_uDisplayName = a})

-- | The identifier for this User.
uId :: Lens' User (Maybe Text)
uId = lens _uId (\ s a -> s{_uId = a})

-- | The container of blogs for this user.
--
-- /See:/ 'userBlogs' smart constructor.
newtype UserBlogs = UserBlogs
    { _ubSelfLink :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserBlogs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ubSelfLink'
userBlogs
    :: UserBlogs
userBlogs =
    UserBlogs
    { _ubSelfLink = Nothing
    }

-- | The URL of the Blogs for this user.
ubSelfLink :: Lens' UserBlogs (Maybe Text)
ubSelfLink
  = lens _ubSelfLink (\ s a -> s{_ubSelfLink = a})

-- | This user\'s locale
--
-- /See:/ 'userLocale' smart constructor.
data UserLocale = UserLocale
    { _ulVariant  :: !(Maybe Text)
    , _ulCountry  :: !(Maybe Text)
    , _ulLanguage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserLocale' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulVariant'
--
-- * 'ulCountry'
--
-- * 'ulLanguage'
userLocale
    :: UserLocale
userLocale =
    UserLocale
    { _ulVariant = Nothing
    , _ulCountry = Nothing
    , _ulLanguage = Nothing
    }

-- | The user\'s language variant setting.
ulVariant :: Lens' UserLocale (Maybe Text)
ulVariant
  = lens _ulVariant (\ s a -> s{_ulVariant = a})

-- | The user\'s country setting.
ulCountry :: Lens' UserLocale (Maybe Text)
ulCountry
  = lens _ulCountry (\ s a -> s{_ulCountry = a})

-- | The user\'s language setting.
ulLanguage :: Lens' UserLocale (Maybe Text)
ulLanguage
  = lens _ulLanguage (\ s a -> s{_ulLanguage = a})
