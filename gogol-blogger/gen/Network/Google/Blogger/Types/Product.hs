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

-- | The Post author\'s avatar.
--
-- /See:/ 'image' smart constructor.
newtype Image = Image
    { _iURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iURL'
image
    :: Image
image =
    Image
    { _iURL = Nothing
    }

-- | The Post author\'s avatar URL.
iURL :: Lens' Image (Maybe Text)
iURL = lens _iURL (\ s a -> s{_iURL = a})

instance FromJSON Image where
        parseJSON
          = withObject "Image" (\ o -> Image <$> (o .:? "url"))

instance ToJSON Image where
        toJSON Image{..}
          = object (catMaybes [("url" .=) <$> _iURL])

--
-- /See:/ 'postUserInfo' smart constructor.
data PostUserInfo = PostUserInfo
    { _puiPostUserInfo :: !(Maybe PostPerUserInfo)
    , _puiPost         :: !(Maybe Post)
    , _puiKind         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
puiPostUserInfo :: Lens' PostUserInfo (Maybe PostPerUserInfo)
puiPostUserInfo
  = lens _puiPostUserInfo
      (\ s a -> s{_puiPostUserInfo = a})

-- | The Post resource.
puiPost :: Lens' PostUserInfo (Maybe Post)
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
    , _plItems         :: !(Maybe [Post])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
plItems :: Lens' PostList [Post]
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

-- | The location for geotagged posts.
--
-- /See:/ 'location' smart constructor.
data Location = Location
    { _lSpan :: !(Maybe Text)
    , _lLat  :: !(Maybe Double)
    , _lName :: !(Maybe Text)
    , _lLng  :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lSpan'
--
-- * 'lLat'
--
-- * 'lName'
--
-- * 'lLng'
location
    :: Location
location =
    Location
    { _lSpan = Nothing
    , _lLat = Nothing
    , _lName = Nothing
    , _lLng = Nothing
    }

-- | Location\'s viewport span. Can be used when rendering a map preview.
lSpan :: Lens' Location (Maybe Text)
lSpan = lens _lSpan (\ s a -> s{_lSpan = a})

-- | Location\'s latitude.
lLat :: Lens' Location (Maybe Double)
lLat = lens _lLat (\ s a -> s{_lLat = a})

-- | Location name.
lName :: Lens' Location (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | Location\'s longitude.
lLng :: Lens' Location (Maybe Double)
lLng = lens _lLng (\ s a -> s{_lLng = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location <$>
                   (o .:? "span") <*> (o .:? "lat") <*> (o .:? "name")
                     <*> (o .:? "lng"))

instance ToJSON Location where
        toJSON Location{..}
          = object
              (catMaybes
                 [("span" .=) <$> _lSpan, ("lat" .=) <$> _lLat,
                  ("name" .=) <$> _lName, ("lng" .=) <$> _lLng])

-- | Data about the blog containing this comment.
--
-- /See:/ 'commentBlog' smart constructor.
newtype CommentBlog = CommentBlog
    { _cbId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON CommentBlog where
        parseJSON
          = withObject "CommentBlog"
              (\ o -> CommentBlog <$> (o .:? "id"))

instance ToJSON CommentBlog where
        toJSON CommentBlog{..}
          = object (catMaybes [("id" .=) <$> _cbId])

--
-- /See:/ 'pageviews' smart constructor.
data Pageviews = Pageviews
    { _pKind   :: !Text
    , _pCounts :: !(Maybe [CountsItem])
    , _pBlogId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
pCounts :: Lens' Pageviews [CountsItem]
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

-- | The container of blogs for this user.
--
-- /See:/ 'blogs' smart constructor.
newtype Blogs = Blogs
    { _bSelfLink :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Blogs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bSelfLink'
blogs
    :: Blogs
blogs =
    Blogs
    { _bSelfLink = Nothing
    }

-- | The URL of the Blogs for this user.
bSelfLink :: Lens' Blogs (Maybe Text)
bSelfLink
  = lens _bSelfLink (\ s a -> s{_bSelfLink = a})

instance FromJSON Blogs where
        parseJSON
          = withObject "Blogs"
              (\ o -> Blogs <$> (o .:? "selfLink"))

instance ToJSON Blogs where
        toJSON Blogs{..}
          = object (catMaybes [("selfLink" .=) <$> _bSelfLink])

-- | The container of pages in this blog.
--
-- /See:/ 'pages' smart constructor.
data Pages = Pages
    { _pTotalItems :: !(Maybe Int32)
    , _pSelfLink   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Pages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pTotalItems'
--
-- * 'pSelfLink'
pages
    :: Pages
pages =
    Pages
    { _pTotalItems = Nothing
    , _pSelfLink = Nothing
    }

-- | The count of pages in this blog.
pTotalItems :: Lens' Pages (Maybe Int32)
pTotalItems
  = lens _pTotalItems (\ s a -> s{_pTotalItems = a})

-- | The URL of the container for pages in this blog.
pSelfLink :: Lens' Pages (Maybe Text)
pSelfLink
  = lens _pSelfLink (\ s a -> s{_pSelfLink = a})

instance FromJSON Pages where
        parseJSON
          = withObject "Pages"
              (\ o ->
                 Pages <$>
                   (o .:? "totalItems") <*> (o .:? "selfLink"))

instance ToJSON Pages where
        toJSON Pages{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _pTotalItems,
                  ("selfLink" .=) <$> _pSelfLink])

-- | The locale this Blog is set to.
--
-- /See:/ 'locale' smart constructor.
data Locale = Locale
    { _lVariant  :: !(Maybe Text)
    , _lCountry  :: !(Maybe Text)
    , _lLanguage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Locale' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lVariant'
--
-- * 'lCountry'
--
-- * 'lLanguage'
locale
    :: Locale
locale =
    Locale
    { _lVariant = Nothing
    , _lCountry = Nothing
    , _lLanguage = Nothing
    }

-- | The language variant this blog is authored in.
lVariant :: Lens' Locale (Maybe Text)
lVariant = lens _lVariant (\ s a -> s{_lVariant = a})

-- | The country this blog\'s locale is set to.
lCountry :: Lens' Locale (Maybe Text)
lCountry = lens _lCountry (\ s a -> s{_lCountry = a})

-- | The language this blog is authored in.
lLanguage :: Lens' Locale (Maybe Text)
lLanguage
  = lens _lLanguage (\ s a -> s{_lLanguage = a})

instance FromJSON Locale where
        parseJSON
          = withObject "Locale"
              (\ o ->
                 Locale <$>
                   (o .:? "variant") <*> (o .:? "country") <*>
                     (o .:? "language"))

instance ToJSON Locale where
        toJSON Locale{..}
          = object
              (catMaybes
                 [("variant" .=) <$> _lVariant,
                  ("country" .=) <$> _lCountry,
                  ("language" .=) <$> _lLanguage])

--
-- /See:/ 'post' smart constructor.
data Post = Post
    { _posImages         :: !(Maybe [ImagesItem])
    , _posStatus         :: !(Maybe Text)
    , _posEtag           :: !(Maybe Text)
    , _posReaderComments :: !(Maybe Text)
    , _posLocation       :: !(Maybe Location)
    , _posKind           :: !Text
    , _posPublished      :: !(Maybe DateTime')
    , _posURL            :: !(Maybe Text)
    , _posBlog           :: !(Maybe Blog)
    , _posCustomMetaData :: !(Maybe Text)
    , _posContent        :: !(Maybe Text)
    , _posReplies        :: !(Maybe Replies)
    , _posSelfLink       :: !(Maybe Text)
    , _posAuthor         :: !(Maybe Author)
    , _posId             :: !(Maybe Text)
    , _posLabels         :: !(Maybe [Text])
    , _posUpdated        :: !(Maybe DateTime')
    , _posTitleLink      :: !(Maybe Text)
    , _posTitle          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'posURL'
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
    , _posURL = Nothing
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
posImages :: Lens' Post [ImagesItem]
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
posLocation :: Lens' Post (Maybe Location)
posLocation
  = lens _posLocation (\ s a -> s{_posLocation = a})

-- | The kind of this entity. Always blogger#post
posKind :: Lens' Post Text
posKind = lens _posKind (\ s a -> s{_posKind = a})

-- | RFC 3339 date-time when this Post was published.
posPublished :: Lens' Post (Maybe UTCTime)
posPublished
  = lens _posPublished (\ s a -> s{_posPublished = a})
      . mapping _DateTime

-- | The URL where this Post is displayed.
posURL :: Lens' Post (Maybe Text)
posURL = lens _posURL (\ s a -> s{_posURL = a})

-- | Data about the blog containing this Post.
posBlog :: Lens' Post (Maybe Blog)
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
posReplies :: Lens' Post (Maybe Replies)
posReplies
  = lens _posReplies (\ s a -> s{_posReplies = a})

-- | The API REST URL to fetch this resource from.
posSelfLink :: Lens' Post (Maybe Text)
posSelfLink
  = lens _posSelfLink (\ s a -> s{_posSelfLink = a})

-- | The author of this Post.
posAuthor :: Lens' Post (Maybe Author)
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
  = lens _posUpdated (\ s a -> s{_posUpdated = a}) .
      mapping _DateTime

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
                  ("url" .=) <$> _posURL, ("blog" .=) <$> _posBlog,
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
    , _pagPublished :: !(Maybe DateTime')
    , _pagURL       :: !(Maybe Text)
    , _pagBlog      :: !(Maybe PageBlog)
    , _pagContent   :: !(Maybe Text)
    , _pagSelfLink  :: !(Maybe Text)
    , _pagAuthor    :: !(Maybe PageAuthor)
    , _pagId        :: !(Maybe Text)
    , _pagUpdated   :: !(Maybe DateTime')
    , _pagTitle     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'pagURL'
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
    , _pagURL = Nothing
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
      . mapping _DateTime

-- | The URL that this Page is displayed at.
pagURL :: Lens' Page (Maybe Text)
pagURL = lens _pagURL (\ s a -> s{_pagURL = a})

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
  = lens _pagUpdated (\ s a -> s{_pagUpdated = a}) .
      mapping _DateTime

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
                  ("url" .=) <$> _pagURL, ("blog" .=) <$> _pagBlog,
                  ("content" .=) <$> _pagContent,
                  ("selfLink" .=) <$> _pagSelfLink,
                  ("author" .=) <$> _pagAuthor, ("id" .=) <$> _pagId,
                  ("updated" .=) <$> _pagUpdated,
                  ("title" .=) <$> _pagTitle])

-- | Data about the blog containing this Post.
--
-- /See:/ 'blog' smart constructor.
newtype Blog = Blog
    { _bId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Blog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bId'
blog
    :: Blog
blog =
    Blog
    { _bId = Nothing
    }

-- | The identifier of the Blog that contains this Post.
bId :: Lens' Blog (Maybe Text)
bId = lens _bId (\ s a -> s{_bId = a})

instance FromJSON Blog where
        parseJSON
          = withObject "Blog" (\ o -> Blog <$> (o .:? "id"))

instance ToJSON Blog where
        toJSON Blog{..}
          = object (catMaybes [("id" .=) <$> _bId])

-- | The author of this Page.
--
-- /See:/ 'pageAuthor' smart constructor.
data PageAuthor = PageAuthor
    { _paImage       :: !(Maybe PageAuthorImage)
    , _paURL         :: !(Maybe Text)
    , _paDisplayName :: !(Maybe Text)
    , _paId          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageAuthor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paImage'
--
-- * 'paURL'
--
-- * 'paDisplayName'
--
-- * 'paId'
pageAuthor
    :: PageAuthor
pageAuthor =
    PageAuthor
    { _paImage = Nothing
    , _paURL = Nothing
    , _paDisplayName = Nothing
    , _paId = Nothing
    }

-- | The page author\'s avatar.
paImage :: Lens' PageAuthor (Maybe PageAuthorImage)
paImage = lens _paImage (\ s a -> s{_paImage = a})

-- | The URL of the Page creator\'s Profile page.
paURL :: Lens' PageAuthor (Maybe Text)
paURL = lens _paURL (\ s a -> s{_paURL = a})

-- | The display name.
paDisplayName :: Lens' PageAuthor (Maybe Text)
paDisplayName
  = lens _paDisplayName
      (\ s a -> s{_paDisplayName = a})

-- | The identifier of the Page creator.
paId :: Lens' PageAuthor (Maybe Text)
paId = lens _paId (\ s a -> s{_paId = a})

instance FromJSON PageAuthor where
        parseJSON
          = withObject "PageAuthor"
              (\ o ->
                 PageAuthor <$>
                   (o .:? "image") <*> (o .:? "url") <*>
                     (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON PageAuthor where
        toJSON PageAuthor{..}
          = object
              (catMaybes
                 [("image" .=) <$> _paImage, ("url" .=) <$> _paURL,
                  ("displayName" .=) <$> _paDisplayName,
                  ("id" .=) <$> _paId])

--
-- /See:/ 'blog' smart constructor.
data Blog = Blog
    { _bloStatus         :: !(Maybe Text)
    , _bloKind           :: !Text
    , _bloPages          :: !(Maybe Pages)
    , _bloLocale         :: !(Maybe Locale)
    , _bloPublished      :: !(Maybe DateTime')
    , _bloURL            :: !(Maybe Text)
    , _bloCustomMetaData :: !(Maybe Text)
    , _bloSelfLink       :: !(Maybe Text)
    , _bloName           :: !(Maybe Text)
    , _bloId             :: !(Maybe Text)
    , _bloUpdated        :: !(Maybe DateTime')
    , _bloPosts          :: !(Maybe Posts)
    , _bloDescription    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Blog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bloStatus'
--
-- * 'bloKind'
--
-- * 'bloPages'
--
-- * 'bloLocale'
--
-- * 'bloPublished'
--
-- * 'bloURL'
--
-- * 'bloCustomMetaData'
--
-- * 'bloSelfLink'
--
-- * 'bloName'
--
-- * 'bloId'
--
-- * 'bloUpdated'
--
-- * 'bloPosts'
--
-- * 'bloDescription'
blog
    :: Blog
blog =
    Blog
    { _bloStatus = Nothing
    , _bloKind = "blogger#blog"
    , _bloPages = Nothing
    , _bloLocale = Nothing
    , _bloPublished = Nothing
    , _bloURL = Nothing
    , _bloCustomMetaData = Nothing
    , _bloSelfLink = Nothing
    , _bloName = Nothing
    , _bloId = Nothing
    , _bloUpdated = Nothing
    , _bloPosts = Nothing
    , _bloDescription = Nothing
    }

-- | The status of the blog.
bloStatus :: Lens' Blog (Maybe Text)
bloStatus
  = lens _bloStatus (\ s a -> s{_bloStatus = a})

-- | The kind of this entry. Always blogger#blog
bloKind :: Lens' Blog Text
bloKind = lens _bloKind (\ s a -> s{_bloKind = a})

-- | The container of pages in this blog.
bloPages :: Lens' Blog (Maybe Pages)
bloPages = lens _bloPages (\ s a -> s{_bloPages = a})

-- | The locale this Blog is set to.
bloLocale :: Lens' Blog (Maybe Locale)
bloLocale
  = lens _bloLocale (\ s a -> s{_bloLocale = a})

-- | RFC 3339 date-time when this blog was published.
bloPublished :: Lens' Blog (Maybe UTCTime)
bloPublished
  = lens _bloPublished (\ s a -> s{_bloPublished = a})
      . mapping _DateTime

-- | The URL where this blog is published.
bloURL :: Lens' Blog (Maybe Text)
bloURL = lens _bloURL (\ s a -> s{_bloURL = a})

-- | The JSON custom meta-data for the Blog
bloCustomMetaData :: Lens' Blog (Maybe Text)
bloCustomMetaData
  = lens _bloCustomMetaData
      (\ s a -> s{_bloCustomMetaData = a})

-- | The API REST URL to fetch this resource from.
bloSelfLink :: Lens' Blog (Maybe Text)
bloSelfLink
  = lens _bloSelfLink (\ s a -> s{_bloSelfLink = a})

-- | The name of this blog. This is displayed as the title.
bloName :: Lens' Blog (Maybe Text)
bloName = lens _bloName (\ s a -> s{_bloName = a})

-- | The identifier for this resource.
bloId :: Lens' Blog (Maybe Text)
bloId = lens _bloId (\ s a -> s{_bloId = a})

-- | RFC 3339 date-time when this blog was last updated.
bloUpdated :: Lens' Blog (Maybe UTCTime)
bloUpdated
  = lens _bloUpdated (\ s a -> s{_bloUpdated = a}) .
      mapping _DateTime

-- | The container of posts in this blog.
bloPosts :: Lens' Blog (Maybe Posts)
bloPosts = lens _bloPosts (\ s a -> s{_bloPosts = a})

-- | The description of this blog. This is displayed underneath the title.
bloDescription :: Lens' Blog (Maybe Text)
bloDescription
  = lens _bloDescription
      (\ s a -> s{_bloDescription = a})

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
                 [("status" .=) <$> _bloStatus,
                  Just ("kind" .= _bloKind),
                  ("pages" .=) <$> _bloPages,
                  ("locale" .=) <$> _bloLocale,
                  ("published" .=) <$> _bloPublished,
                  ("url" .=) <$> _bloURL,
                  ("customMetaData" .=) <$> _bloCustomMetaData,
                  ("selfLink" .=) <$> _bloSelfLink,
                  ("name" .=) <$> _bloName, ("id" .=) <$> _bloId,
                  ("updated" .=) <$> _bloUpdated,
                  ("posts" .=) <$> _bloPosts,
                  ("description" .=) <$> _bloDescription])

-- | The comment creator\'s avatar.
--
-- /See:/ 'commentAuthorImage' smart constructor.
newtype CommentAuthorImage = CommentAuthorImage
    { _caiURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentAuthorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caiURL'
commentAuthorImage
    :: CommentAuthorImage
commentAuthorImage =
    CommentAuthorImage
    { _caiURL = Nothing
    }

-- | The comment creator\'s avatar URL.
caiURL :: Lens' CommentAuthorImage (Maybe Text)
caiURL = lens _caiURL (\ s a -> s{_caiURL = a})

instance FromJSON CommentAuthorImage where
        parseJSON
          = withObject "CommentAuthorImage"
              (\ o -> CommentAuthorImage <$> (o .:? "url"))

instance ToJSON CommentAuthorImage where
        toJSON CommentAuthorImage{..}
          = object (catMaybes [("url" .=) <$> _caiURL])

--
-- /See:/ 'pageList' smart constructor.
data PageList = PageList
    { _pllEtag          :: !(Maybe Text)
    , _pllNextPageToken :: !(Maybe Text)
    , _pllKind          :: !Text
    , _pllItems         :: !(Maybe [Page])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
pllItems :: Lens' PageList [Page]
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
    { _uBlogs       :: !(Maybe Blogs)
    , _uKind        :: !Text
    , _uCreated     :: !(Maybe DateTime')
    , _uLocale      :: !(Maybe UserLocale)
    , _uURL         :: !(Maybe Text)
    , _uSelfLink    :: !(Maybe Text)
    , _uAbout       :: !(Maybe Text)
    , _uDisplayName :: !(Maybe Text)
    , _uId          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'uURL'
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
    , _uURL = Nothing
    , _uSelfLink = Nothing
    , _uAbout = Nothing
    , _uDisplayName = Nothing
    , _uId = Nothing
    }

-- | The container of blogs for this user.
uBlogs :: Lens' User (Maybe Blogs)
uBlogs = lens _uBlogs (\ s a -> s{_uBlogs = a})

-- | The kind of this entity. Always blogger#user
uKind :: Lens' User Text
uKind = lens _uKind (\ s a -> s{_uKind = a})

-- | The timestamp of when this profile was created, in seconds since epoch.
uCreated :: Lens' User (Maybe UTCTime)
uCreated
  = lens _uCreated (\ s a -> s{_uCreated = a}) .
      mapping _DateTime

-- | This user\'s locale
uLocale :: Lens' User (Maybe UserLocale)
uLocale = lens _uLocale (\ s a -> s{_uLocale = a})

-- | The user\'s profile page.
uURL :: Lens' User (Maybe Text)
uURL = lens _uURL (\ s a -> s{_uURL = a})

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
                  ("locale" .=) <$> _uLocale, ("url" .=) <$> _uURL,
                  ("selfLink" .=) <$> _uSelfLink,
                  ("about" .=) <$> _uAbout,
                  ("displayName" .=) <$> _uDisplayName,
                  ("id" .=) <$> _uId])

-- | This user\'s locale
--
-- /See:/ 'userLocale' smart constructor.
data UserLocale = UserLocale
    { _ulVariant  :: !(Maybe Text)
    , _ulCountry  :: !(Maybe Text)
    , _ulLanguage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON UserLocale where
        parseJSON
          = withObject "UserLocale"
              (\ o ->
                 UserLocale <$>
                   (o .:? "variant") <*> (o .:? "country") <*>
                     (o .:? "language"))

instance ToJSON UserLocale where
        toJSON UserLocale{..}
          = object
              (catMaybes
                 [("variant" .=) <$> _ulVariant,
                  ("country" .=) <$> _ulCountry,
                  ("language" .=) <$> _ulLanguage])

-- | The container of comments on this Post.
--
-- /See:/ 'replies' smart constructor.
data Replies = Replies
    { _rTotalItems :: !(Maybe Int64)
    , _rItems      :: !(Maybe [Comment])
    , _rSelfLink   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Replies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rTotalItems'
--
-- * 'rItems'
--
-- * 'rSelfLink'
replies
    :: Replies
replies =
    Replies
    { _rTotalItems = Nothing
    , _rItems = Nothing
    , _rSelfLink = Nothing
    }

-- | The count of comments on this post.
rTotalItems :: Lens' Replies (Maybe Int64)
rTotalItems
  = lens _rTotalItems (\ s a -> s{_rTotalItems = a})

-- | The List of Comments for this Post.
rItems :: Lens' Replies [Comment]
rItems
  = lens _rItems (\ s a -> s{_rItems = a}) . _Default .
      _Coerce

-- | The URL of the comments on this post.
rSelfLink :: Lens' Replies (Maybe Text)
rSelfLink
  = lens _rSelfLink (\ s a -> s{_rSelfLink = a})

instance FromJSON Replies where
        parseJSON
          = withObject "Replies"
              (\ o ->
                 Replies <$>
                   (o .:? "totalItems") <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON Replies where
        toJSON Replies{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _rTotalItems,
                  ("items" .=) <$> _rItems,
                  ("selfLink" .=) <$> _rSelfLink])

--
-- /See:/ 'blogList' smart constructor.
data BlogList = BlogList
    { _blKind          :: !Text
    , _blItems         :: !(Maybe [Blog])
    , _blBlogUserInfos :: !(Maybe [BlogUserInfo])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
blItems :: Lens' BlogList [Blog]
blItems
  = lens _blItems (\ s a -> s{_blItems = a}) . _Default
      . _Coerce

-- | Admin level list of blog per-user information
blBlogUserInfos :: Lens' BlogList [BlogUserInfo]
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

-- | The author of this Post.
--
-- /See:/ 'author' smart constructor.
data Author = Author
    { _aImage       :: !(Maybe Image)
    , _aURL         :: !(Maybe Text)
    , _aDisplayName :: !(Maybe Text)
    , _aId          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Author' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aImage'
--
-- * 'aURL'
--
-- * 'aDisplayName'
--
-- * 'aId'
author
    :: Author
author =
    Author
    { _aImage = Nothing
    , _aURL = Nothing
    , _aDisplayName = Nothing
    , _aId = Nothing
    }

-- | The Post author\'s avatar.
aImage :: Lens' Author (Maybe Image)
aImage = lens _aImage (\ s a -> s{_aImage = a})

-- | The URL of the Post creator\'s Profile page.
aURL :: Lens' Author (Maybe Text)
aURL = lens _aURL (\ s a -> s{_aURL = a})

-- | The display name.
aDisplayName :: Lens' Author (Maybe Text)
aDisplayName
  = lens _aDisplayName (\ s a -> s{_aDisplayName = a})

-- | The identifier of the Post creator.
aId :: Lens' Author (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

instance FromJSON Author where
        parseJSON
          = withObject "Author"
              (\ o ->
                 Author <$>
                   (o .:? "image") <*> (o .:? "url") <*>
                     (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON Author where
        toJSON Author{..}
          = object
              (catMaybes
                 [("image" .=) <$> _aImage, ("url" .=) <$> _aURL,
                  ("displayName" .=) <$> _aDisplayName,
                  ("id" .=) <$> _aId])

-- | Data about the blog containing this Page.
--
-- /See:/ 'pageBlog' smart constructor.
newtype PageBlog = PageBlog
    { _pbId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageBlog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbId'
pageBlog
    :: PageBlog
pageBlog =
    PageBlog
    { _pbId = Nothing
    }

-- | The identifier of the blog containing this page.
pbId :: Lens' PageBlog (Maybe Text)
pbId = lens _pbId (\ s a -> s{_pbId = a})

instance FromJSON PageBlog where
        parseJSON
          = withObject "PageBlog"
              (\ o -> PageBlog <$> (o .:? "id"))

instance ToJSON PageBlog where
        toJSON PageBlog{..}
          = object (catMaybes [("id" .=) <$> _pbId])

--
-- /See:/ 'countsItem' smart constructor.
data CountsItem = CountsItem
    { _ciTimeRange :: !(Maybe Text)
    , _ciCount     :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CountsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciTimeRange'
--
-- * 'ciCount'
countsItem
    :: CountsItem
countsItem =
    CountsItem
    { _ciTimeRange = Nothing
    , _ciCount = Nothing
    }

-- | Time range the given count applies to
ciTimeRange :: Lens' CountsItem (Maybe Text)
ciTimeRange
  = lens _ciTimeRange (\ s a -> s{_ciTimeRange = a})

-- | Count of page views for the given time range
ciCount :: Lens' CountsItem (Maybe Int64)
ciCount = lens _ciCount (\ s a -> s{_ciCount = a})

instance FromJSON CountsItem where
        parseJSON
          = withObject "CountsItem"
              (\ o ->
                 CountsItem <$>
                   (o .:? "timeRange") <*> (o .:? "count"))

instance ToJSON CountsItem where
        toJSON CountsItem{..}
          = object
              (catMaybes
                 [("timeRange" .=) <$> _ciTimeRange,
                  ("count" .=) <$> _ciCount])

--
-- /See:/ 'postPerUserInfo' smart constructor.
data PostPerUserInfo = PostPerUserInfo
    { _ppuiKind          :: !Text
    , _ppuiBlogId        :: !(Maybe Text)
    , _ppuiUserId        :: !(Maybe Text)
    , _ppuiHasEditAccess :: !(Maybe Bool)
    , _ppuiPostId        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | The container of posts in this blog.
--
-- /See:/ 'posts' smart constructor.
data Posts = Posts
    { _ppTotalItems :: !(Maybe Int32)
    , _ppItems      :: !(Maybe [Post])
    , _ppSelfLink   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Posts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppTotalItems'
--
-- * 'ppItems'
--
-- * 'ppSelfLink'
posts
    :: Posts
posts =
    Posts
    { _ppTotalItems = Nothing
    , _ppItems = Nothing
    , _ppSelfLink = Nothing
    }

-- | The count of posts in this blog.
ppTotalItems :: Lens' Posts (Maybe Int32)
ppTotalItems
  = lens _ppTotalItems (\ s a -> s{_ppTotalItems = a})

-- | The List of Posts for this Blog.
ppItems :: Lens' Posts [Post]
ppItems
  = lens _ppItems (\ s a -> s{_ppItems = a}) . _Default
      . _Coerce

-- | The URL of the container for posts in this blog.
ppSelfLink :: Lens' Posts (Maybe Text)
ppSelfLink
  = lens _ppSelfLink (\ s a -> s{_ppSelfLink = a})

instance FromJSON Posts where
        parseJSON
          = withObject "Posts"
              (\ o ->
                 Posts <$>
                   (o .:? "totalItems") <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON Posts where
        toJSON Posts{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _ppTotalItems,
                  ("items" .=) <$> _ppItems,
                  ("selfLink" .=) <$> _ppSelfLink])

-- | Data about the post containing this comment.
--
-- /See:/ 'commentPost' smart constructor.
newtype CommentPost = CommentPost
    { _cpId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON CommentPost where
        parseJSON
          = withObject "CommentPost"
              (\ o -> CommentPost <$> (o .:? "id"))

instance ToJSON CommentPost where
        toJSON CommentPost{..}
          = object (catMaybes [("id" .=) <$> _cpId])

--
-- /See:/ 'comment' smart constructor.
data Comment = Comment
    { _cStatus    :: !(Maybe Text)
    , _cPost      :: !(Maybe CommentPost)
    , _cKind      :: !Text
    , _cPublished :: !(Maybe DateTime')
    , _cBlog      :: !(Maybe CommentBlog)
    , _cContent   :: !(Maybe Text)
    , _cSelfLink  :: !(Maybe Text)
    , _cAuthor    :: !(Maybe CommentAuthor)
    , _cId        :: !(Maybe Text)
    , _cUpdated   :: !(Maybe DateTime')
    , _cInReplyTo :: !(Maybe InReplyTo)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
  = lens _cPublished (\ s a -> s{_cPublished = a}) .
      mapping _DateTime

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
cUpdated
  = lens _cUpdated (\ s a -> s{_cUpdated = a}) .
      mapping _DateTime

-- | Data about the comment this is in reply to.
cInReplyTo :: Lens' Comment (Maybe InReplyTo)
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

-- | The author of this Comment.
--
-- /See:/ 'commentAuthor' smart constructor.
data CommentAuthor = CommentAuthor
    { _caImage       :: !(Maybe CommentAuthorImage)
    , _caURL         :: !(Maybe Text)
    , _caDisplayName :: !(Maybe Text)
    , _caId          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentAuthor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caImage'
--
-- * 'caURL'
--
-- * 'caDisplayName'
--
-- * 'caId'
commentAuthor
    :: CommentAuthor
commentAuthor =
    CommentAuthor
    { _caImage = Nothing
    , _caURL = Nothing
    , _caDisplayName = Nothing
    , _caId = Nothing
    }

-- | The comment creator\'s avatar.
caImage :: Lens' CommentAuthor (Maybe CommentAuthorImage)
caImage = lens _caImage (\ s a -> s{_caImage = a})

-- | The URL of the Comment creator\'s Profile page.
caURL :: Lens' CommentAuthor (Maybe Text)
caURL = lens _caURL (\ s a -> s{_caURL = a})

-- | The display name.
caDisplayName :: Lens' CommentAuthor (Maybe Text)
caDisplayName
  = lens _caDisplayName
      (\ s a -> s{_caDisplayName = a})

-- | The identifier of the Comment creator.
caId :: Lens' CommentAuthor (Maybe Text)
caId = lens _caId (\ s a -> s{_caId = a})

instance FromJSON CommentAuthor where
        parseJSON
          = withObject "CommentAuthor"
              (\ o ->
                 CommentAuthor <$>
                   (o .:? "image") <*> (o .:? "url") <*>
                     (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON CommentAuthor where
        toJSON CommentAuthor{..}
          = object
              (catMaybes
                 [("image" .=) <$> _caImage, ("url" .=) <$> _caURL,
                  ("displayName" .=) <$> _caDisplayName,
                  ("id" .=) <$> _caId])

--
-- /See:/ 'postUserInfosList' smart constructor.
data PostUserInfosList = PostUserInfosList
    { _puilNextPageToken :: !(Maybe Text)
    , _puilKind          :: !Text
    , _puilItems         :: !(Maybe [PostUserInfo])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
puilItems :: Lens' PostUserInfosList [PostUserInfo]
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

-- | Data about the comment this is in reply to.
--
-- /See:/ 'inReplyTo' smart constructor.
newtype InReplyTo = InReplyTo
    { _irtId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InReplyTo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irtId'
inReplyTo
    :: InReplyTo
inReplyTo =
    InReplyTo
    { _irtId = Nothing
    }

-- | The identified of the parent of this comment.
irtId :: Lens' InReplyTo (Maybe Text)
irtId = lens _irtId (\ s a -> s{_irtId = a})

instance FromJSON InReplyTo where
        parseJSON
          = withObject "InReplyTo"
              (\ o -> InReplyTo <$> (o .:? "id"))

instance ToJSON InReplyTo where
        toJSON InReplyTo{..}
          = object (catMaybes [("id" .=) <$> _irtId])

--
-- /See:/ 'blogPerUserInfo' smart constructor.
data BlogPerUserInfo = BlogPerUserInfo
    { _bpuiPhotosAlbumKey :: !(Maybe Text)
    , _bpuiKind           :: !Text
    , _bpuiBlogId         :: !(Maybe Text)
    , _bpuiUserId         :: !(Maybe Text)
    , _bpuiRole           :: !(Maybe Text)
    , _bpuiHasAdminAccess :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- /See:/ 'imagesItem' smart constructor.
newtype ImagesItem = ImagesItem
    { _iiURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiURL'
imagesItem
    :: ImagesItem
imagesItem =
    ImagesItem
    { _iiURL = Nothing
    }

iiURL :: Lens' ImagesItem (Maybe Text)
iiURL = lens _iiURL (\ s a -> s{_iiURL = a})

instance FromJSON ImagesItem where
        parseJSON
          = withObject "ImagesItem"
              (\ o -> ImagesItem <$> (o .:? "url"))

instance ToJSON ImagesItem where
        toJSON ImagesItem{..}
          = object (catMaybes [("url" .=) <$> _iiURL])

--
-- /See:/ 'commentList' smart constructor.
data CommentList = CommentList
    { _clEtag          :: !(Maybe Text)
    , _clNextPageToken :: !(Maybe Text)
    , _clKind          :: !Text
    , _clItems         :: !(Maybe [Comment])
    , _clPrevPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
clItems :: Lens' CommentList [Comment]
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

-- | The page author\'s avatar.
--
-- /See:/ 'pageAuthorImage' smart constructor.
newtype PageAuthorImage = PageAuthorImage
    { _paiURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageAuthorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paiURL'
pageAuthorImage
    :: PageAuthorImage
pageAuthorImage =
    PageAuthorImage
    { _paiURL = Nothing
    }

-- | The page author\'s avatar URL.
paiURL :: Lens' PageAuthorImage (Maybe Text)
paiURL = lens _paiURL (\ s a -> s{_paiURL = a})

instance FromJSON PageAuthorImage where
        parseJSON
          = withObject "PageAuthorImage"
              (\ o -> PageAuthorImage <$> (o .:? "url"))

instance ToJSON PageAuthorImage where
        toJSON PageAuthorImage{..}
          = object (catMaybes [("url" .=) <$> _paiURL])

--
-- /See:/ 'blogUserInfo' smart constructor.
data BlogUserInfo = BlogUserInfo
    { _buiKind         :: !Text
    , _buiBlog         :: !(Maybe Blog)
    , _buiBlogUserInfo :: !(Maybe BlogPerUserInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
buiBlog :: Lens' BlogUserInfo (Maybe Blog)
buiBlog = lens _buiBlog (\ s a -> s{_buiBlog = a})

-- | Information about a User for the Blog.
buiBlogUserInfo :: Lens' BlogUserInfo (Maybe BlogPerUserInfo)
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
