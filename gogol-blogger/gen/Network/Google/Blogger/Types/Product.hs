{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

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

instance FromJSON PostUserInfo where
        parseJSON
          = withObject "PostUserInfo"
              (\ o ->
                 PostUserInfo <$>
                   (o .:? "post_user_info") <*> (o .:? "post") <*>
                     (o .:? "kind" .!= "blogger#postUserInfo"))

instance ToJSON PostUserInfo where
        toJSON PostUserInfo{..}
          = object
              (catMaybes
                 [("post_user_info" .=) <$> _puiPostUserInfo,
                  ("post" .=) <$> _puiPost, Just ("kind" .= _puiKind)])

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

instance FromJSON PostList where
        parseJSON
          = withObject "PostList"
              (\ o ->
                 PostList <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "blogger#postList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON PostList where
        toJSON PostList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _plEtag,
                  ("nextPageToken" .=) <$> _plNextPageToken,
                  Just ("kind" .= _plKind), ("items" .=) <$> _plItems])

--
-- /See:/ 'pageviews' smart constructor.
data Pageviews = Pageviews
    { _pKind   :: !Text
    , _pCounts :: !(Maybe [PageviewsCountsItem])
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
pCounts :: Lens' Pageviews [PageviewsCountsItem]
pCounts
  = lens _pCounts (\ s a -> s{_pCounts = a}) . _Default
      . _Coerce

-- | Blog Id
pBlogId :: Lens' Pageviews (Maybe Text)
pBlogId = lens _pBlogId (\ s a -> s{_pBlogId = a})

instance FromJSON Pageviews where
        parseJSON
          = withObject "Pageviews"
              (\ o ->
                 Pageviews <$>
                   (o .:? "kind" .!= "blogger#page_views") <*>
                     (o .:? "counts" .!= mempty)
                     <*> (o .:? "blogId"))

instance ToJSON Pageviews where
        toJSON Pageviews{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pKind), ("counts" .=) <$> _pCounts,
                  ("blogId" .=) <$> _pBlogId])

--
-- /See:/ 'post' smart constructor.
data Post = Post
    { _posImages         :: !(Maybe [PostImagesItem])
    , _posStatus         :: !(Maybe Text)
    , _posEtag           :: !(Maybe Text)
    , _posReaderComments :: !(Maybe Text)
    , _posLocation       :: !(Maybe PostLocation)
    , _posKind           :: !Text
    , _posPublished      :: !(Maybe UTCTime)
    , _posUrl            :: !(Maybe Text)
    , _posBlog           :: !(Maybe PostBlog)
    , _posCustomMetaData :: !(Maybe Text)
    , _posContent        :: !(Maybe Text)
    , _posReplies        :: !(Maybe PostReplies)
    , _posSelfLink       :: !(Maybe Text)
    , _posAuthor         :: !(Maybe PostAuthor)
    , _posId             :: !(Maybe Text)
    , _posLabels         :: !(Maybe [Text])
    , _posUpdated        :: !(Maybe UTCTime)
    , _posTitleLink      :: !(Maybe Text)
    , _posTitle          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Post' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posImages'
--
-- * 'posStatus'
--
-- * 'posEtag'
--
-- * 'posReaderComments'
--
-- * 'posLocation'
--
-- * 'posKind'
--
-- * 'posPublished'
--
-- * 'posUrl'
--
-- * 'posBlog'
--
-- * 'posCustomMetaData'
--
-- * 'posContent'
--
-- * 'posReplies'
--
-- * 'posSelfLink'
--
-- * 'posAuthor'
--
-- * 'posId'
--
-- * 'posLabels'
--
-- * 'posUpdated'
--
-- * 'posTitleLink'
--
-- * 'posTitle'
post
    :: Post
post =
    Post
    { _posImages = Nothing
    , _posStatus = Nothing
    , _posEtag = Nothing
    , _posReaderComments = Nothing
    , _posLocation = Nothing
    , _posKind = "blogger#post"
    , _posPublished = Nothing
    , _posUrl = Nothing
    , _posBlog = Nothing
    , _posCustomMetaData = Nothing
    , _posContent = Nothing
    , _posReplies = Nothing
    , _posSelfLink = Nothing
    , _posAuthor = Nothing
    , _posId = Nothing
    , _posLabels = Nothing
    , _posUpdated = Nothing
    , _posTitleLink = Nothing
    , _posTitle = Nothing
    }

-- | Display image for the Post.
posImages :: Lens' Post [PostImagesItem]
posImages
  = lens _posImages (\ s a -> s{_posImages = a}) .
      _Default
      . _Coerce

-- | Status of the post. Only set for admin-level requests
posStatus :: Lens' Post (Maybe Text)
posStatus
  = lens _posStatus (\ s a -> s{_posStatus = a})

-- | Etag of the resource.
posEtag :: Lens' Post (Maybe Text)
posEtag = lens _posEtag (\ s a -> s{_posEtag = a})

-- | Comment control and display setting for readers of this post.
posReaderComments :: Lens' Post (Maybe Text)
posReaderComments
  = lens _posReaderComments
      (\ s a -> s{_posReaderComments = a})

-- | The location for geotagged posts.
posLocation :: Lens' Post (Maybe PostLocation)
posLocation
  = lens _posLocation (\ s a -> s{_posLocation = a})

-- | The kind of this entity. Always blogger#post
posKind :: Lens' Post Text
posKind = lens _posKind (\ s a -> s{_posKind = a})

-- | RFC 3339 date-time when this Post was published.
posPublished :: Lens' Post (Maybe UTCTime)
posPublished
  = lens _posPublished (\ s a -> s{_posPublished = a})

-- | The URL where this Post is displayed.
posUrl :: Lens' Post (Maybe Text)
posUrl = lens _posUrl (\ s a -> s{_posUrl = a})

-- | Data about the blog containing this Post.
posBlog :: Lens' Post (Maybe PostBlog)
posBlog = lens _posBlog (\ s a -> s{_posBlog = a})

-- | The JSON meta-data for the Post.
posCustomMetaData :: Lens' Post (Maybe Text)
posCustomMetaData
  = lens _posCustomMetaData
      (\ s a -> s{_posCustomMetaData = a})

-- | The content of the Post. May contain HTML markup.
posContent :: Lens' Post (Maybe Text)
posContent
  = lens _posContent (\ s a -> s{_posContent = a})

-- | The container of comments on this Post.
posReplies :: Lens' Post (Maybe PostReplies)
posReplies
  = lens _posReplies (\ s a -> s{_posReplies = a})

-- | The API REST URL to fetch this resource from.
posSelfLink :: Lens' Post (Maybe Text)
posSelfLink
  = lens _posSelfLink (\ s a -> s{_posSelfLink = a})

-- | The author of this Post.
posAuthor :: Lens' Post (Maybe PostAuthor)
posAuthor
  = lens _posAuthor (\ s a -> s{_posAuthor = a})

-- | The identifier of this Post.
posId :: Lens' Post (Maybe Text)
posId = lens _posId (\ s a -> s{_posId = a})

-- | The list of labels this Post was tagged with.
posLabels :: Lens' Post [Text]
posLabels
  = lens _posLabels (\ s a -> s{_posLabels = a}) .
      _Default
      . _Coerce

-- | RFC 3339 date-time when this Post was last updated.
posUpdated :: Lens' Post (Maybe UTCTime)
posUpdated
  = lens _posUpdated (\ s a -> s{_posUpdated = a})

-- | The title link URL, similar to atom\'s related link.
posTitleLink :: Lens' Post (Maybe Text)
posTitleLink
  = lens _posTitleLink (\ s a -> s{_posTitleLink = a})

-- | The title of the Post.
posTitle :: Lens' Post (Maybe Text)
posTitle = lens _posTitle (\ s a -> s{_posTitle = a})

instance FromJSON Post where
        parseJSON
          = withObject "Post"
              (\ o ->
                 Post <$>
                   (o .:? "images" .!= mempty) <*> (o .:? "status") <*>
                     (o .:? "etag")
                     <*> (o .:? "readerComments")
                     <*> (o .:? "location")
                     <*> (o .:? "kind" .!= "blogger#post")
                     <*> (o .:? "published")
                     <*> (o .:? "url")
                     <*> (o .:? "blog")
                     <*> (o .:? "customMetaData")
                     <*> (o .:? "content")
                     <*> (o .:? "replies")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "author")
                     <*> (o .:? "id")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "updated")
                     <*> (o .:? "titleLink")
                     <*> (o .:? "title"))

instance ToJSON Post where
        toJSON Post{..}
          = object
              (catMaybes
                 [("images" .=) <$> _posImages,
                  ("status" .=) <$> _posStatus,
                  ("etag" .=) <$> _posEtag,
                  ("readerComments" .=) <$> _posReaderComments,
                  ("location" .=) <$> _posLocation,
                  Just ("kind" .= _posKind),
                  ("published" .=) <$> _posPublished,
                  ("url" .=) <$> _posUrl, ("blog" .=) <$> _posBlog,
                  ("customMetaData" .=) <$> _posCustomMetaData,
                  ("content" .=) <$> _posContent,
                  ("replies" .=) <$> _posReplies,
                  ("selfLink" .=) <$> _posSelfLink,
                  ("author" .=) <$> _posAuthor, ("id" .=) <$> _posId,
                  ("labels" .=) <$> _posLabels,
                  ("updated" .=) <$> _posUpdated,
                  ("titleLink" .=) <$> _posTitleLink,
                  ("title" .=) <$> _posTitle])

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

instance FromJSON Page where
        parseJSON
          = withObject "Page"
              (\ o ->
                 Page <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "kind" .!= "blogger#page")
                     <*> (o .:? "published")
                     <*> (o .:? "url")
                     <*> (o .:? "blog")
                     <*> (o .:? "content")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "author")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "title"))

instance ToJSON Page where
        toJSON Page{..}
          = object
              (catMaybes
                 [("status" .=) <$> _pagStatus,
                  ("etag" .=) <$> _pagEtag, Just ("kind" .= _pagKind),
                  ("published" .=) <$> _pagPublished,
                  ("url" .=) <$> _pagUrl, ("blog" .=) <$> _pagBlog,
                  ("content" .=) <$> _pagContent,
                  ("selfLink" .=) <$> _pagSelfLink,
                  ("author" .=) <$> _pagAuthor, ("id" .=) <$> _pagId,
                  ("updated" .=) <$> _pagUpdated,
                  ("title" .=) <$> _pagTitle])

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

instance FromJSON Blog where
        parseJSON
          = withObject "Blog"
              (\ o ->
                 Blog <$>
                   (o .:? "status") <*>
                     (o .:? "kind" .!= "blogger#blog")
                     <*> (o .:? "pages")
                     <*> (o .:? "locale")
                     <*> (o .:? "published")
                     <*> (o .:? "url")
                     <*> (o .:? "customMetaData")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "posts")
                     <*> (o .:? "description"))

instance ToJSON Blog where
        toJSON Blog{..}
          = object
              (catMaybes
                 [("status" .=) <$> _bStatus, Just ("kind" .= _bKind),
                  ("pages" .=) <$> _bPages, ("locale" .=) <$> _bLocale,
                  ("published" .=) <$> _bPublished,
                  ("url" .=) <$> _bUrl,
                  ("customMetaData" .=) <$> _bCustomMetaData,
                  ("selfLink" .=) <$> _bSelfLink,
                  ("name" .=) <$> _bName, ("id" .=) <$> _bId,
                  ("updated" .=) <$> _bUpdated,
                  ("posts" .=) <$> _bPosts,
                  ("description" .=) <$> _bDescription])

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

instance FromJSON PageList where
        parseJSON
          = withObject "PageList"
              (\ o ->
                 PageList <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "blogger#pageList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON PageList where
        toJSON PageList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _pllEtag,
                  ("nextPageToken" .=) <$> _pllNextPageToken,
                  Just ("kind" .= _pllKind),
                  ("items" .=) <$> _pllItems])

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

instance FromJSON User where
        parseJSON
          = withObject "User"
              (\ o ->
                 User <$>
                   (o .:? "blogs") <*> (o .:? "kind" .!= "blogger#user")
                     <*> (o .:? "created")
                     <*> (o .:? "locale")
                     <*> (o .:? "url")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "about")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON User where
        toJSON User{..}
          = object
              (catMaybes
                 [("blogs" .=) <$> _uBlogs, Just ("kind" .= _uKind),
                  ("created" .=) <$> _uCreated,
                  ("locale" .=) <$> _uLocale, ("url" .=) <$> _uUrl,
                  ("selfLink" .=) <$> _uSelfLink,
                  ("about" .=) <$> _uAbout,
                  ("displayName" .=) <$> _uDisplayName,
                  ("id" .=) <$> _uId])

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

instance FromJSON BlogList where
        parseJSON
          = withObject "BlogList"
              (\ o ->
                 BlogList <$>
                   (o .:? "kind" .!= "blogger#blogList") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "blogUserInfos" .!= mempty))

instance ToJSON BlogList where
        toJSON BlogList{..}
          = object
              (catMaybes
                 [Just ("kind" .= _blKind), ("items" .=) <$> _blItems,
                  ("blogUserInfos" .=) <$> _blBlogUserInfos])

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

instance FromJSON PostPerUserInfo where
        parseJSON
          = withObject "PostPerUserInfo"
              (\ o ->
                 PostPerUserInfo <$>
                   (o .:? "kind" .!= "blogger#postPerUserInfo") <*>
                     (o .:? "blogId")
                     <*> (o .:? "userId")
                     <*> (o .:? "hasEditAccess")
                     <*> (o .:? "postId"))

instance ToJSON PostPerUserInfo where
        toJSON PostPerUserInfo{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ppuiKind),
                  ("blogId" .=) <$> _ppuiBlogId,
                  ("userId" .=) <$> _ppuiUserId,
                  ("hasEditAccess" .=) <$> _ppuiHasEditAccess,
                  ("postId" .=) <$> _ppuiPostId])

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

instance FromJSON Comment where
        parseJSON
          = withObject "Comment"
              (\ o ->
                 Comment <$>
                   (o .:? "status") <*> (o .:? "post") <*>
                     (o .:? "kind" .!= "blogger#comment")
                     <*> (o .:? "published")
                     <*> (o .:? "blog")
                     <*> (o .:? "content")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "author")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "inReplyTo"))

instance ToJSON Comment where
        toJSON Comment{..}
          = object
              (catMaybes
                 [("status" .=) <$> _cStatus, ("post" .=) <$> _cPost,
                  Just ("kind" .= _cKind),
                  ("published" .=) <$> _cPublished,
                  ("blog" .=) <$> _cBlog, ("content" .=) <$> _cContent,
                  ("selfLink" .=) <$> _cSelfLink,
                  ("author" .=) <$> _cAuthor, ("id" .=) <$> _cId,
                  ("updated" .=) <$> _cUpdated,
                  ("inReplyTo" .=) <$> _cInReplyTo])

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

instance FromJSON PostUserInfosList where
        parseJSON
          = withObject "PostUserInfosList"
              (\ o ->
                 PostUserInfosList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "blogger#postUserInfosList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON PostUserInfosList where
        toJSON PostUserInfosList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _puilNextPageToken,
                  Just ("kind" .= _puilKind),
                  ("items" .=) <$> _puilItems])

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

instance FromJSON BlogPerUserInfo where
        parseJSON
          = withObject "BlogPerUserInfo"
              (\ o ->
                 BlogPerUserInfo <$>
                   (o .:? "photosAlbumKey") <*>
                     (o .:? "kind" .!= "blogger#blogPerUserInfo")
                     <*> (o .:? "blogId")
                     <*> (o .:? "userId")
                     <*> (o .:? "role")
                     <*> (o .:? "hasAdminAccess"))

instance ToJSON BlogPerUserInfo where
        toJSON BlogPerUserInfo{..}
          = object
              (catMaybes
                 [("photosAlbumKey" .=) <$> _bpuiPhotosAlbumKey,
                  Just ("kind" .= _bpuiKind),
                  ("blogId" .=) <$> _bpuiBlogId,
                  ("userId" .=) <$> _bpuiUserId,
                  ("role" .=) <$> _bpuiRole,
                  ("hasAdminAccess" .=) <$> _bpuiHasAdminAccess])

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

instance FromJSON CommentList where
        parseJSON
          = withObject "CommentList"
              (\ o ->
                 CommentList <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "blogger#commentList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "prevPageToken"))

instance ToJSON CommentList where
        toJSON CommentList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _clEtag,
                  ("nextPageToken" .=) <$> _clNextPageToken,
                  Just ("kind" .= _clKind), ("items" .=) <$> _clItems,
                  ("prevPageToken" .=) <$> _clPrevPageToken])

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

instance FromJSON BlogUserInfo where
        parseJSON
          = withObject "BlogUserInfo"
              (\ o ->
                 BlogUserInfo <$>
                   (o .:? "kind" .!= "blogger#blogUserInfo") <*>
                     (o .:? "blog")
                     <*> (o .:? "blog_user_info"))

instance ToJSON BlogUserInfo where
        toJSON BlogUserInfo{..}
          = object
              (catMaybes
                 [Just ("kind" .= _buiKind), ("blog" .=) <$> _buiBlog,
                  ("blog_user_info" .=) <$> _buiBlogUserInfo])
