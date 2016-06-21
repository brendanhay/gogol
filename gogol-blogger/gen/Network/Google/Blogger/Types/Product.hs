{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Blogger.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
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
data PostUserInfo = PostUserInfo'
    { _puiPostUserInfo :: !(Maybe PostPerUserInfo)
    , _puiPost         :: !(Maybe Post')
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
    PostUserInfo'
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
puiPost :: Lens' PostUserInfo (Maybe Post')
puiPost = lens _puiPost (\ s a -> s{_puiPost = a})

-- | The kind of this entity. Always blogger#postUserInfo
puiKind :: Lens' PostUserInfo Text
puiKind = lens _puiKind (\ s a -> s{_puiKind = a})

instance FromJSON PostUserInfo where
        parseJSON
          = withObject "PostUserInfo"
              (\ o ->
                 PostUserInfo' <$>
                   (o .:? "post_user_info") <*> (o .:? "post") <*>
                     (o .:? "kind" .!= "blogger#postUserInfo"))

instance ToJSON PostUserInfo where
        toJSON PostUserInfo'{..}
          = object
              (catMaybes
                 [("post_user_info" .=) <$> _puiPostUserInfo,
                  ("post" .=) <$> _puiPost, Just ("kind" .= _puiKind)])

-- | The Post author\'s avatar.
--
-- /See:/ 'postAuthorImage' smart constructor.
newtype PostAuthorImage = PostAuthorImage'
    { _paiURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostAuthorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paiURL'
postAuthorImage
    :: PostAuthorImage
postAuthorImage =
    PostAuthorImage'
    { _paiURL = Nothing
    }

-- | The Post author\'s avatar URL.
paiURL :: Lens' PostAuthorImage (Maybe Text)
paiURL = lens _paiURL (\ s a -> s{_paiURL = a})

instance FromJSON PostAuthorImage where
        parseJSON
          = withObject "PostAuthorImage"
              (\ o -> PostAuthorImage' <$> (o .:? "url"))

instance ToJSON PostAuthorImage where
        toJSON PostAuthorImage'{..}
          = object (catMaybes [("url" .=) <$> _paiURL])

--
-- /See:/ 'postList' smart constructor.
data PostList = PostList'
    { _plEtag          :: !(Maybe Text)
    , _plNextPageToken :: !(Maybe Text)
    , _plKind          :: !Text
    , _plItems         :: !(Maybe [Post'])
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
    PostList'
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
plItems :: Lens' PostList [Post']
plItems
  = lens _plItems (\ s a -> s{_plItems = a}) . _Default
      . _Coerce

instance FromJSON PostList where
        parseJSON
          = withObject "PostList"
              (\ o ->
                 PostList' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "blogger#postList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON PostList where
        toJSON PostList'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _plEtag,
                  ("nextPageToken" .=) <$> _plNextPageToken,
                  Just ("kind" .= _plKind), ("items" .=) <$> _plItems])

-- | Data about the comment this is in reply to.
--
-- /See:/ 'commentInReplyTo' smart constructor.
newtype CommentInReplyTo = CommentInReplyTo'
    { _cirtId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentInReplyTo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirtId'
commentInReplyTo
    :: CommentInReplyTo
commentInReplyTo =
    CommentInReplyTo'
    { _cirtId = Nothing
    }

-- | The identified of the parent of this comment.
cirtId :: Lens' CommentInReplyTo (Maybe Text)
cirtId = lens _cirtId (\ s a -> s{_cirtId = a})

instance FromJSON CommentInReplyTo where
        parseJSON
          = withObject "CommentInReplyTo"
              (\ o -> CommentInReplyTo' <$> (o .:? "id"))

instance ToJSON CommentInReplyTo where
        toJSON CommentInReplyTo'{..}
          = object (catMaybes [("id" .=) <$> _cirtId])

-- | Data about the blog containing this comment.
--
-- /See:/ 'commentBlog' smart constructor.
newtype CommentBlog = CommentBlog'
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
    CommentBlog'
    { _cbId = Nothing
    }

-- | The identifier of the blog containing this comment.
cbId :: Lens' CommentBlog (Maybe Text)
cbId = lens _cbId (\ s a -> s{_cbId = a})

instance FromJSON CommentBlog where
        parseJSON
          = withObject "CommentBlog"
              (\ o -> CommentBlog' <$> (o .:? "id"))

instance ToJSON CommentBlog where
        toJSON CommentBlog'{..}
          = object (catMaybes [("id" .=) <$> _cbId])

--
-- /See:/ 'pageviews' smart constructor.
data Pageviews = Pageviews'
    { _pKind   :: !Text
    , _pCounts :: !(Maybe [PageviewsCountsItem])
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
    Pageviews'
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
                 Pageviews' <$>
                   (o .:? "kind" .!= "blogger#page_views") <*>
                     (o .:? "counts" .!= mempty)
                     <*> (o .:? "blogId"))

instance ToJSON Pageviews where
        toJSON Pageviews'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pKind), ("counts" .=) <$> _pCounts,
                  ("blogId" .=) <$> _pBlogId])

-- | The location for geotagged posts.
--
-- /See:/ 'postLocation' smart constructor.
data PostLocation = PostLocation'
    { _plSpan :: !(Maybe Text)
    , _plLat  :: !(Maybe (Textual Double))
    , _plName :: !(Maybe Text)
    , _plLng  :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PostLocation'
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
plLat
  = lens _plLat (\ s a -> s{_plLat = a}) .
      mapping _Coerce

-- | Location name.
plName :: Lens' PostLocation (Maybe Text)
plName = lens _plName (\ s a -> s{_plName = a})

-- | Location\'s longitude.
plLng :: Lens' PostLocation (Maybe Double)
plLng
  = lens _plLng (\ s a -> s{_plLng = a}) .
      mapping _Coerce

instance FromJSON PostLocation where
        parseJSON
          = withObject "PostLocation"
              (\ o ->
                 PostLocation' <$>
                   (o .:? "span") <*> (o .:? "lat") <*> (o .:? "name")
                     <*> (o .:? "lng"))

instance ToJSON PostLocation where
        toJSON PostLocation'{..}
          = object
              (catMaybes
                 [("span" .=) <$> _plSpan, ("lat" .=) <$> _plLat,
                  ("name" .=) <$> _plName, ("lng" .=) <$> _plLng])

-- | The container of posts in this blog.
--
-- /See:/ 'blogPosts' smart constructor.
data BlogPosts = BlogPosts'
    { _bpTotalItems :: !(Maybe (Textual Int32))
    , _bpItems      :: !(Maybe [Post'])
    , _bpSelfLink   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    BlogPosts'
    { _bpTotalItems = Nothing
    , _bpItems = Nothing
    , _bpSelfLink = Nothing
    }

-- | The count of posts in this blog.
bpTotalItems :: Lens' BlogPosts (Maybe Int32)
bpTotalItems
  = lens _bpTotalItems (\ s a -> s{_bpTotalItems = a})
      . mapping _Coerce

-- | The List of Posts for this Blog.
bpItems :: Lens' BlogPosts [Post']
bpItems
  = lens _bpItems (\ s a -> s{_bpItems = a}) . _Default
      . _Coerce

-- | The URL of the container for posts in this blog.
bpSelfLink :: Lens' BlogPosts (Maybe Text)
bpSelfLink
  = lens _bpSelfLink (\ s a -> s{_bpSelfLink = a})

instance FromJSON BlogPosts where
        parseJSON
          = withObject "BlogPosts"
              (\ o ->
                 BlogPosts' <$>
                   (o .:? "totalItems") <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON BlogPosts where
        toJSON BlogPosts'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _bpTotalItems,
                  ("items" .=) <$> _bpItems,
                  ("selfLink" .=) <$> _bpSelfLink])

--
-- /See:/ 'post' smart constructor.
data Post' = Post''
    { _posImages         :: !(Maybe [PostImagesItem])
    , _posStatus         :: !(Maybe Text)
    , _posEtag           :: !(Maybe Text)
    , _posReaderComments :: !(Maybe Text)
    , _posLocation       :: !(Maybe PostLocation)
    , _posKind           :: !Text
    , _posPublished      :: !(Maybe DateTime')
    , _posURL            :: !(Maybe Text)
    , _posBlog           :: !(Maybe PostBlog)
    , _posCustomMetaData :: !(Maybe Text)
    , _posContent        :: !(Maybe Text)
    , _posReplies        :: !(Maybe PostReplies)
    , _posSelfLink       :: !(Maybe Text)
    , _posAuthor         :: !(Maybe PostAuthor)
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
    :: Post'
post =
    Post''
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
posImages :: Lens' Post' [PostImagesItem]
posImages
  = lens _posImages (\ s a -> s{_posImages = a}) .
      _Default
      . _Coerce

-- | Status of the post. Only set for admin-level requests
posStatus :: Lens' Post' (Maybe Text)
posStatus
  = lens _posStatus (\ s a -> s{_posStatus = a})

-- | Etag of the resource.
posEtag :: Lens' Post' (Maybe Text)
posEtag = lens _posEtag (\ s a -> s{_posEtag = a})

-- | Comment control and display setting for readers of this post.
posReaderComments :: Lens' Post' (Maybe Text)
posReaderComments
  = lens _posReaderComments
      (\ s a -> s{_posReaderComments = a})

-- | The location for geotagged posts.
posLocation :: Lens' Post' (Maybe PostLocation)
posLocation
  = lens _posLocation (\ s a -> s{_posLocation = a})

-- | The kind of this entity. Always blogger#post
posKind :: Lens' Post' Text
posKind = lens _posKind (\ s a -> s{_posKind = a})

-- | RFC 3339 date-time when this Post was published.
posPublished :: Lens' Post' (Maybe UTCTime)
posPublished
  = lens _posPublished (\ s a -> s{_posPublished = a})
      . mapping _DateTime

-- | The URL where this Post is displayed.
posURL :: Lens' Post' (Maybe Text)
posURL = lens _posURL (\ s a -> s{_posURL = a})

-- | Data about the blog containing this Post.
posBlog :: Lens' Post' (Maybe PostBlog)
posBlog = lens _posBlog (\ s a -> s{_posBlog = a})

-- | The JSON meta-data for the Post.
posCustomMetaData :: Lens' Post' (Maybe Text)
posCustomMetaData
  = lens _posCustomMetaData
      (\ s a -> s{_posCustomMetaData = a})

-- | The content of the Post. May contain HTML markup.
posContent :: Lens' Post' (Maybe Text)
posContent
  = lens _posContent (\ s a -> s{_posContent = a})

-- | The container of comments on this Post.
posReplies :: Lens' Post' (Maybe PostReplies)
posReplies
  = lens _posReplies (\ s a -> s{_posReplies = a})

-- | The API REST URL to fetch this resource from.
posSelfLink :: Lens' Post' (Maybe Text)
posSelfLink
  = lens _posSelfLink (\ s a -> s{_posSelfLink = a})

-- | The author of this Post.
posAuthor :: Lens' Post' (Maybe PostAuthor)
posAuthor
  = lens _posAuthor (\ s a -> s{_posAuthor = a})

-- | The identifier of this Post.
posId :: Lens' Post' (Maybe Text)
posId = lens _posId (\ s a -> s{_posId = a})

-- | The list of labels this Post was tagged with.
posLabels :: Lens' Post' [Text]
posLabels
  = lens _posLabels (\ s a -> s{_posLabels = a}) .
      _Default
      . _Coerce

-- | RFC 3339 date-time when this Post was last updated.
posUpdated :: Lens' Post' (Maybe UTCTime)
posUpdated
  = lens _posUpdated (\ s a -> s{_posUpdated = a}) .
      mapping _DateTime

-- | The title link URL, similar to atom\'s related link.
posTitleLink :: Lens' Post' (Maybe Text)
posTitleLink
  = lens _posTitleLink (\ s a -> s{_posTitleLink = a})

-- | The title of the Post.
posTitle :: Lens' Post' (Maybe Text)
posTitle = lens _posTitle (\ s a -> s{_posTitle = a})

instance FromJSON Post' where
        parseJSON
          = withObject "Post"
              (\ o ->
                 Post'' <$>
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

instance ToJSON Post' where
        toJSON Post''{..}
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
data Page = Page'
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
    Page'
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
                 Page' <$>
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
        toJSON Page'{..}
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

-- | The locale this Blog is set to.
--
-- /See:/ 'blogLocale' smart constructor.
data BlogLocale = BlogLocale'
    { _blVariant  :: !(Maybe Text)
    , _blCountry  :: !(Maybe Text)
    , _blLanguage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    BlogLocale'
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

instance FromJSON BlogLocale where
        parseJSON
          = withObject "BlogLocale"
              (\ o ->
                 BlogLocale' <$>
                   (o .:? "variant") <*> (o .:? "country") <*>
                     (o .:? "language"))

instance ToJSON BlogLocale where
        toJSON BlogLocale'{..}
          = object
              (catMaybes
                 [("variant" .=) <$> _blVariant,
                  ("country" .=) <$> _blCountry,
                  ("language" .=) <$> _blLanguage])

-- | The author of this Page.
--
-- /See:/ 'pageAuthor' smart constructor.
data PageAuthor = PageAuthor'
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
    PageAuthor'
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
                 PageAuthor' <$>
                   (o .:? "image") <*> (o .:? "url") <*>
                     (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON PageAuthor where
        toJSON PageAuthor'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _paImage, ("url" .=) <$> _paURL,
                  ("displayName" .=) <$> _paDisplayName,
                  ("id" .=) <$> _paId])

--
-- /See:/ 'blog' smart constructor.
data Blog = Blog'
    { _bStatus         :: !(Maybe Text)
    , _bKind           :: !Text
    , _bPages          :: !(Maybe BlogPages)
    , _bLocale         :: !(Maybe BlogLocale)
    , _bPublished      :: !(Maybe DateTime')
    , _bURL            :: !(Maybe Text)
    , _bCustomMetaData :: !(Maybe Text)
    , _bSelfLink       :: !(Maybe Text)
    , _bName           :: !(Maybe Text)
    , _bId             :: !(Maybe Text)
    , _bUpdated        :: !(Maybe DateTime')
    , _bPosts          :: !(Maybe BlogPosts)
    , _bDescription    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'bURL'
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
    Blog'
    { _bStatus = Nothing
    , _bKind = "blogger#blog"
    , _bPages = Nothing
    , _bLocale = Nothing
    , _bPublished = Nothing
    , _bURL = Nothing
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
  = lens _bPublished (\ s a -> s{_bPublished = a}) .
      mapping _DateTime

-- | The URL where this blog is published.
bURL :: Lens' Blog (Maybe Text)
bURL = lens _bURL (\ s a -> s{_bURL = a})

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
bUpdated
  = lens _bUpdated (\ s a -> s{_bUpdated = a}) .
      mapping _DateTime

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
                 Blog' <$>
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
        toJSON Blog'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _bStatus, Just ("kind" .= _bKind),
                  ("pages" .=) <$> _bPages, ("locale" .=) <$> _bLocale,
                  ("published" .=) <$> _bPublished,
                  ("url" .=) <$> _bURL,
                  ("customMetaData" .=) <$> _bCustomMetaData,
                  ("selfLink" .=) <$> _bSelfLink,
                  ("name" .=) <$> _bName, ("id" .=) <$> _bId,
                  ("updated" .=) <$> _bUpdated,
                  ("posts" .=) <$> _bPosts,
                  ("description" .=) <$> _bDescription])

-- | The container of pages in this blog.
--
-- /See:/ 'blogPages' smart constructor.
data BlogPages = BlogPages'
    { _bpsTotalItems :: !(Maybe (Textual Int32))
    , _bpsSelfLink   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    BlogPages'
    { _bpsTotalItems = Nothing
    , _bpsSelfLink = Nothing
    }

-- | The count of pages in this blog.
bpsTotalItems :: Lens' BlogPages (Maybe Int32)
bpsTotalItems
  = lens _bpsTotalItems
      (\ s a -> s{_bpsTotalItems = a})
      . mapping _Coerce

-- | The URL of the container for pages in this blog.
bpsSelfLink :: Lens' BlogPages (Maybe Text)
bpsSelfLink
  = lens _bpsSelfLink (\ s a -> s{_bpsSelfLink = a})

instance FromJSON BlogPages where
        parseJSON
          = withObject "BlogPages"
              (\ o ->
                 BlogPages' <$>
                   (o .:? "totalItems") <*> (o .:? "selfLink"))

instance ToJSON BlogPages where
        toJSON BlogPages'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _bpsTotalItems,
                  ("selfLink" .=) <$> _bpsSelfLink])

-- | Data about the blog containing this Post.
--
-- /See:/ 'postBlog' smart constructor.
newtype PostBlog = PostBlog'
    { _pbId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostBlog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbId'
postBlog
    :: PostBlog
postBlog =
    PostBlog'
    { _pbId = Nothing
    }

-- | The identifier of the Blog that contains this Post.
pbId :: Lens' PostBlog (Maybe Text)
pbId = lens _pbId (\ s a -> s{_pbId = a})

instance FromJSON PostBlog where
        parseJSON
          = withObject "PostBlog"
              (\ o -> PostBlog' <$> (o .:? "id"))

instance ToJSON PostBlog where
        toJSON PostBlog'{..}
          = object (catMaybes [("id" .=) <$> _pbId])

--
-- /See:/ 'pageList' smart constructor.
data PageList = PageList'
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
    PageList'
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
                 PageList' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "blogger#pageList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON PageList where
        toJSON PageList'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _pllEtag,
                  ("nextPageToken" .=) <$> _pllNextPageToken,
                  Just ("kind" .= _pllKind),
                  ("items" .=) <$> _pllItems])

-- | This user\'s locale
--
-- /See:/ 'userLocale' smart constructor.
data UserLocale = UserLocale'
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
    UserLocale'
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
                 UserLocale' <$>
                   (o .:? "variant") <*> (o .:? "country") <*>
                     (o .:? "language"))

instance ToJSON UserLocale where
        toJSON UserLocale'{..}
          = object
              (catMaybes
                 [("variant" .=) <$> _ulVariant,
                  ("country" .=) <$> _ulCountry,
                  ("language" .=) <$> _ulLanguage])

-- | The comment creator\'s avatar.
--
-- /See:/ 'commentAuthorImage' smart constructor.
newtype CommentAuthorImage = CommentAuthorImage'
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
    CommentAuthorImage'
    { _caiURL = Nothing
    }

-- | The comment creator\'s avatar URL.
caiURL :: Lens' CommentAuthorImage (Maybe Text)
caiURL = lens _caiURL (\ s a -> s{_caiURL = a})

instance FromJSON CommentAuthorImage where
        parseJSON
          = withObject "CommentAuthorImage"
              (\ o -> CommentAuthorImage' <$> (o .:? "url"))

instance ToJSON CommentAuthorImage where
        toJSON CommentAuthorImage'{..}
          = object (catMaybes [("url" .=) <$> _caiURL])

--
-- /See:/ 'user' smart constructor.
data User = User'
    { _uBlogs       :: !(Maybe UserBlogs)
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
    User'
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
uBlogs :: Lens' User (Maybe UserBlogs)
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
                 User' <$>
                   (o .:? "blogs") <*> (o .:? "kind" .!= "blogger#user")
                     <*> (o .:? "created")
                     <*> (o .:? "locale")
                     <*> (o .:? "url")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "about")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON User where
        toJSON User'{..}
          = object
              (catMaybes
                 [("blogs" .=) <$> _uBlogs, Just ("kind" .= _uKind),
                  ("created" .=) <$> _uCreated,
                  ("locale" .=) <$> _uLocale, ("url" .=) <$> _uURL,
                  ("selfLink" .=) <$> _uSelfLink,
                  ("about" .=) <$> _uAbout,
                  ("displayName" .=) <$> _uDisplayName,
                  ("id" .=) <$> _uId])

-- | The container of blogs for this user.
--
-- /See:/ 'userBlogs' smart constructor.
newtype UserBlogs = UserBlogs'
    { _ubSelfLink :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserBlogs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ubSelfLink'
userBlogs
    :: UserBlogs
userBlogs =
    UserBlogs'
    { _ubSelfLink = Nothing
    }

-- | The URL of the Blogs for this user.
ubSelfLink :: Lens' UserBlogs (Maybe Text)
ubSelfLink
  = lens _ubSelfLink (\ s a -> s{_ubSelfLink = a})

instance FromJSON UserBlogs where
        parseJSON
          = withObject "UserBlogs"
              (\ o -> UserBlogs' <$> (o .:? "selfLink"))

instance ToJSON UserBlogs where
        toJSON UserBlogs'{..}
          = object
              (catMaybes [("selfLink" .=) <$> _ubSelfLink])

-- | The container of comments on this Post.
--
-- /See:/ 'postReplies' smart constructor.
data PostReplies = PostReplies'
    { _prTotalItems :: !(Maybe (Textual Int64))
    , _prItems      :: !(Maybe [Comment])
    , _prSelfLink   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PostReplies'
    { _prTotalItems = Nothing
    , _prItems = Nothing
    , _prSelfLink = Nothing
    }

-- | The count of comments on this post.
prTotalItems :: Lens' PostReplies (Maybe Int64)
prTotalItems
  = lens _prTotalItems (\ s a -> s{_prTotalItems = a})
      . mapping _Coerce

-- | The List of Comments for this Post.
prItems :: Lens' PostReplies [Comment]
prItems
  = lens _prItems (\ s a -> s{_prItems = a}) . _Default
      . _Coerce

-- | The URL of the comments on this post.
prSelfLink :: Lens' PostReplies (Maybe Text)
prSelfLink
  = lens _prSelfLink (\ s a -> s{_prSelfLink = a})

instance FromJSON PostReplies where
        parseJSON
          = withObject "PostReplies"
              (\ o ->
                 PostReplies' <$>
                   (o .:? "totalItems") <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON PostReplies where
        toJSON PostReplies'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _prTotalItems,
                  ("items" .=) <$> _prItems,
                  ("selfLink" .=) <$> _prSelfLink])

--
-- /See:/ 'blogList' smart constructor.
data BlogList = BlogList'
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
    BlogList'
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
                 BlogList' <$>
                   (o .:? "kind" .!= "blogger#blogList") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "blogUserInfos" .!= mempty))

instance ToJSON BlogList where
        toJSON BlogList'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _blKind), ("items" .=) <$> _blItems,
                  ("blogUserInfos" .=) <$> _blBlogUserInfos])

-- | Data about the blog containing this Page.
--
-- /See:/ 'pageBlog' smart constructor.
newtype PageBlog = PageBlog'
    { _pId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageBlog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pId'
pageBlog
    :: PageBlog
pageBlog =
    PageBlog'
    { _pId = Nothing
    }

-- | The identifier of the blog containing this page.
pId :: Lens' PageBlog (Maybe Text)
pId = lens _pId (\ s a -> s{_pId = a})

instance FromJSON PageBlog where
        parseJSON
          = withObject "PageBlog"
              (\ o -> PageBlog' <$> (o .:? "id"))

instance ToJSON PageBlog where
        toJSON PageBlog'{..}
          = object (catMaybes [("id" .=) <$> _pId])

-- | The author of this Post.
--
-- /See:/ 'postAuthor' smart constructor.
data PostAuthor = PostAuthor'
    { _paaImage       :: !(Maybe PostAuthorImage)
    , _paaURL         :: !(Maybe Text)
    , _paaDisplayName :: !(Maybe Text)
    , _paaId          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostAuthor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paaImage'
--
-- * 'paaURL'
--
-- * 'paaDisplayName'
--
-- * 'paaId'
postAuthor
    :: PostAuthor
postAuthor =
    PostAuthor'
    { _paaImage = Nothing
    , _paaURL = Nothing
    , _paaDisplayName = Nothing
    , _paaId = Nothing
    }

-- | The Post author\'s avatar.
paaImage :: Lens' PostAuthor (Maybe PostAuthorImage)
paaImage = lens _paaImage (\ s a -> s{_paaImage = a})

-- | The URL of the Post creator\'s Profile page.
paaURL :: Lens' PostAuthor (Maybe Text)
paaURL = lens _paaURL (\ s a -> s{_paaURL = a})

-- | The display name.
paaDisplayName :: Lens' PostAuthor (Maybe Text)
paaDisplayName
  = lens _paaDisplayName
      (\ s a -> s{_paaDisplayName = a})

-- | The identifier of the Post creator.
paaId :: Lens' PostAuthor (Maybe Text)
paaId = lens _paaId (\ s a -> s{_paaId = a})

instance FromJSON PostAuthor where
        parseJSON
          = withObject "PostAuthor"
              (\ o ->
                 PostAuthor' <$>
                   (o .:? "image") <*> (o .:? "url") <*>
                     (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON PostAuthor where
        toJSON PostAuthor'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _paaImage, ("url" .=) <$> _paaURL,
                  ("displayName" .=) <$> _paaDisplayName,
                  ("id" .=) <$> _paaId])

--
-- /See:/ 'postPerUserInfo' smart constructor.
data PostPerUserInfo = PostPerUserInfo'
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
    PostPerUserInfo'
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
                 PostPerUserInfo' <$>
                   (o .:? "kind" .!= "blogger#postPerUserInfo") <*>
                     (o .:? "blogId")
                     <*> (o .:? "userId")
                     <*> (o .:? "hasEditAccess")
                     <*> (o .:? "postId"))

instance ToJSON PostPerUserInfo where
        toJSON PostPerUserInfo'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ppuiKind),
                  ("blogId" .=) <$> _ppuiBlogId,
                  ("userId" .=) <$> _ppuiUserId,
                  ("hasEditAccess" .=) <$> _ppuiHasEditAccess,
                  ("postId" .=) <$> _ppuiPostId])

--
-- /See:/ 'pageviewsCountsItem' smart constructor.
data PageviewsCountsItem = PageviewsCountsItem'
    { _pciTimeRange :: !(Maybe Text)
    , _pciCount     :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageviewsCountsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pciTimeRange'
--
-- * 'pciCount'
pageviewsCountsItem
    :: PageviewsCountsItem
pageviewsCountsItem =
    PageviewsCountsItem'
    { _pciTimeRange = Nothing
    , _pciCount = Nothing
    }

-- | Time range the given count applies to
pciTimeRange :: Lens' PageviewsCountsItem (Maybe Text)
pciTimeRange
  = lens _pciTimeRange (\ s a -> s{_pciTimeRange = a})

-- | Count of page views for the given time range
pciCount :: Lens' PageviewsCountsItem (Maybe Int64)
pciCount
  = lens _pciCount (\ s a -> s{_pciCount = a}) .
      mapping _Coerce

instance FromJSON PageviewsCountsItem where
        parseJSON
          = withObject "PageviewsCountsItem"
              (\ o ->
                 PageviewsCountsItem' <$>
                   (o .:? "timeRange") <*> (o .:? "count"))

instance ToJSON PageviewsCountsItem where
        toJSON PageviewsCountsItem'{..}
          = object
              (catMaybes
                 [("timeRange" .=) <$> _pciTimeRange,
                  ("count" .=) <$> _pciCount])

--
-- /See:/ 'comment' smart constructor.
data Comment = Comment'
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
    , _cInReplyTo :: !(Maybe CommentInReplyTo)
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
    Comment'
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
cInReplyTo :: Lens' Comment (Maybe CommentInReplyTo)
cInReplyTo
  = lens _cInReplyTo (\ s a -> s{_cInReplyTo = a})

instance FromJSON Comment where
        parseJSON
          = withObject "Comment"
              (\ o ->
                 Comment' <$>
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
        toJSON Comment'{..}
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

-- | Data about the post containing this comment.
--
-- /See:/ 'commentPost' smart constructor.
newtype CommentPost = CommentPost'
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
    CommentPost'
    { _cpId = Nothing
    }

-- | The identifier of the post containing this comment.
cpId :: Lens' CommentPost (Maybe Text)
cpId = lens _cpId (\ s a -> s{_cpId = a})

instance FromJSON CommentPost where
        parseJSON
          = withObject "CommentPost"
              (\ o -> CommentPost' <$> (o .:? "id"))

instance ToJSON CommentPost where
        toJSON CommentPost'{..}
          = object (catMaybes [("id" .=) <$> _cpId])

--
-- /See:/ 'blogPerUserInfo' smart constructor.
data BlogPerUserInfo = BlogPerUserInfo'
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
    BlogPerUserInfo'
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
                 BlogPerUserInfo' <$>
                   (o .:? "photosAlbumKey") <*>
                     (o .:? "kind" .!= "blogger#blogPerUserInfo")
                     <*> (o .:? "blogId")
                     <*> (o .:? "userId")
                     <*> (o .:? "role")
                     <*> (o .:? "hasAdminAccess"))

instance ToJSON BlogPerUserInfo where
        toJSON BlogPerUserInfo'{..}
          = object
              (catMaybes
                 [("photosAlbumKey" .=) <$> _bpuiPhotosAlbumKey,
                  Just ("kind" .= _bpuiKind),
                  ("blogId" .=) <$> _bpuiBlogId,
                  ("userId" .=) <$> _bpuiUserId,
                  ("role" .=) <$> _bpuiRole,
                  ("hasAdminAccess" .=) <$> _bpuiHasAdminAccess])

--
-- /See:/ 'postUserInfosList' smart constructor.
data PostUserInfosList = PostUserInfosList'
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
    PostUserInfosList'
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
                 PostUserInfosList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "blogger#postUserInfosList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON PostUserInfosList where
        toJSON PostUserInfosList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _puilNextPageToken,
                  Just ("kind" .= _puilKind),
                  ("items" .=) <$> _puilItems])

-- | The author of this Comment.
--
-- /See:/ 'commentAuthor' smart constructor.
data CommentAuthor = CommentAuthor'
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
    CommentAuthor'
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
                 CommentAuthor' <$>
                   (o .:? "image") <*> (o .:? "url") <*>
                     (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON CommentAuthor where
        toJSON CommentAuthor'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _caImage, ("url" .=) <$> _caURL,
                  ("displayName" .=) <$> _caDisplayName,
                  ("id" .=) <$> _caId])

--
-- /See:/ 'blogUserInfo' smart constructor.
data BlogUserInfo = BlogUserInfo'
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
    BlogUserInfo'
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
                 BlogUserInfo' <$>
                   (o .:? "kind" .!= "blogger#blogUserInfo") <*>
                     (o .:? "blog")
                     <*> (o .:? "blog_user_info"))

instance ToJSON BlogUserInfo where
        toJSON BlogUserInfo'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _buiKind), ("blog" .=) <$> _buiBlog,
                  ("blog_user_info" .=) <$> _buiBlogUserInfo])

-- | The page author\'s avatar.
--
-- /See:/ 'pageAuthorImage' smart constructor.
newtype PageAuthorImage = PageAuthorImage'
    { _pURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageAuthorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pURL'
pageAuthorImage
    :: PageAuthorImage
pageAuthorImage =
    PageAuthorImage'
    { _pURL = Nothing
    }

-- | The page author\'s avatar URL.
pURL :: Lens' PageAuthorImage (Maybe Text)
pURL = lens _pURL (\ s a -> s{_pURL = a})

instance FromJSON PageAuthorImage where
        parseJSON
          = withObject "PageAuthorImage"
              (\ o -> PageAuthorImage' <$> (o .:? "url"))

instance ToJSON PageAuthorImage where
        toJSON PageAuthorImage'{..}
          = object (catMaybes [("url" .=) <$> _pURL])

--
-- /See:/ 'commentList' smart constructor.
data CommentList = CommentList'
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
    CommentList'
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
                 CommentList' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "blogger#commentList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "prevPageToken"))

instance ToJSON CommentList where
        toJSON CommentList'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _clEtag,
                  ("nextPageToken" .=) <$> _clNextPageToken,
                  Just ("kind" .= _clKind), ("items" .=) <$> _clItems,
                  ("prevPageToken" .=) <$> _clPrevPageToken])

--
-- /See:/ 'postImagesItem' smart constructor.
newtype PostImagesItem = PostImagesItem'
    { _piiURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostImagesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piiURL'
postImagesItem
    :: PostImagesItem
postImagesItem =
    PostImagesItem'
    { _piiURL = Nothing
    }

piiURL :: Lens' PostImagesItem (Maybe Text)
piiURL = lens _piiURL (\ s a -> s{_piiURL = a})

instance FromJSON PostImagesItem where
        parseJSON
          = withObject "PostImagesItem"
              (\ o -> PostImagesItem' <$> (o .:? "url"))

instance ToJSON PostImagesItem where
        toJSON PostImagesItem'{..}
          = object (catMaybes [("url" .=) <$> _piiURL])
